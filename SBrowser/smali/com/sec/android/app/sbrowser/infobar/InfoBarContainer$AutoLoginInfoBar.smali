.class Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;
.super Lcom/sec/android/app/sbrowser/infobar/WebAlert;
.source "InfoBarContainer.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoLoginInfoBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/infobar/WebAlert;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountManagerContainer:Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;

.field private mActivity:Landroid/app/Activity;

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelButtonText:Ljava/lang/String;

.field private mIsSingleLine:Z

.field private mLoginButton:Landroid/widget/Button;

.field private mMessage:Ljava/lang/String;

.field private mNativeInfoBar:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;

.field private mOkButtonText:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mNativeInfoBar:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mAccountManagerContainer:Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mOkButtonText:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mCancelButtonText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->loginSucceeded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->loginFailed()V

    return-void
.end method

.method private loginFailed()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->dismissAlertInfo()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0078

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->createAlertWarning(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->addInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    return-void
.end method

.method private loginSucceeded(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mNativeInfoBar:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;

    iget v0, v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->mNativeInfoBarPtr:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$1500(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mNativeInfoBar:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;

    iget v1, v1, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->mNativeInfoBarPtr:I

    invoke-virtual {v0, v1, p1}, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->onAutoLogin(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->dismissAlertInfo()V

    return-void
.end method

.method private newExtraAccount()Landroid/accounts/Account;
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method protected createWebAlertView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400b6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a02a4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a02a9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mLoginButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mLoginButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mOkButtonText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02a8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mCancelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mCancelButtonText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public exactMatch()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mAccountManagerContainer:Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->doExactMatch()Z

    const/4 v0, 0x1

    return v0
.end method

.method getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mAccountManagerContainer:Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->getSBRowserAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAuthToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mAccountManagerContainer:Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->getSBRowserAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIconResourceId()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasAccount()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isIconInCenter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mIsSingleLine:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mLoginButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    const-string v1, "InfoBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto-login requested for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mAccountManagerContainer:Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->getSBRowserAuthToken(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->setButtonsEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "?"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->dismissAlertInfo()V

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object v5, v7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mAccountManagerContainer:Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->getSBRowserAuthToken()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mAccountManagerContainer:Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBRowserAccountContainer;->getSBRowserAccountName()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar$1;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v6

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method setButtonsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mLoginButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method
