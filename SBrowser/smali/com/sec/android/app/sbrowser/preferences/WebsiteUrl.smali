.class public Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;
.super Ljava/lang/Object;
.source "WebsiteUrl.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private mHost:Ljava/lang/String;

.field private mOmitProtocolAndPort:Z

.field private mOrigin:Ljava/lang/String;

.field private mScheme:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mHost:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mOrigin:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mScheme:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mOmitProtocolAndPort:Z

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    const-string v6, "[*.]"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v5, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;

    const-string v6, "[*.]"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v7, v6, v0}, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v6, "://"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_5

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->trimBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v6, "http"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroid/net/Uri;->getPort()I

    move-result v6

    if-eq v6, v8, :cond_4

    invoke-virtual {v4}, Landroid/net/Uri;->getPort()I

    move-result v6

    const/16 v7, 0x50

    if-eq v6, v7, :cond_4

    :cond_3
    const/4 v0, 0x0

    :cond_4
    new-instance v5, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;

    invoke-direct {v5, v2, v3, v1, v0}, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    new-instance v5, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;

    invoke-direct {v5, v7, v7, p0, v0}, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getDomainRegistry()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private static trimBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->compareTo(Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;)I

    move-result v0

    return v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mOrigin:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mOmitProtocolAndPort:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mOrigin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlTitle()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mOrigin:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mOmitProtocolAndPort:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mHost:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->mOrigin:Ljava/lang/String;

    goto :goto_0
.end method
