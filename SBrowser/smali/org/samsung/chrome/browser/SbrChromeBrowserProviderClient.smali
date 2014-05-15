.class public Lorg/samsung/chrome/browser/SbrChromeBrowserProviderClient;
.super Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;
.source "SbrChromeBrowserProviderClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SbrChromeBrowserProviderClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;-><init>()V

    return-void
.end method

.method private static varargs argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v4

    aget-object v3, p0, v1

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v4

    aget-object v3, p0, v1

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    :cond_1
    const-string v3, "SbrChromeBrowserProviderClient"

    const-string v4, "Argument implements neither Parcelable nor Serializable."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method private static getPrivateProviderUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getURLThumbnail(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-class v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "GET_URL_THUMBNAIL"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v5}, Lorg/samsung/chrome/browser/SbrChromeBrowserProviderClient;->argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v4, p0, v5}, Lorg/samsung/chrome/browser/SbrChromeBrowserProviderClient;->sbrChromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-class v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "GET_URL_THUMBNAIL"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v5}, Lorg/samsung/chrome/browser/SbrChromeBrowserProviderClient;->argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v4, p0, v5}, Lorg/samsung/chrome/browser/SbrChromeBrowserProviderClient;->sbrChromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_0
    const/4 v0, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isValidUrl(Landroid/content/Context;Ljava/lang/String;)J
    .locals 5

    const-class v1, Ljava/lang/Long;

    const-string v2, "IS_VALID_URL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3}, Lorg/samsung/chrome/browser/SbrChromeBrowserProviderClient;->argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lorg/samsung/chrome/browser/SbrChromeBrowserProviderClient;->sbrChromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private static sbrChromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Lorg/samsung/chrome/browser/SbrChromeBrowserProviderClient;->getPrivateProviderUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v1, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
