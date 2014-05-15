.class Lcom/android/keyguard/KeyguardHostView$5;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;

.field final synthetic val$spassEcaButton:Landroid/view/View;

.field final synthetic val$spassPlmn:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassPlmn:Landroid/view/View;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassEcaButton:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideSecurityView(I)V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1000(Lcom/android/keyguard/KeyguardHostView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1000(Lcom/android/keyguard/KeyguardHostView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassPlmn:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassEcaButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassPlmn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassEcaButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/CarrierText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public showSecurityView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1000(Lcom/android/keyguard/KeyguardHostView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1000(Lcom/android/keyguard/KeyguardHostView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassPlmn:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassEcaButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassPlmn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassEcaButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/CarrierText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public showUnlockHint()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/keyguard/KeyguardSelectorView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1200(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSelectorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/keyguard/KeyguardSelectorView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1200(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSelectorView;->showUsabilityHint()V

    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    :cond_0
    return-void
.end method
