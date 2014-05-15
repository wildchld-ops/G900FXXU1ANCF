.class Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;
.super Ljava/lang/Object;
.source "RejectwithMessageTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTip:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$100(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$200(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    iget-object v0, v0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgComplete:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$300(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgComplete:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$300(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$400(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$500(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$200(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$600(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$700(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$800(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    iget-object v0, v0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
