.class public Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"


# static fields
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
.method public registerCardName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;,
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardNameNotFoundException;
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "[registerCardName] Invalid argument. cardName is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "[registerCardName] Invalid argument. channelName is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "card_type_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "provider"

    iget-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ProvidedCardType;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardNameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid card name : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardNameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
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
