.class Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;
.super Ljava/lang/Object;
.source "InfoBarContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->showAndAnimateNextInfoBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

.field final synthetic val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->notifyConfirmation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$800(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$900(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSbrPasswordManagerInstance()Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->setFingerCheckBoxValue(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$1000(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$700(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$702(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$1200(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c02c0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02bf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c003d

    new-instance v3, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6$2;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6$1;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mFingerInformDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$1102(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$900(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSbrPasswordManagerInstance()Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->setFingerCheckBoxValue(Z)V

    goto :goto_0
.end method
