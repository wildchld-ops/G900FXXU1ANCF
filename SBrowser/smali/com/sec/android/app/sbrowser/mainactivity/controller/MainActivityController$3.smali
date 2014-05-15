.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->initSyncObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 14

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string v10, "com.osp.app.signin"

    invoke-virtual {v1, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    array-length v10, v10

    if-eqz v10, :cond_0

    const-string v10, "com.osp.app.signin"

    invoke-virtual {v1, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v0, v10, v11

    const/4 v3, 0x1

    :cond_0
    const/4 v10, 0x1

    if-ne p1, v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getAndSetSyncValue(Landroid/accounts/Account;)Z
    invoke-static {v10, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/accounts/Account;)Z

    :cond_1
    if-eqz v3, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v10

    const-string v11, "sync_bookmarks"

    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->QueryOfInternetSyncDb(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v10

    const-string v11, "sync_open_pages"

    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->QueryOfInternetSyncDb(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v10

    const-string v11, "sync_saved_pages"

    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->QueryOfInternetSyncDb(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const-string v10, "com.sec.android.app.sbrowser"

    invoke-static {v0, v10}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->tabSyncing:Z
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    const/4 v11, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->tabSyncing:Z
    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$202(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Z)Z

    :cond_2
    :goto_0
    const-string v10, "com.sec.android.app.sbrowser"

    invoke-static {v0, v10}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncing:Z
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    const/4 v11, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncing:Z
    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$302(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Z)Z

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v11

    const-string v12, "current_sync"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrefs:Landroid/content/SharedPreferences;

    :cond_3
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v10, "sync_status"

    const/4 v11, 0x1

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    const-string v10, "current_sync"

    const-string v11, "sync_open_pages"

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SBrowserSync"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "initSyncObserver : SBROWSER_SYNC_STARTED "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v11

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$502(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    :cond_5
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x18

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    :goto_2
    return-void

    :cond_7
    const-string v10, "com.sec.android.app.sbrowser"

    invoke-static {v0, v10}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "com.sec.android.app.sbrowser"

    invoke-static {v0, v10}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->tabSyncing:Z
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    const/4 v11, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->tabSyncing:Z
    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$202(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Z)Z

    new-instance v10, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->startTabSyncTimer()V

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x1

    if-ne v7, v10, :cond_9

    const-string v10, "current_sync"

    const-string v11, "sync_bookmarks"

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    :cond_9
    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    const-string v10, "current_sync"

    const-string v11, "sync_saved_pages"

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    :cond_a
    const-string v10, "com.sec.android.app.sbrowser"

    invoke-static {v0, v10}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncing:Z
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    const/4 v11, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncing:Z
    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$302(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Z)Z

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v11

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$502(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SBrowserSync"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initSyncObserver : SBROWSER_SYNC_COMPLETED : timeStamp : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v11

    const-string v12, "current_sync"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrefs:Landroid/content/SharedPreferences;

    :cond_c
    sget v10, Lcom/sec/android/app/sbrowser/provider/SBrowserConstants;->iDownSyncCount:I

    if-eqz v10, :cond_d

    new-instance v10, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iget-object v11, v11, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v12, "current_sync"

    const-string v13, ""

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/sec/android/app/sbrowser/provider/SBrowserConstants;->iDownSyncCount:I

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->updateDownSyncCount(Ljava/lang/String;I)V

    const/4 v10, 0x0

    sput v10, Lcom/sec/android/app/sbrowser/provider/SBrowserConstants;->iDownSyncCount:I

    :cond_d
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v10, "sync_status"

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v10, "current_sync"

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v10, "internet_timestamp"

    invoke-interface {v2, v10, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x17

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method
