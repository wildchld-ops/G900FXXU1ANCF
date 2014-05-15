.class public Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;
.super Ljava/lang/Object;
.source "CardManager.java"


# static fields
.field private static final PREFERENCE_KEY_REGISTRATION:Ljava/lang/String; = "SmartAssistantCardProviderRegistered"

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private getImageUri(Landroid/net/Uri;Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->sendImageToSmartAssistant(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->sendImageToSmartAssistant(Landroid/graphics/Bitmap;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    return-object v0
.end method

.method private insertCardElements(Landroid/net/Uri;Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;)V
    .locals 22

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardActionKeys()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_2

    const-string v18, "image"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardElements()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    sget-object v20, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardElement;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/content/ContentValues;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_1
    return-void

    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardAction(Ljava/lang/String;)Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    move-result-object v8

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v19, "card_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v19, "key"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "type"

    const-string v20, "action"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "action_type"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getActionType()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "action_label"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getLabel()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getData()Landroid/content/Intent;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromIntent(Landroid/content/Intent;)[B

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v0, v4

    move/from16 v19, v0

    if-lez v19, :cond_3

    const-string v19, "action_data"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_3
    invoke-virtual {v8}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getAttributes()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "attributes"

    invoke-static {v7}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromMap(Ljava/util/Map;)[B

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v18, "card_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v18, "key"

    invoke-virtual {v9}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, v9, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const-string v18, "type"

    const-string v20, "text"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v9

    check-cast v18, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;->getText()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    sget-object v18, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "CAN NOT insert a card element. Text of CardText is empty. (key: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getKey()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string v18, "data1"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v9}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getAction()Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v18, "action_type"

    invoke-virtual {v3}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getActionType()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "action_label"

    invoke-virtual {v3}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getLabel()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getData()Landroid/content/Intent;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromIntent(Landroid/content/Intent;)[B

    move-result-object v4

    if-eqz v4, :cond_7

    array-length v0, v4

    move/from16 v18, v0

    if-lez v18, :cond_7

    const-string v18, "action_data"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_7
    invoke-virtual {v9}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getAttributes()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_8

    const-string v18, "attributes"

    invoke-static {v7}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromMap(Ljava/util/Map;)[B

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    instance-of v0, v9, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    const-string v18, "type"

    const-string v20, "image"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v9

    check-cast v18, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v13, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->getImageUri(Landroid/net/Uri;Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    sget-object v18, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "CAN NOT insert a card element. image of CardImage is invalid. (key: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getKey()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const-string v18, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private isRegistered()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SmartAssistantCardProviderRegistered"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isValidCard(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to post card. Card id is empty."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to post card. Card name is empty."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to post card. Card template is empty."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to post card. Card has no elements and actions."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private postCardInner(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;Ljava/lang/String;)V
    .locals 9

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "card_key"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "card_type"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "template_type"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getTemplate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "card_provider"

    iget-object v8, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "card_channel"

    invoke-virtual {v1, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getAttributes()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "attributes"

    invoke-static {v0}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromMap(Ljava/util/Map;)[B

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getExpirationTime()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_3

    cmp-long v7, v2, v4

    if-ltz v7, :cond_2

    sget-object v7, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v8, "ExpirationTime is invalid."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    const-string v7, "expiration_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    const-string v7, "time_stamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Card;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_4

    sget-object v7, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v8, "Failed to insert card."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0, v6, p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->insertCardElements(Landroid/net/Uri;Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;)V

    goto :goto_0
.end method

.method private removeCardInner(Ljava/lang/String;)I
    .locals 4

    const-string v0, "card_key=? AND card_provider=?"

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Card;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private sendImageToSmartAssistant(Landroid/graphics/Bitmap;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    if-nez v3, :cond_3

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    throw v4

    :cond_3
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method private sendImageToSmartAssistant(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "content://"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v8, 0x0

    const-string v9, ""

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/high16 v9, 0x2

    :try_start_1
    new-array v0, v9, [B

    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_4

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    :goto_2
    if-nez v8, :cond_9

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v6, v0, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v4, v5

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v8, 0x0

    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v8, 0x0

    if-eqz v4, :cond_6

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_6
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v9

    goto :goto_2

    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v4, :cond_7

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_8
    :goto_6
    throw v9

    :cond_9
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :catch_4
    move-exception v9

    goto :goto_2

    :catch_5
    move-exception v10

    goto :goto_6

    :catchall_1
    move-exception v9

    move-object v4, v5

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v4, v5

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public containsCard(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v1, "CardProvider is not registered"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v6, 0x0

    const-string v3, "card_key=? AND card_provider=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mPackageName:Ljava/lang/String;

    aput-object v0, v4, v5

    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Card;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return v6
.end method

.method public getAllPostedCards()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v1, "CardProvider is not registered"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "card_provider=?"

    new-array v4, v1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mPackageName:Ljava/lang/String;

    aput-object v0, v4, v9

    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "card_key"

    aput-object v0, v2, v9

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Card;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v7

    :cond_3
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public postCard(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v1, "CardProvider is not registered"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->isValidCard(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->removeCardInner(Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->postCardInner(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public postCard(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v1, "CardProvider is not registered"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to post a card. cardChannelName is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->isValidCard(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->removeCardInner(Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->postCardInner(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public postCard(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v2, "CardProvider is not registered"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->isValidCard(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->removeCardInner(Ljava/lang/String;)I

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->postCardInner(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAllCards()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v4, "CardProvider is not registered"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v1, "card_provider=?"

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mPackageName:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Card;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "removeAllCards: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cards are deleted."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeCard(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v2, "CardProvider is not registered"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to remove a card. cardId is empty."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->removeCardInner(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to remove card."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateCard(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v4, "CardProvider is not registered"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to update card. CardId is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v4, "Card has no card elements or card actions for updating."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "card_key=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v19, v7, v3

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Card;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_5

    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string v13, "card_id=? AND key=? AND type=?"

    const-string v22, "card_id=? AND key=? AND (type=? OR type=?)"

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardActionKeys()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a

    sget-object v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Card;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    const-string v3, "image"

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardElements()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v29, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardElement;->CONTENT_URI_UPDATE_CARD:Landroid/net/Uri;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/ContentValues;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ContentValues;

    move-object/from16 v0, v29

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v8, 0x3

    new-array v0, v8, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v8, 0x0

    aput-object v23, v28, v8

    const/4 v8, 0x1

    aput-object v11, v28, v8

    const/4 v8, 0x2

    const-string v29, "action"

    aput-object v29, v28, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v29, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardElement;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v13, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardAction(Ljava/lang/String;)Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    move-result-object v15

    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "card_id"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "key"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "type"

    const-string v29, "action"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "action_type"

    invoke-virtual {v15}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getActionType()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "action_label"

    invoke-virtual {v15}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getLabel()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getData()Landroid/content/Intent;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromIntent(Landroid/content/Intent;)[B

    move-result-object v10

    if-eqz v10, :cond_b

    array-length v8, v10

    if-lez v8, :cond_b

    const-string v8, "action_data"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_b
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getKey()Ljava/lang/String;

    move-result-object v26

    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v3, 0x0

    aput-object v23, v28, v3

    const/4 v3, 0x1

    aput-object v26, v28, v3

    const/4 v3, 0x2

    const-string v29, "image"

    aput-object v29, v28, v3

    const/4 v3, 0x3

    const-string v29, "text"

    aput-object v29, v28, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v29, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardElement;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_8

    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "card_id"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "key"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;

    if-eqz v3, :cond_f

    const-string v3, "type"

    const-string v29, "text"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v29, "data1"

    move-object/from16 v3, v17

    check-cast v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getAction()Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    move-result-object v9

    if-eqz v9, :cond_d

    const-string v3, "action_type"

    invoke-virtual {v9}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getActionType()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "action_label"

    invoke-virtual {v9}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getLabel()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getData()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromIntent(Landroid/content/Intent;)[B

    move-result-object v10

    if-eqz v10, :cond_d

    array-length v3, v10

    if-lez v3, :cond_d

    const-string v3, "action_data"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_d
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getAttributes()Ljava/util/Map;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "attributes"

    invoke-static {v14}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromMap(Ljava/util/Map;)[B

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_e
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;

    if-eqz v3, :cond_8

    const-string v3, "type"

    const-string v29, "image"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v29, "data1"

    move-object/from16 v3, v17

    check-cast v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->getImageUri(Landroid/net/Uri;Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method
