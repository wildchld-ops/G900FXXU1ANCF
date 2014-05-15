.class Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HelpFloatingChildLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->animateScale(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

.field final synthetic val$isExitAnimation:Z

.field final synthetic val$onAnimationEndRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    iput-boolean p2, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->val$isExitAnimation:Z

    iput-object p3, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$100(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->val$isExitAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I
    invoke-static {v0}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$200(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    const/4 v1, 0x4

    #setter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I
    invoke-static {v0, v1}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$302(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;I)I

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I
    invoke-static {v0}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$400(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    const/4 v1, 0x2

    #setter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I
    invoke-static {v0, v1}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$502(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;I)I

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #calls: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->showTutorial()V
    invoke-static {v0}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$600(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->val$isExitAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;
    invoke-static {v0}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$000(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Lcom/samsung/contacts/impl/HelpImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;
    invoke-static {v0}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$000(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Lcom/samsung/contacts/impl/HelpImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/HelpImpl;->hide()V

    :cond_0
    return-void
.end method
