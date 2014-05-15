.class public Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;
.super Ljava/lang/Object;
.source "SBRowserAccountContainer.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mActivity:Landroid/app/Activity;

.field private mAuthToken:Ljava/lang/String;

.field private mExactMatch:Z

.field private mParsedAccountName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weblogin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAuthToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mParsedAccountName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doExactMatch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mExactMatch:Z

    return v0
.end method

.method public getSBRowserAccount(Landroid/accounts/AccountManagerCallback;)Landroid/accounts/Account;
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mParsedAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "exact-match-auto-login"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAccount:Landroid/accounts/Account;

    :cond_1
    :goto_0
    return-object v7

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAuthToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mActivity:Landroid/app/Activity;

    move-object v5, p1

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAccount:Landroid/accounts/Account;

    goto :goto_0
.end method

.method public getSBRowserAccountName()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAccount:Landroid/accounts/Account;

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAccount:Landroid/accounts/Account;

    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSBRowserAuthToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSBRowserAuthToken(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mAuthToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->mActivity:Landroid/app/Activity;

    move-object v1, p1

    move-object v5, p2

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method
