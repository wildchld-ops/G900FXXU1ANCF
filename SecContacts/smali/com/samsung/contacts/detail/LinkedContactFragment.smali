.class public Lcom/samsung/contacts/detail/LinkedContactFragment;
.super Landroid/app/ListFragment;
.source "LinkedContactFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final RAW_CONTACT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/samsung/contacts/detail/LinkedContactAdapter;

.field private mCursor:Landroid/database/Cursor;

.field mLinkedContactEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/LinkedContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedContactUri:Landroid/net/Uri;

.field private mShouldRestartLoader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/detail/LinkedContactFragment;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private bindData()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mLinkedContactEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/contacts/detail/LinkedContactEntry;

    invoke-direct {v0}, Lcom/samsung/contacts/detail/LinkedContactEntry;-><init>()V

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/contacts/detail/LinkedContactEntry;->accountType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/detail/LinkedContactEntry;->setAccountDisplayLabel(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/contacts/detail/LinkedContactEntry;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    iput-boolean v4, v0, Lcom/samsung/contacts/detail/LinkedContactEntry;->isEnable:Z

    :goto_1
    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/contacts/detail/LinkedContactEntry;->rawContactId:J

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mLinkedContactEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lcom/samsung/contacts/detail/LinkedContactEntry;->isEnable:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mAdapter:Lcom/samsung/contacts/detail/LinkedContactAdapter;

    invoke-virtual {v1}, Lcom/samsung/contacts/detail/LinkedContactAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private restartLoader(Landroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mShouldRestartLoader:Z

    if-eqz v0, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    iput-boolean v2, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mShouldRestartLoader:Z

    goto :goto_0
.end method


# virtual methods
.method doSplitContactAction(Landroid/net/Uri;JZLjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;-><init>()V

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setContactId(JJ)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {v0, p5}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setShouldDestroyLoader(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SplitContactConfirmationDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSelectedContactUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mShouldRestartLoader:Z

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
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

    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    const-string v3, "raw_contacts2"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/samsung/contacts/detail/LinkedContactFragment;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const v1, 0x7f0300d6

    invoke-virtual {p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mLinkedContactEntryList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/contacts/detail/LinkedContactAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mLinkedContactEntryList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/samsung/contacts/detail/LinkedContactAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mAdapter:Lcom/samsung/contacts/detail/LinkedContactAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mAdapter:Lcom/samsung/contacts/detail/LinkedContactAdapter;

    invoke-virtual {v1, p0}, Lcom/samsung/contacts/detail/LinkedContactAdapter;->setTargetFragment(Lcom/samsung/contacts/detail/LinkedContactFragment;)V

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mShouldRestartLoader:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    return-void
.end method

.method public onJoinCompleted(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/detail/LinkedContactFragment;->restartLoader(Landroid/net/Uri;)V

    return-void
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

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/LinkedContactActivity;

    iput-object p2, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/LinkedContactActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/detail/LinkedContactActivity;->setLinkedContactsCount(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/detail/LinkedContactActivity;->setLinkedContactsCount(I)V

    invoke-direct {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->bindData()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/detail/LinkedContactFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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

.method public onSplitCompleted(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/detail/LinkedContactFragment;->restartLoader(Landroid/net/Uri;)V

    return-void
.end method

.method public onSplitContactConfirmed(JJZ)V
    .locals 8

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v6, Lcom/samsung/contacts/detail/LinkedContactActivity;

    const-string v7, "splitCompleted"

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createSplitContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-eqz p5, :cond_0

    iput-boolean v5, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mShouldRestartLoader:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactFragment;->mAdapter:Lcom/samsung/contacts/detail/LinkedContactAdapter;

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/detail/LinkedContactFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method
