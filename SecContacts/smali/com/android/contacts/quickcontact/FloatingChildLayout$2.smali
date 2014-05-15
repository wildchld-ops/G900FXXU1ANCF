.class Lcom/android/contacts/quickcontact/FloatingChildLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingChildLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/FloatingChildLayout;->animateScale(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

.field final synthetic val$isExitAnimation:Z

.field final synthetic val$onAnimationEndRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iput-boolean p2, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$isExitAnimation:Z

    iput-object p3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iget-object v0, v0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$isExitAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iget v0, v0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iget v0, v0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
