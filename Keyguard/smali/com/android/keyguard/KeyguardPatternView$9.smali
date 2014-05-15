.class Lcom/android/keyguard/KeyguardPatternView$9;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3200(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
