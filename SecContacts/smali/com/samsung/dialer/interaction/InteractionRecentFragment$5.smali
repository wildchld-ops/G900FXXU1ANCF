.class Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;
.super Ljava/lang/Object;
.source "InteractionRecentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/interaction/InteractionRecentFragment;->addSelectAllHeaderView(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    #getter for: Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mTotalCount:I
    invoke-static {v0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->access$300(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget v1, v1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget v0, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget v1, v1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    if-lt v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    #getter for: Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mTotalCount:I
    invoke-static {v0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->access$300(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget v1, v1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget v0, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    #getter for: Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mTotalCount:I
    invoke-static {v1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->access$300(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget v0, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->setAllItemChecked(Z)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->setAllItemChecked(Z)V

    goto :goto_0
.end method
