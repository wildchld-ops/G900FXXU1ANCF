.class public Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;
.super Ljava/lang/Object;
.source "WebsiteAddress.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ANY_SUBDOMAIN_PATTERN:Ljava/lang/String; = "[*.]"

.field private static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final HTTP_SCHEME_SUFFIX:Ljava/lang/String; = "http://"

.field private static final SCHEME_SUFFIX:Ljava/lang/String; = "://"


# instance fields
.field private mHost:Ljava/lang/String;

.field private mOmitProtocolAndPort:Z

.field private mOrigin:Ljava/lang/String;

.field private mScheme:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mOrigin:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mScheme:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mHost:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mOmitProtocolAndPort:Z

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;
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

    new-instance v5, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    const-string v6, "[*.]"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v7, v6, v0}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v6, "://"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_5

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->trimTrailingBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

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
    new-instance v5, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    invoke-direct {v5, v1, v2, v3, v0}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    new-instance v5, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    invoke-direct {v5, v7, v7, p0, v0}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getDomainAndRegistry()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mOrigin:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mOrigin:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->getDomainAndRegistry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->getDomainAndRegistry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubdomainsList()[Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mOrigin:Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mHost:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->getDomainAndRegistry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    if-le v2, v1, :cond_0

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mOrigin:Ljava/lang/String;

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    const-string v5, "://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mOrigin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->getDomainAndRegistry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    if-le v2, v1, :cond_0

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static trimTrailingBackslash(Ljava/lang/String;)Ljava/lang/String;
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
.method public compareTo(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    const/4 v4, 0x0

    :goto_0
    move v5, v4

    :goto_1
    return v5

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->getDomainAndRegistry()Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->getDomainAndRegistry()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mScheme:Ljava/lang/String;

    if-eqz v15, :cond_2

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mScheme:Ljava/lang/String;

    if-eqz v15, :cond_3

    const/4 v12, 0x0

    :goto_3
    if-ne v14, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mScheme:Ljava/lang/String;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mScheme:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mScheme:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    move v5, v4

    goto :goto_1

    :cond_2
    const/4 v14, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->getSubdomainsList()[Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->getSubdomainsList()[Ljava/lang/String;

    move-result-object v3

    array-length v15, v2

    add-int/lit8 v7, v15, -0x1

    array-length v15, v3

    add-int/lit8 v9, v15, -0x1

    move v11, v7

    :goto_4
    if-ltz v11, :cond_5

    if-gez v9, :cond_6

    :cond_5
    sub-int v4, v11, v9

    move v5, v4

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v11, -0x1

    add-int/lit8 v8, v9, -0x1

    aget-object v13, v2, v11

    aget-object v15, v3, v9

    invoke-virtual {v13, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_7

    move v4, v10

    goto :goto_0

    :cond_7
    move v9, v8

    move v11, v6

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mScheme:Ljava/lang/String;

    if-eqz v15, :cond_9

    const/4 v4, 0x1

    goto :goto_0

    :cond_9
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->compareTo(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->compareTo(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mOrigin:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mOmitProtocolAndPort:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mOrigin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[*.]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mOrigin:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mOmitProtocolAndPort:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mHost:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->mOrigin:Ljava/lang/String;

    goto :goto_0
.end method
