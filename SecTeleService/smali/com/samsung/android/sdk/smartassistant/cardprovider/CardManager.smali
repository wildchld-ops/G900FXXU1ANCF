.class public Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;
.super Ljava/lang/Object;
.source "CardManager.java"


# static fields
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
    .locals 9

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardActionKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "image"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardElements()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardElement;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardAction(Ljava/lang/String;)Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "card_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "key"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    const-string v6, "action"

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action_type"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getActionType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action_label"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getData()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromIntent(Landroid/content/Intent;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v6, v0

    if-lez v6, :cond_3

    const-string v6, "action_data"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getAttributes()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "attributes"

    invoke-static {v0}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromMap(Ljava/util/Map;)[B

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "card_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "key"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;

    if-eqz v1, :cond_9

    const-string v1, "type"

    const-string v7, "text"

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CAN NOT insert a card element. Text of CardText is empty. (key: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string v7, "data1"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getAction()Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v7, "action_type"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getActionType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "action_label"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->getData()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromIntent(Landroid/content/Intent;)[B

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v7, v1

    if-lez v7, :cond_7

    const-string v7, "action_data"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getAttributes()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "attributes"

    invoke-static {v0}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromMap(Ljava/util/Map;)[B

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_8
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    instance-of v1, v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;

    if-eqz v1, :cond_0

    const-string v1, "type"

    const-string v7, "image"

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->getImageUri(Landroid/net/Uri;Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CAN NOT insert a card element. image of CardImage is invalid. (key: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const-string v7, "data1"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

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
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "card_key"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "card_type"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "template_type"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getTemplate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "card_provider"

    iget-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "card_channel"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "attributes"

    invoke-static {v1}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromMap(Ljava/util/Map;)[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->getExpirationTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v1, "ExpirationTime is invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    const-string v5, "expiration_time"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    const-string v3, "time_stamp"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Card;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to insert card."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->insertCardElements(Landroid/net/Uri;Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;)V

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
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_4
    throw v0

    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method private sendImageToSmartAssistant(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    const/high16 v4, 0x2

    :try_start_2
    new-array v4, v4, [B

    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_2
    if-nez v1, :cond_9

    move-object p1, v0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_6
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move-object v1, v0

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_8
    :goto_6
    throw v0

    :cond_9
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v2, v0

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_3

    :catch_9
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :cond_a
    move-object v1, v0

    goto :goto_2
.end method


# virtual methods
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
