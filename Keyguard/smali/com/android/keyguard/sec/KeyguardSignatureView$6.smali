.class Lcom/android/keyguard/sec/KeyguardSignatureView$6;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSignatureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mRootLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1000(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
