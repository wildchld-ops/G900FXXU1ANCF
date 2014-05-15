.class Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$7;
.super Ljava/lang/Object;
.source "RejectwithMessageTutorialIncallScreen.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerScrollListener;


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

    iput-object p1, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnded()V
    .locals 2

    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "onScrollEnded"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScrollStarted()V
    .locals 2

    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "onScrollStarted"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    #calls: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->hideDragUpAnimation()V
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$1000(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mrejectMsgTip:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$1100(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
