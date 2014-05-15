.class public Lcom/samsung/contacts/list/AccountIconInfo;
.super Ljava/lang/Object;
.source "AccountIconInfo.java"


# instance fields
.field public accountType:Ljava/lang/String;

.field public dataSet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountIcon(Ljava/lang/String;)Lcom/samsung/contacts/list/AccountIconInfo;
    .locals 3

    new-instance v0, Lcom/samsung/contacts/list/AccountIconInfo;

    invoke-direct {v0}, Lcom/samsung/contacts/list/AccountIconInfo;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "/"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/contacts/list/AccountIconInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/contacts/list/AccountIconInfo;->dataSet:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v2, ""

    iput-object v2, v0, Lcom/samsung/contacts/list/AccountIconInfo;->dataSet:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAccountIconInfoArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/list/AccountIconInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v2, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Lcom/samsung/contacts/list/AccountIconInfo;

    invoke-direct {v0}, Lcom/samsung/contacts/list/AccountIconInfo;-><init>()V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "/"

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/contacts/list/AccountIconInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/contacts/list/AccountIconInfo;->dataSet:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v5, ""

    iput-object v5, v0, Lcom/samsung/contacts/list/AccountIconInfo;->dataSet:Ljava/lang/String;

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static shouldShowAccountIcon(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/list/AccountIconInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/list/AccountIconInfo;

    invoke-virtual {v0}, Lcom/samsung/contacts/list/AccountIconInfo;->shouldShow()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/samsung/contacts/list/AccountIconInfo;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/list/AccountIconInfo;->accountType:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/samsung/contacts/list/AccountIconInfo;

    iget-object v1, v1, Lcom/samsung/contacts/list/AccountIconInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/list/AccountIconInfo;->dataSet:Ljava/lang/String;

    check-cast p1, Lcom/samsung/contacts/list/AccountIconInfo;

    iget-object v2, p1, Lcom/samsung/contacts/list/AccountIconInfo;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccountIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/list/AccountIconInfo;->accountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/contacts/list/AccountIconInfo;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/common/model/account/ExchangeAccountType;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/contacts/common/model/account/ExchangeAccountType;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/account/ExchangeAccountType;->getDisplaySmallIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public shouldShow()Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method
