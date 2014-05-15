.class Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;
.super Ljava/lang/Object;
.source "InteractionContactTileListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;
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
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 6

    const/16 v5, 0xaa

    const/16 v4, 0xa0

    const/16 v3, 0x96

    const-string v0, "InteractionContactTileListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActionCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    iget v2, v2, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    if-ne v0, v3, :cond_0

    invoke-static {v3}, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->setSelection(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->createInteractionStrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    const/16 v1, 0x118

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {v4}, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->setSelection(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    if-ne v0, v5, :cond_3

    invoke-static {v5}, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->setSelection(I)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->setSelection(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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

    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "InteractionContactTileListFragment"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getDBQueryEnd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$000(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/contacts/common/list/ContactTileAdapter;->setContactCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsRecreatedInstance:Z
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$100(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllTaskRunning:Z
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$200(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InteractionContactTileListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "excuteSelectAllContacts is started in onLoadFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->excuteSelectAllContacts()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mEmptyTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$300(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$500(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mTileEmptyView:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$400(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    const/4 v1, 0x0

    #calls: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->showSelectAllHeader(Z)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$600(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->onSelectedInfoChanged()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    const/4 v1, 0x1

    #calls: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->showSelectAllHeader(Z)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$600(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
