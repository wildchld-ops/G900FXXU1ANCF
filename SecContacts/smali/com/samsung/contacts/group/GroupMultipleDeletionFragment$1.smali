.class Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;
.super Ljava/lang/Object;
.source "GroupMultipleDeletionFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;
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
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4

    invoke-static {}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$000()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$002(Landroid/content/Context;)Landroid/content/Context;

    :cond_0
    new-instance v0, Lcom/samsung/contacts/group/AggGroupNameLoader;

    invoke-static {}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/contacts/group/AggGroupNameLoader;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "system_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/contacts/util/GroupUtils;->isIceGroupAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ICE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Starred in Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/group/AggGroupNameLoader;->setSelection(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->configureEmptyView(Z)V
    invoke-static {v1, v0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$100(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;Z)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;
    invoke-static {v0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$200(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;)Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->checkSelectedGroup()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
