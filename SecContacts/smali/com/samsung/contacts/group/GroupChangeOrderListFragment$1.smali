.class Lcom/samsung/contacts/group/GroupChangeOrderListFragment$1;
.super Ljava/lang/Object;
.source "GroupChangeOrderListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupChangeOrderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/group/GroupChangeOrderListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 2

    new-instance v0, Lcom/samsung/contacts/group/AggGroupNameLoader;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->access$000(Lcom/samsung/contacts/group/GroupChangeOrderListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/group/AggGroupNameLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    iget-object v5, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    invoke-static {v5}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->access$100(Lcom/samsung/contacts/group/GroupChangeOrderListFragment;)Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->clear()V

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    add-int/lit8 v2, v1, 0x1

    invoke-direct {v0, v4, v3, v1}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    invoke-static {v5}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->access$100(Lcom/samsung/contacts/group/GroupChangeOrderListFragment;)Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->add(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    invoke-static {v5}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->access$100(Lcom/samsung/contacts/group/GroupChangeOrderListFragment;)Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->notifyDataSetChanged()V

    iget-object v5, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;

    invoke-virtual {v5}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
