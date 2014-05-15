.class Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InfoBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3$1;->this$1:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3$1;->this$1:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mViewClippedToBounds:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$102(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3$1;->this$1:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3$1;->this$1:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    #calls: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->broadcast(ILcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$200(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;ILcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3$1;->this$1:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #calls: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->processPendingInfoBars()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$400(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)V

    return-void
.end method
