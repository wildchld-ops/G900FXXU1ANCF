.class Lcom/samsung/contacts/group/SubGroupBrowseListFragment$1;
.super Ljava/lang/Object;
.source "SubGroupBrowseListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/SubGroupBrowseListFragment;
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
.field final synthetic this$0:Lcom/samsung/contacts/group/SubGroupBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/group/SubGroupBrowseListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment$1;->this$0:Lcom/samsung/contacts/group/SubGroupBrowseListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment$1;->this$0:Lcom/samsung/contacts/group/SubGroupBrowseListFragment;

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment$1;->this$0:Lcom/samsung/contacts/group/SubGroupBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->access$000(Lcom/samsung/contacts/group/SubGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->createGoogleGroupsLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    invoke-static {v0, v1}, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->access$100(Lcom/samsung/contacts/group/SubGroupBrowseListFragment;Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment$1;->this$0:Lcom/samsung/contacts/group/SubGroupBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mAdapter:Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;
    invoke-static {v0}, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->access$200(Lcom/samsung/contacts/group/SubGroupBrowseListFragment;)Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/group/SubGroupBrowseListFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment$1;->this$0:Lcom/samsung/contacts/group/SubGroupBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mAdapter:Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;
    invoke-static {v0}, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->access$200(Lcom/samsung/contacts/group/SubGroupBrowseListFragment;)Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method
