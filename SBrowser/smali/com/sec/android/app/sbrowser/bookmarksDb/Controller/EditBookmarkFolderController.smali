.class public Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;
.super Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;
.source "EditBookmarkFolderController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;


# instance fields
.field private mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

.field private mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

.field mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

.field private mDoneButtonSelected:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mDoneButtonSelected:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private Init(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->registerBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mDoneButtonSelected:Z

    return p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public editBookmarkFolder(Ljava/lang/String;)V
    .locals 9

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mDoneButtonSelected:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mDoneButtonSelected:Z

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v4

    sget-object v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isOperatorBookmark()Z

    move-result v7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getOrderPositon()I

    move-result v8

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->editBookmark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;ZI)V

    goto :goto_0
.end method

.method public finishActivity()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->unregisterBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public getActivityStatus()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRootNode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onChange(ILjava/lang/Object;)V
    .locals 9

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast p2, Ljava/util/ArrayList;

    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->finish()V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_2
    check-cast p2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object v1, p2

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mDoneButtonSelected:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    move-object v4, p2

    check-cast v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->getBookmarkObjectForID(Ljava/lang/Long;)V

    goto/16 :goto_0

    :pswitch_4
    move-object v3, p2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    const/4 v2, 0x2

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->getBookmarkObjectForID(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_5
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->getBookmarkObjectForID(Ljava/lang/Long;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->Init(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "edit_bookmarkfolder_selected"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->setTitle(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->BACKGROUND:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
