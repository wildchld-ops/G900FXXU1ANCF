.class Lcom/android/incallui/AnswerCoverFragment$1;
.super Ljava/lang/Object;
.source "AnswerCoverFragment.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerCoverFragment;->onFinishInflate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerCoverFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerCoverFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AnswerCoverFragment$1;->this$0:Lcom/android/incallui/AnswerCoverFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment$1;->this$0:Lcom/android/incallui/AnswerCoverFragment;

    #getter for: Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/AnswerCoverFragment;->access$000(Lcom/android/incallui/AnswerCoverFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment$1;->this$0:Lcom/android/incallui/AnswerCoverFragment;

    #getter for: Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/AnswerCoverFragment;->access$000(Lcom/android/incallui/AnswerCoverFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment$1;->this$0:Lcom/android/incallui/AnswerCoverFragment;

    const-string v1, "onDrawerOpened"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/AnswerCoverFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment$1;->this$0:Lcom/android/incallui/AnswerCoverFragment;

    iget-object v1, p0, Lcom/android/incallui/AnswerCoverFragment$1;->this$0:Lcom/android/incallui/AnswerCoverFragment;

    #getter for: Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v1}, Lcom/android/incallui/AnswerCoverFragment;->access$100(Lcom/android/incallui/AnswerCoverFragment;)Landroid/widget/SlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/android/incallui/AnswerCoverFragment;->setDescription(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/AnswerCoverFragment;->access$200(Lcom/android/incallui/AnswerCoverFragment;Landroid/view/View;Z)V

    return-void
.end method
