.class public Lcom/samsung/android/sdk/smartassistant/util/CardParser;
.super Ljava/lang/Object;
.source "CardParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x400

    new-array v0, v2, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static copyImages(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    const-string v10, "oobe_image"

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    array-length v10, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-lt v5, v10, :cond_1

    :goto_1
    return-void

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "oobe_image/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v4, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    new-instance v9, Ljava/io/File;

    aget-object v10, v4, v5

    invoke-direct {v9, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {v6, v8}, Lcom/samsung/android/sdk/smartassistant/util/CardParser;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_3
    :try_start_3
    const-string v10, "tag"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to copy asset file: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v12, v4, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v7, v8

    goto :goto_3
.end method

.method public static parseCardFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const-string v5, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-nez v3, :cond_0

    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/samsung/android/sdk/smartassistant/util/CardParser;->parseCardFromXmlResourceParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;

    move-result-object v4

    goto :goto_1
.end method

.method public static parseCardFromXml(Landroid/content/Context;I)Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/smartassistant/util/CardParser;->parseCardFromXmlResourceParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;

    move-result-object v1

    goto :goto_0
.end method

.method private static parseCardFromXmlResourceParser(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;
    .locals 57

    const/16 v36, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/16 v33, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v48, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v37, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v29, 0x0

    const/16 v50, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v39, 0x0

    const/16 v53, 0x0

    const/16 v52, 0x0

    const/16 v51, 0x0

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    const/16 v35, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/16 v49, 0x0

    const/16 v44, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    :cond_0
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v36

    const/16 v54, 0x2

    move/from16 v0, v36

    move/from16 v1, v54

    if-ne v0, v1, :cond_12

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    const-string v54, "card"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_4

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v29, 0x0

    const/16 v50, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v39, 0x0

    const/16 v53, 0x0

    const/16 v52, 0x0

    const/16 v51, 0x0

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    const/16 v35, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/16 v49, 0x0

    const/16 v44, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v30

    if-lez v30, :cond_1

    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    const/16 v38, 0x0

    :goto_0
    move/from16 v0, v38

    move/from16 v1, v30

    if-lt v0, v1, :cond_3

    :cond_1
    const/16 v33, 0x0

    :cond_2
    :goto_1
    const/16 v54, 0x1

    move/from16 v0, v36

    move/from16 v1, v54

    if-ne v0, v1, :cond_0

    :goto_2
    return-object v21

    :catch_0
    move-exception v34

    invoke-virtual/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v34

    invoke-virtual/range {v34 .. v34}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v24

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v38, v38, 0x1

    goto :goto_0

    :cond_4
    const-string v54, "image"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_6

    const/16 v33, 0x1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v30

    if-lez v30, :cond_5

    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    const/16 v38, 0x0

    :goto_3
    move/from16 v0, v38

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v35

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v38, v38, 0x1

    goto :goto_3

    :cond_5
    const/16 v35, 0x0

    goto :goto_1

    :cond_6
    const-string v54, "text"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_8

    const/16 v33, 0x2

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v30

    if-lez v30, :cond_7

    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    const/16 v38, 0x0

    :goto_4
    move/from16 v0, v38

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v35

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v38, v38, 0x1

    goto :goto_4

    :cond_7
    const/16 v35, 0x0

    goto/16 :goto_1

    :cond_8
    const-string v54, "action"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_b

    const/16 v18, 0x0

    const/4 v15, 0x0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v30

    if-lez v30, :cond_a

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const/16 v38, 0x0

    :goto_5
    move/from16 v0, v38

    move/from16 v1, v30

    if-lt v0, v1, :cond_9

    :goto_6
    const/16 v16, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v38, v38, 0x1

    goto :goto_5

    :cond_a
    const/4 v13, 0x0

    goto :goto_6

    :cond_b
    const-string v54, "intent"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_11

    const/16 v48, 0x1

    const/16 v49, 0x0

    const/16 v44, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v30

    const/16 v38, 0x0

    :goto_7
    move/from16 v0, v38

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v20

    const-string v54, "pkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_d

    move-object/from16 v49, v20

    :cond_c
    :goto_8
    add-int/lit8 v38, v38, 0x1

    goto :goto_7

    :cond_d
    const-string v54, "cls"

    move-object/from16 v0, v19

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_e

    move-object/from16 v44, v20

    goto :goto_8

    :cond_e
    const-string v54, "action"

    move-object/from16 v0, v19

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_f

    move-object/from16 v42, v20

    goto :goto_8

    :cond_f
    const-string v54, "category"

    move-object/from16 v0, v19

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_10

    move-object/from16 v43, v20

    goto :goto_8

    :cond_10
    const-string v54, "data"

    move-object/from16 v0, v19

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_c

    move-object/from16 v45, v20

    goto :goto_8

    :cond_11
    const-string v54, "extra"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_2

    const/16 v37, 0x1

    const/16 v46, 0x0

    const/16 v47, 0x0

    goto/16 :goto_1

    :cond_12
    const/16 v54, 0x4

    move/from16 v0, v36

    move/from16 v1, v54

    if-ne v0, v1, :cond_1c

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v32

    if-eqz v31, :cond_2

    const/16 v54, 0x1

    move/from16 v0, v37

    move/from16 v1, v54

    if-ne v0, v1, :cond_14

    const-string v54, "name"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_13

    move-object/from16 v46, v32

    goto/16 :goto_1

    :cond_13
    const-string v54, "value"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_2

    move-object/from16 v47, v32

    goto/16 :goto_1

    :cond_14
    const/16 v54, 0x1

    move/from16 v0, v16

    move/from16 v1, v54

    if-ne v0, v1, :cond_16

    const-string v54, "type"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_15

    move-object/from16 v18, v32

    goto/16 :goto_1

    :cond_15
    const-string v54, "label"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_2

    move-object/from16 v15, v32

    goto/16 :goto_1

    :cond_16
    const/16 v54, 0x1

    move/from16 v0, v33

    move/from16 v1, v54

    if-ne v0, v1, :cond_18

    const-string v54, "key"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_17

    move-object/from16 v40, v32

    goto/16 :goto_1

    :cond_17
    const-string v54, "path"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_2

    move-object/from16 v41, v32

    goto/16 :goto_1

    :cond_18
    const/16 v54, 0x2

    move/from16 v0, v33

    move/from16 v1, v54

    if-ne v0, v1, :cond_1a

    const-string v54, "key"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_19

    move-object/from16 v53, v32

    goto/16 :goto_1

    :cond_19
    const-string v54, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_2

    move-object/from16 v52, v32

    goto/16 :goto_1

    :cond_1a
    if-nez v33, :cond_2

    const-string v54, "type"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_1b

    move-object/from16 v29, v32

    goto/16 :goto_1

    :cond_1b
    const-string v54, "template"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_2

    move-object/from16 v50, v32

    goto/16 :goto_1

    :cond_1c
    const/16 v54, 0x3

    move/from16 v0, v36

    move/from16 v1, v54

    if-ne v0, v1, :cond_2

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    const-string v54, "card"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_21

    if-eqz v29, :cond_1e

    if-eqz v50, :cond_1e

    new-instance v21, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    invoke-static/range {v54 .. v55}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v54

    move-object/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v24, :cond_1d

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->setAttributes(Ljava/util/Map;)V

    :cond_1d
    const/16 v17, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_9
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_1f

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_a
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_20

    :cond_1e
    :goto_b
    const/16 v31, 0x0

    goto/16 :goto_1

    :cond_1f
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    new-instance v55, Ljava/lang/StringBuilder;

    const-string v56, "action"

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v55

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->addCardAction(Ljava/lang/String;Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    :cond_20
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->setCardElement(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;)V

    goto :goto_a

    :cond_21
    const-string v54, "image"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_24

    new-instance v27, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v35, :cond_22

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;->setAttributes(Ljava/util/Map;)V

    const/16 v35, 0x0

    :cond_22
    if-eqz v39, :cond_23

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;->setAction(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;)V

    const/16 v39, 0x0

    :cond_23
    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v33, 0x0

    goto :goto_b

    :cond_24
    const-string v54, "text"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_27

    new-instance v28, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;

    move-object/from16 v0, v28

    move-object/from16 v1, v53

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v35, :cond_25

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;->setAttributes(Ljava/util/Map;)V

    const/16 v35, 0x0

    :cond_25
    if-eqz v51, :cond_26

    move-object/from16 v0, v28

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;->setAction(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;)V

    const/16 v51, 0x0

    :cond_26
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v53, 0x0

    const/16 v52, 0x0

    const/16 v33, 0x0

    goto/16 :goto_b

    :cond_27
    const-string v54, "action"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_2e

    new-instance v22, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;-><init>(Ljava/lang/String;)V

    if-eqz v15, :cond_28

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->setLabel(Ljava/lang/String;)V

    const/4 v15, 0x0

    :cond_28
    if-eqz v14, :cond_29

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->setData(Landroid/content/Intent;)V

    const/4 v14, 0x0

    :cond_29
    if-eqz v13, :cond_2a

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->setAttributes(Ljava/util/Map;)V

    const/4 v13, 0x0

    :cond_2a
    const/16 v54, 0x1

    move/from16 v0, v33

    move/from16 v1, v54

    if-ne v0, v1, :cond_2c

    move-object/from16 v39, v22

    :cond_2b
    :goto_c
    const/16 v16, 0x0

    goto/16 :goto_b

    :cond_2c
    const/16 v54, 0x2

    move/from16 v0, v33

    move/from16 v1, v54

    if-ne v0, v1, :cond_2d

    move-object/from16 v51, v22

    goto :goto_c

    :cond_2d
    if-nez v33, :cond_2b

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_2e
    const-string v54, "extra"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_30

    if-eqz v14, :cond_2f

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v46, 0x0

    const/16 v47, 0x0

    :cond_2f
    const/16 v37, 0x0

    goto/16 :goto_b

    :cond_30
    const-string v54, "intent"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_1e

    if-eqz v14, :cond_34

    if-eqz v49, :cond_31

    move-object/from16 v0, v49

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v44, :cond_31

    move-object/from16 v0, v49

    move-object/from16 v1, v44

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_31
    if-eqz v42, :cond_32

    move-object/from16 v0, v42

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_32
    if-eqz v43, :cond_33

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_33
    if-eqz v45, :cond_34

    invoke-static/range {v45 .. v45}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_34
    const/16 v48, 0x0

    goto/16 :goto_b
.end method
