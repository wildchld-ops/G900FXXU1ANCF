.class Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$4;
.super Ljava/lang/Object;
.source "InteractionContactTileListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->showMaxCountAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$4;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    iput-boolean p2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$4;->val$flag:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$4;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mShowMaxCountDialog:Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$1502(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Z)Z

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$4;->val$flag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$4;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$4;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$800(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$4;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->setDoneButton(II)V

    :cond_0
    return-void
.end method
