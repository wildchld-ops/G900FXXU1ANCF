.class public Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungAccountChangedReceiver.java"


# static fields
.field public static SAMSUNG_ACCOUNT_NAME:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field private mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

.field mSBrowserBookmarkProviderUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

.field msg:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SamsungAccountChangedReceiver"

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->TAG:Ljava/lang/String;

    const/16 v0, 0x1f40

    sput v0, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->SAMSUNG_ACCOUNT_NAME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->msg:Landroid/os/Message;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mSBrowserBookmarkProviderUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mSBrowserBookmarkProviderUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    new-instance v18, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mSBrowserBookmarkProviderUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "android.intent.action.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->TAG:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "SBrowserSync"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "SAMSUNGACCOUNT_SIGNOUT "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSynchBookMarkValue(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSyncSavedPagesValue(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSyncOpenPagesValue(Z)V

    new-instance v18, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    const/16 v19, 0xbc2

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v18, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    const/16 v19, 0xbbc

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v18, "current_sync"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v18, "sync_status"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_1

    const-string v18, "current_sync"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "sync_bookmarks"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x14

    const-wide/16 v20, -0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->TAG:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "SBrowserSync"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "SAMSUNGACCOUNT_SIGNIN "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSynchBookMarkValue(Z)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSyncSavedPagesValue(Z)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSyncOpenPagesValue(Z)V

    new-instance v18, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    const/16 v19, 0xbc0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v11, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x10

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v18, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;

    const/16 v19, 0xfa5

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterHashMapKeysetIterator()Ljava/util/Iterator;

    move-result-object v9

    const-string v4, ""

    const/4 v15, 0x0

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getBrowserMainActivity()Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v8

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v18

    if-nez v18, :cond_5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string v18, "TAB_ID"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "TAB_URL"

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "TAB_TITLE"

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v15

    if-eqz v15, :cond_4

    const-string v18, "TAB_FAV_ICON"

    new-instance v19, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_4
    const-string v18, "TAB_ACTIVATE"

    const-string v19, "false"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "IS_INCOGNITO"

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v18, "TAB_INDEX"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabIndexById(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v18, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    const/16 v19, 0xbb8

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->TAG:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "SBrowserSync"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Samsung account signin : Exception while inserting tabs to database "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    const/16 v16, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/provider/SamsungAccountChangedReceiver;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    throw v18
.end method
