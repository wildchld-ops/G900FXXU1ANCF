.class public Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "AccountPreferencesController.java"


# static fields
.field private static final TABLE_SYNC_STATE:Ljava/lang/String; = "SYNC_STATE"


# instance fields
.field private LAST_SYNCED_ON:Ljava/lang/String;

.field private SYNCING:Ljava/lang/String;

.field private SYNC_DISABLED:Ljava/lang/String;

.field private SYNC_TURNED_OFF:Ljava/lang/String;

.field SyncInternetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogFragment:Lcom/sec/android/app/sbrowser/preferences/SyncWithPCDialogFragment;

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;

.field private mPc:Landroid/preference/PreferenceCategory;

.field private mSBrowserContentProviderUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

.field samsungAccount:Ljava/lang/String;

.field private sharedprefs:Landroid/content/SharedPreferences;

.field private syncInternetdata:Landroid/preference/PreferenceCategory;

.field private syncWithPCPreference:Landroid/preference/Preference;

.field private synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

.field private synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

.field private synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

.field private synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

.field timeStampList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNCING:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->LAST_SYNCED_ON:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNC_TURNED_OFF:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNC_DISABLED:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SyncInternetList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->samsungAccount:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;

    return-void
.end method

.method private DisableSyncInternet()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController$3;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    return-void
.end method

.method private InitSyncInternetList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SyncInternetList:Ljava/util/ArrayList;

    const-string v1, "sync_internet_data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SyncInternetList:Ljava/util/ArrayList;

    const-string v1, "sync_bookmarks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SyncInternetList:Ljava/util/ArrayList;

    const-string v1, "sync_saved_pages"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SyncInternetList:Ljava/util/ArrayList;

    const-string v1, "sync_open_pages"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private cancelSync()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "com.sec.android.app.sbrowser"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method private getDate(Ljava/lang/Long;)Ljava/lang/String;
    .locals 8

    :try_start_0
    const-string v2, ""

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isAllUnchecked(I)Z
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getSamsungAccount()Landroid/accounts/Account;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_0

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    :cond_0
    return-object v0
.end method

.method public modelPropertyChangedd(ILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "Accounts"

    const-string v1, "SBROWSER_SYNC_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateInternetSyncTime(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateOpenPagesSyncTime(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateBookmarkSyncTime(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateSavePagesSyncTime(Z)V

    goto :goto_0

    :pswitch_1
    const-string v0, "Accounts"

    const-string v1, "SBROWSER_BOOKMARK_SYNC_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateOpenPagesSyncTime(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->updateSyncImageVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNCING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "Accounts"

    const-string v1, "SBROWSER_TAB_SYNC_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->updateSyncImageVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNCING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Accounts"

    const-string v1, "SBROWSER_SAVED_PAGES_SYNC_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateOpenPagesSyncTime(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateBookmarkSyncTime(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->updateSyncImageVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNCING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "Accounts"

    const-string v1, "SBROWSER_BOOKMARK_SYNC_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->updateSyncImageVisibility(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNCING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateBookmarkSyncTime(Z)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "Accounts"

    const-string v1, "SBROWSER_TAB_SYNC_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->updateSyncImageVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNCING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateOpenPagesSyncTime(Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Accounts"

    const-string v1, "SBROWSER_SAVED_PAGES_SYNC_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->updateSyncImageVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateSavePagesSyncTime(Z)V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "Accounts"

    const-string v1, "SBROWSER_SYNC_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->updateSyncImageVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->updateSyncImageVisibility(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->updateSyncImageVisibility(Z)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateBookmarkSyncTime(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateOpenPagesSyncTime(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateSavePagesSyncTime(Z)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateInternetSyncTime(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f0c02f5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;->isXLarge()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0251

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v3, "account_category"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->mPc:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v3, "sync_internet_data_category"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->syncInternetdata:Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsSettingAccountSyncEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->SAMSUNG_ACCOUNT_NAME:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->samsungAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->samsungAccount:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->mPc:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->samsungAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNCING:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c02f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->LAST_SYNCED_ON:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNC_TURNED_OFF:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNC_DISABLED:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v3, "sync_internet_data"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v3, "sync_bookmarks"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v3, "sync_saved_pages"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v3, "sync_open_pages"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->mSBrowserContentProviderUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const-string v3, "current_sync"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isSyncWithPCPreferenceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v2, "SyncWithPC"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    const v2, 0x7f0c02df

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    const v2, 0x7f0c0321

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    const v2, 0x7f040079

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->syncInternetdata:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->InitSyncInternetList()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const/16 v7, 0xbbf

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sync_internet_data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    :goto_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateInternetSyncTime(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateBookmarkSyncTime(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateOpenPagesSyncTime(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateSavePagesSyncTime(Z)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SyncInternetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, -0x1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_2
    return v9

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v0, 0x0

    :goto_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "SYNC_VALUE"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v5, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const/16 v7, 0xbc1

    invoke-direct {v5, v6, v7, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateBookmarkSyncTime(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->isAllUnchecked(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->DisableSyncInternet()V

    :cond_7
    :goto_4
    const-string v5, "SYNC_VALUE"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "SYNC_KEY"

    const-string v6, "sync_bookmarks"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6, v7, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->cancelSync()V

    goto/16 :goto_2

    :cond_9
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateSavePagesSyncTime(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->isAllUnchecked(I)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->DisableSyncInternet()V

    :cond_a
    :goto_5
    const-string v5, "SYNC_VALUE"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "SYNC_KEY"

    const-string v6, "sync_saved_pages"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6, v7, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->cancelSync()V

    goto/16 :goto_2

    :cond_b
    const/4 v0, 0x1

    goto :goto_5

    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateOpenPagesSyncTime(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->isAllUnchecked(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->DisableSyncInternet()V

    :cond_c
    :goto_6
    const-string v5, "SYNC_VALUE"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "SYNC_KEY"

    const-string v6, "sync_open_pages"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6, v7, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_d
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->cancelSync()V

    goto/16 :goto_2

    :cond_e
    const/4 v0, 0x1

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncWithPC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/SyncWithPCDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/preferences/SyncWithPCDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->mDialogFragment:Lcom/sec/android/app/sbrowser/preferences/SyncWithPCDialogFragment;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->mDialogFragment:Lcom/sec/android/app/sbrowser/preferences/SyncWithPCDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/preferences/SyncWithPCDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onResume()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSyncInternetDataValue()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;->onResume()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateInternetSyncTime(Z)V

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateBookmarkSyncTime(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateSavePagesSyncTime(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->updateOpenPagesSyncTime(Z)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onStop()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;->onStop()V

    return-void
.end method

.method public updateBookmarkSyncTime(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    const-string v2, "current_sync"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accounts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBookmarkSyncTime()currentsync ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "synchBookMarksCompleted ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNCING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNC_TURNED_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchBookMarksPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNC_DISABLED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateInternetSyncTime(Z)V
    .locals 8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    const-string v4, "current_sync"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNCING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->mSBrowserContentProviderUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    const/16 v4, 0x1773

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getTimeStamp(I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->LAST_SYNCED_ON:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->getDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNC_TURNED_OFF:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchInternetDataPreferences:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNC_DISABLED:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateOpenPagesSyncTime(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    const-string v2, "current_sync"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accounts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOpenPagesSyncTime()currentsync ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "synchOpenPagesCompleted ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNCING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNC_TURNED_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchOpenPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNC_DISABLED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateSavePagesSyncTime(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    const-string v2, "current_sync"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accounts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSavePagesSyncTime()currentsync ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "updateSavePagesSyncTime ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNCING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNC_TURNED_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->synchSavedPagesPreferences:Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->SYNC_DISABLED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
