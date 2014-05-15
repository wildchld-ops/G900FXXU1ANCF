.class Lcom/android/mms/ui/ComposeMessageFragment$169;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMultiMode()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposeEmoticonContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposeEmoticonContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAppBody:Landroid/view/View;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eqz v0, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v2

    if-eq v1, v2, :cond_2

    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "Emoticon check SIP style changed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->hideEmoticonPanel()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6500(Lcom/android/mms/ui/ComposeMessageFragment;)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->checkComposerHeight()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposerHeightLandscape:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14200(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAppBody:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposerHeightLandscape:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14200(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAppBody:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14302(I)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposerHeightPortrait:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14400(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAppBody:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposerHeightPortrait:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14400(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$169;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAppBody:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14502(I)I

    goto/16 :goto_0
.end method
