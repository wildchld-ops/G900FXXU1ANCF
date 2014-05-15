.class Lcom/android/contacts/list/JoinContactListFragment$1;
.super Ljava/lang/Object;
.source "JoinContactListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/JoinContactListFragment;
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
.field final synthetic this$0:Lcom/android/contacts/list/JoinContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/JoinContactListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 9
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

    const/4 v4, 0x0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    #getter for: Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J
    invoke-static {v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$000(Lcom/android/contacts/list/JoinContactListFragment;)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "entities"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/android/contacts/list/JoinContactListFragment;->access$100()[Ljava/lang/String;

    move-result-object v3

    const-string v6, "raw_contact_id"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    new-instance v8, Lcom/android/contacts/list/JoinContactLoader;

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/contacts/list/JoinContactLoader;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/list/JoinContactListAdapter;

    if-eqz v7, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {v7, v8, v0, v1}, Lcom/android/contacts/list/JoinContactListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    :cond_1
    move-object v0, v8

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No loader for ID="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    #setter for: Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1, p2}, Lcom/android/contacts/list/JoinContactListFragment;->access$202(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    #getter for: Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$200(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    #getter for: Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$200(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    #getter for: Lcom/android/contacts/list/JoinContactListFragment;->mIsDone:Z
    invoke-static {v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$300(Lcom/android/contacts/list/JoinContactListFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    #getter for: Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/contacts/list/JoinContactListFragment;->access$200(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;

    move-result-object v2

    #calls: Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactData(Landroid/database/Cursor;)V
    invoke-static {v1, v2}, Lcom/android/contacts/list/JoinContactListFragment;->access$400(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    #getter for: Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$200(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;

    iget-object v1, v1, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->suggestionCursor:Landroid/database/Cursor;

    #setter for: Lcom/android/contacts/list/JoinContactListFragment;->mSuggestionCursor:Landroid/database/Cursor;
    invoke-static {v3, v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$502(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    #getter for: Lcom/android/contacts/list/JoinContactListFragment;->mSuggestionCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$500(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    #setter for: Lcom/android/contacts/list/JoinContactListFragment;->mHasSuggestionList:Z
    invoke-static {v3, v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$602(Lcom/android/contacts/list/JoinContactListFragment;Z)Z

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    #getter for: Lcom/android/contacts/list/JoinContactListFragment;->mSuggestionCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/contacts/list/JoinContactListFragment;->access$500(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    #getter for: Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/contacts/list/JoinContactListFragment;->access$200(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;

    move-result-object v3

    #calls: Lcom/android/contacts/list/JoinContactListFragment;->onContactListLoaded(Landroid/database/Cursor;Landroid/database/Cursor;)V
    invoke-static {v1, v2, v3}, Lcom/android/contacts/list/JoinContactListFragment;->access$700(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/JoinContactListFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
