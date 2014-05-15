.class public Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/smartassistant/NotificationDescriptor;


# static fields
.field private static final PREFERENCE_KEY_PROVIDER_REGISTRATION:Ljava/lang/String; = "SmartAssistantCardProviderRegistered"

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private getCardTypes(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v9, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "channel_key=? AND enable=1"

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v9

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "card_type_key"

    aput-object v0, v2, v9

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Setting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    return-object v7

    :cond_1
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v7, v5

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;
    .locals 2

    const-string v0, "SA Version"

    const-string v1, "CardProvider Library : 8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;

    iput-object p0, v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mPackageName:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;

    return-object v0
.end method

.method private isRegistered()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SmartAssistantCardProviderRegistered"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private setRegistered(Z)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "SmartAssistantCardProviderRegistered"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getAllCardChannels()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v10, "CardProvider is not registered"

    invoke-direct {v3, v10}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Channel;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v7

    :cond_3
    const-string v3, "KEY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "package_name"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "enable"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v2, 0x0

    if-lez v9, :cond_4

    const/4 v2, 0x1

    :cond_4
    const/4 v5, 0x0

    const-string v3, "attributes"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    if-eqz v6, :cond_5

    array-length v3, v6

    if-lez v3, :cond_5

    invoke-static {v6}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getMapFromBytes([B)Ljava/util/Map;

    move-result-object v5

    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->getCardTypes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;-><init>(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCardChannel(Ljava/lang/String;)Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v1, "CardProvider is not registered"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "[getCardChannel] Invalid argument. cardChannelName is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_2
    const/4 v12, 0x0

    const-string v3, "KEY=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Channel;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "KEY"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "package_name"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "enable"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v7, 0x0

    if-lez v14, :cond_3

    const/4 v7, 0x1

    :cond_3
    const/4 v10, 0x0

    const-string v0, "attributes"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    if-eqz v11, :cond_4

    array-length v0, v11

    if-lez v0, :cond_4

    invoke-static {v11}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getMapFromBytes([B)Ljava/util/Map;

    move-result-object v10

    :cond_4
    new-instance v5, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->getCardTypes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;-><init>(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    move-object v5, v12

    goto :goto_1

    :cond_6
    move-object v5, v12

    goto :goto_0
.end method

.method public getRegisteredCardNames()Ljava/util/List;
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

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v1, "CardProvider is not registered"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v3, "provider=?"

    new-array v4, v1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mPackageName:Ljava/lang/String;

    aput-object v0, v4, v9

    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "card_type_key"

    aput-object v0, v2, v9

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ProvidedCardType;->CONTENT_URI:Landroid/net/Uri;

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

.method public isCardSubscribed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v1, "CardProvider is not registered"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "[isCardNameSubscribed] Invalid argument. cardName is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :goto_0
    return v0

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v3, "card_type_key=? AND enable=1"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v7

    :goto_1
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "card_type_key"

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Setting;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v8, :cond_6

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v7

    goto :goto_0

    :cond_5
    const-string v3, "card_type_key=? AND enable=1 AND channel_key=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    goto :goto_1

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0
.end method

.method public registerCardName(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;,
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardNameNotFoundException;
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v3, "CardProvider is not registered"

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "[registerCardType] Invalid argument. cardType is empty."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "card_type_key"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "provider"

    iget-object v3, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ProvidedCardType;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardNameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid card name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardNameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public registerCardName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;,
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardNameNotFoundException;
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v3, "CardProvider is not registered"

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "[registerCardName] Invalid argument. cardName is empty."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "[registerCardName] Invalid argument. channelName is empty."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "card_type_key"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "provider"

    iget-object v3, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "channel_key"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ProvidedCardType;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardNameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid card name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardNameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public registerCardNames(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;,
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardNameNotFoundException;
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v4, "CardProvider is not registered"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    sget-object v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v4, "[registerCardNames] Invalid argument. cardNames is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ProvidedCardType;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "card_type_key"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "provider"

    iget-object v5, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public registerCardNames(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;,
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardNameNotFoundException;
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v4, "CardProvider is not registered"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    sget-object v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v4, "[registerCardNames] Invalid argument. cardNames is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v4, "[registerCardNames] Invalid argument. channelName is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ProvidedCardType;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_0

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "card_type_key"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "provider"

    iget-object v5, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "channel_key"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public registerCardProvider(Landroid/content/Intent;)Z
    .locals 14

    const/4 v1, 0x1

    const/4 v13, 0x0

    const-string v3, "package_name=?"

    new-array v4, v1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mPackageName:Ljava/lang/String;

    aput-object v0, v4, v13

    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "package_name"

    aput-object v0, v2, v13

    const/4 v9, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Provider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "package_name"

    iget-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "setting_action"

    invoke-static {p1}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromIntent(Landroid/content/Intent;)[B

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Provider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    if-nez v12, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Provider was not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v9, 0x0

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {p0, v9}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->setRegistered(Z)V

    move v10, v9

    :goto_1
    return v10

    :catch_0
    move-exception v8

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0, v13}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->setRegistered(Z)V

    move v10, v9

    goto :goto_1

    :catch_1
    move-exception v8

    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "setting_action"

    invoke-static {p1}, Lcom/samsung/android/sdk/smartassistant/util/DataConverter;->getBytesFromIntent(Landroid/content/Intent;)[B

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Provider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Provider was not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v9, 0x0

    goto :goto_0

    :catch_2
    move-exception v8

    const/4 v9, 0x0

    goto :goto_0
.end method

.method public unregisterCardName(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v4, "CardProvider is not registered"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v4, "[unregisterCardName] Invalid argument. cardName is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v1, "card_type_key=? AND provider=?"

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mPackageName:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ProvidedCardType;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v4, "[unregisterCardName] The card name is not registered."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterCardNames(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v2, "Invalid argument. cardNames is empty."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->unregisterCardName(Ljava/lang/String;)V

    goto :goto_0
.end method
