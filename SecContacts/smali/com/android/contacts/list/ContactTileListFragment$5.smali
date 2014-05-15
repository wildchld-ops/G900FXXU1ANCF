.class Lcom/android/contacts/list/ContactTileListFragment$5;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$200(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, v1, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCursorCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$200(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->selectAll()V

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCursorCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v2, v2, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCursorCount()I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    #calls: Lcom/android/contacts/list/ContactTileListFragment;->updateSelectAllState(Z)V
    invoke-static {v1, v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$1700(Lcom/android/contacts/list/ContactTileListFragment;Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$200(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->updateSelectionMenu()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$200(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->deselectAll()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
