.class public final Lcom/diotek/ime/framework/repository/PropertyLoader;
.super Ljava/lang/Object;
.source "PropertyLoader.java"


# static fields
.field private static final ATT_COUNT:I = 0x3

.field private static final ATT_KEY:Ljava/lang/String; = "KEY"

.field private static final ATT_TYPE:Ljava/lang/String; = "TYPE"

.field private static final ATT_VALUE:Ljava/lang/String; = "VALUE"

.field public static final HEADER_SETTINGS_DEFAULT_VALUES:Ljava/lang/String; = "SETTINGS_DEFAULT_"

.field private static final INDEX_ATT_KEY:I = 0x0

.field private static final INDEX_ATT_TYPE:I = 0x2

.field private static final INDEX_ATT_VALUE:I = 0x1

.field private static final TAG_LOG_DEBUG:Ljava/lang/String; = "LOG_DEBUG"

.field private static final TAG_LOG_ERROR:Ljava/lang/String; = "LOG_ERROR"

.field private static final TAG_LOG_INFO:Ljava/lang/String; = "LOG_INFO"

.field private static final TAG_PROPERTIES:Ljava/lang/String; = "PROPERTIES"

.field private static final TAG_PROPERTY:Ljava/lang/String; = "PROPERTY"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeSelectLanguagePrefKey(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select_language_list_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseAttribute(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ne v4, v5, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    if-eq v4, v5, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "KEY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string v4, "VALUE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v2

    goto :goto_1

    :cond_5
    const-string v4, "TYPE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p2, v4

    goto :goto_1
.end method

.method private parseXml(Landroid/content/res/XmlResourceParser;Landroid/content/Context;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v8, 0x0

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v10, 0x1

    if-eq v1, v10, :cond_f

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "PROPERTIES"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "PROPERTY"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x3

    new-array v6, v10, [Ljava/lang/String;

    invoke-direct {p0, p1, v6}, Lcom/diotek/ime/framework/repository/PropertyLoader;->parseAttribute(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string v11, "KOR_MODE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x2

    aget-object v10, v6, v10

    const-string v11, "bool"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    aget-object v10, v6, v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v3, 0x1

    :cond_1
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string v11, "SETTINGS_DEFAULT_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x2

    aget-object v10, v6, v10

    const-string v11, "string"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_2

    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string v11, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/high16 v10, 0x6b6f

    invoke-direct {p0, v10}, Lcom/diotek/ime/framework/repository/PropertyLoader;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-interface {v0, v4, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v10, 0x2

    aget-object v10, v6, v10

    const-string v11, "int"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 v10, 0x2

    aget-object v10, v6, v10

    const-string v11, "bool"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x2

    aget-object v10, v6, v10

    const-string v11, "short"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v10, 0x2

    aget-object v10, v6, v10

    const-string v11, "float"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_7
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v6, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v6, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const-string v10, "LOG_INFO"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {p1, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "true"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    sput-boolean v10, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    goto/16 :goto_1

    :cond_9
    const/4 v10, 0x0

    sput-boolean v10, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    goto/16 :goto_1

    :cond_a
    const-string v10, "LOG_DEBUG"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {p1, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "true"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    sput-boolean v10, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    :cond_b
    const/4 v10, 0x0

    sput-boolean v10, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    :cond_c
    const-string v10, "LOG_ERROR"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {p1, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "true"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    sput-boolean v10, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    goto/16 :goto_1

    :cond_d
    const/4 v10, 0x0

    sput-boolean v10, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    goto/16 :goto_1

    :cond_e
    const/4 v10, 0x0

    :goto_2
    return v10

    :cond_f
    if-eqz v2, :cond_10

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_10
    const/4 v10, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private parseXml(Landroid/content/res/XmlResourceParser;Lcom/diotek/ime/framework/repository/Repository;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-eq v0, v6, :cond_d

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "PROPERTIES"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "PROPERTY"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x3

    new-array v1, v7, [Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/diotek/ime/framework/repository/PropertyLoader;->parseAttribute(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v7, v1, v10

    const-string v8, "string"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    aget-object v7, v1, v5

    aget-object v8, v1, v6

    invoke-interface {p2, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    aget-object v7, v1, v10

    const-string v8, "int"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, v1, v5

    aget-object v8, v1, v6

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p2, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    aget-object v7, v1, v10

    const-string v8, "bool"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    aget-object v7, v1, v5

    aget-object v8, v1, v6

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-interface {p2, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    aget-object v7, v1, v10

    const-string v8, "short"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    aget-object v7, v1, v5

    aget-object v8, v1, v6

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->shortValue()S

    move-result v8

    invoke-interface {p2, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;S)V

    goto/16 :goto_1

    :cond_4
    aget-object v7, v1, v10

    const-string v8, "float"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    aget-object v7, v1, v5

    aget-object v8, v1, v6

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-interface {p2, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;F)V

    goto/16 :goto_1

    :cond_5
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string v7, "LOG_INFO"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "value"

    invoke-interface {p1, v11, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "true"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sput-boolean v6, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    goto/16 :goto_1

    :cond_7
    sput-boolean v5, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    goto/16 :goto_1

    :cond_8
    const-string v7, "LOG_DEBUG"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "value"

    invoke-interface {p1, v11, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "true"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    sput-boolean v6, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    :cond_9
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->ENG_MODE:Z

    if-eqz v7, :cond_a

    sput-boolean v6, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    :cond_a
    sput-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    :cond_b
    const-string v7, "LOG_ERROR"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "value"

    invoke-interface {p1, v11, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "true"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    sput-boolean v6, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    goto/16 :goto_1

    :cond_c
    sput-boolean v5, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    goto/16 :goto_1

    :cond_d
    move v5, v6

    :cond_e
    return v5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public load(Lcom/diotek/ime/framework/repository/Repository;Landroid/content/res/Resources;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-nez v2, :cond_0

    new-instance v3, Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;

    invoke-direct {v3}, Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;-><init>()V

    invoke-virtual {v3}, Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;->createXmlLoader()Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    invoke-virtual {v2}, Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/diotek/ime/framework/repository/PropertyLoader;->parseXml(Landroid/content/res/XmlResourceParser;Lcom/diotek/ime/framework/repository/Repository;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "SamsungIME"

    const-string v6, "Porperty file parssing error! (Invalid tag)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "SamsungIME"

    const-string v6, "Porperty file parssing error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p2}, Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParser(Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v5, "SamsungIME"

    const-string v6, "Porperty file parssing error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v5, "SamsungIME"

    const-string v6, "Could not find porperty file!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public loadAndSetToPreference(Landroid/content/Context;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-nez v2, :cond_0

    new-instance v3, Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;

    invoke-direct {v3}, Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;-><init>()V

    invoke-virtual {v3}, Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;->createXmlLoader()Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {v2}, Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/diotek/ime/framework/repository/PropertyLoader;->parseXml(Landroid/content/res/XmlResourceParser;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "SamsungIME"

    const-string v6, "Porperty file parssing error! (Invalid tag)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "SamsungIME"

    const-string v6, "Porperty file parssing error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "SamsungIME"

    const-string v6, "Porperty file parssing error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v5, "SamsungIME"

    const-string v6, "Could not find porperty file!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method
