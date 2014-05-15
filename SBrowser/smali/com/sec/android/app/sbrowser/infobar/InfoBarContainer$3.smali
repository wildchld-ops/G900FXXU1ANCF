.class Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;
.super Ljava/lang/Object;
.source "InfoBarContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$infoBarView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/WebAlert;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->val$infoBarView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$500(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->val$infoBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->val$infoBarView:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->val$infoBarView:Landroid/view/View;

    const-string v3, "translationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3$1;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->val$infoBarView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
