.class public Lcom/samsung/contacts/sim/list/ListSimManager;
.super Ljava/lang/Object;
.source "ListSimManager.java"


# static fields
.field private static mListSimManager:Lcom/samsung/contacts/sim/list/ListSimManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListSimOperation:Lcom/samsung/contacts/sim/list/ListSimOperation;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/contacts/sim/list/ListSimOperation;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mListSimOperation:Lcom/samsung/contacts/sim/list/ListSimOperation;

    return-void
.end method

.method public static createSimSupportedContactLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 1

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/sim/list/MultiSimContactListLoader;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/sim/list/MultiSimContactListLoader;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/contacts/sim/list/SingleSimContactListLoader;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/sim/list/SingleSimContactListLoader;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/list/ListSimManager;
    .locals 3

    const-class v2, Lcom/samsung/contacts/sim/list/ListSimManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/samsung/contacts/sim/list/ListSimManager;->mListSimManager:Lcom/samsung/contacts/sim/list/ListSimManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/contacts/sim/list/ListMultiSimOperation;

    invoke-direct {v0}, Lcom/samsung/contacts/sim/list/ListMultiSimOperation;-><init>()V

    :goto_0
    new-instance v1, Lcom/samsung/contacts/sim/list/ListSimManager;

    invoke-direct {v1, p0, v0}, Lcom/samsung/contacts/sim/list/ListSimManager;-><init>(Landroid/content/Context;Lcom/samsung/contacts/sim/list/ListSimOperation;)V

    sput-object v1, Lcom/samsung/contacts/sim/list/ListSimManager;->mListSimManager:Lcom/samsung/contacts/sim/list/ListSimManager;

    :cond_0
    sget-object v1, Lcom/samsung/contacts/sim/list/ListSimManager;->mListSimManager:Lcom/samsung/contacts/sim/list/ListSimManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_1
    :try_start_1
    new-instance v0, Lcom/samsung/contacts/sim/list/ListSingleSimOperation;

    invoke-direct {v0}, Lcom/samsung/contacts/sim/list/ListSingleSimOperation;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addSimMenu(Landroid/widget/ArrayAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mListSimOperation:Lcom/samsung/contacts/sim/list/ListSimOperation;

    iget-object v1, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/samsung/contacts/sim/list/ListSimOperation;->addSimMenu(Landroid/content/Context;Landroid/widget/ArrayAdapter;)V

    return-void
.end method

.method public excludeSimContactIfNecessary(Ljava/lang/StringBuilder;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mListSimOperation:Lcom/samsung/contacts/sim/list/ListSimOperation;

    iget-object v1, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/contacts/sim/list/ListSimOperation;->excludeSimContactIfNecessary(Landroid/content/Context;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public getCallIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mListSimOperation:Lcom/samsung/contacts/sim/list/ListSimOperation;

    iget-object v1, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/contacts/sim/list/ListSimOperation;->getCallIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getImportExportSimMenuString(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mListSimOperation:Lcom/samsung/contacts/sim/list/ListSimOperation;

    iget-object v1, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/samsung/contacts/sim/list/ListSimOperation;->getImportExportSimMenuString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimInitString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mListSimOperation:Lcom/samsung/contacts/sim/list/ListSimOperation;

    iget-object v1, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/sim/list/ListSimOperation;->getSimInitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSimSupportedButNotReady()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mListSimOperation:Lcom/samsung/contacts/sim/list/ListSimOperation;

    iget-object v1, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/sim/list/ListSimOperation;->isSimSupportedButNotReady(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setSelectionArgsForJoin(Lcom/android/contacts/list/JoinContactLoader;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mListSimOperation:Lcom/samsung/contacts/sim/list/ListSimOperation;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/contacts/sim/list/ListSimOperation;->setSelectionArgsForJoin(Lcom/android/contacts/list/JoinContactLoader;J)V

    return-void
.end method

.method public shouldHandleImportRequest()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mListSimOperation:Lcom/samsung/contacts/sim/list/ListSimOperation;

    iget-object v1, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/sim/list/ListSimOperation;->shouldHandleImportRequest(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public shouldSkipLoadAccountFilter(Lcom/android/contacts/common/model/account/AccountWithDataSet;Z)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/contacts/sim/list/ListSimManager;->mListSimOperation:Lcom/samsung/contacts/sim/list/ListSimOperation;

    invoke-interface {v1, v0, p1, p2}, Lcom/samsung/contacts/sim/list/ListSimOperation;->shouldSkipLoadAccountFilter(Lcom/samsung/contacts/sim/PhoneBookManageSim;Lcom/android/contacts/common/model/account/AccountWithDataSet;Z)Z

    move-result v1

    goto :goto_0
.end method
