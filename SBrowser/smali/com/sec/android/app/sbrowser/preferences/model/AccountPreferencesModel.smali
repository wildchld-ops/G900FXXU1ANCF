.class public Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;
.super Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;
.source "AccountPreferencesModel.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;
    }
.end annotation


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;

.field private mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;-><init>(Landroid/preference/PreferenceActivity;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;

    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->registerSyncStateObserver(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V

    return-void
.end method


# virtual methods
.method public getSettingsPreferenceSyncDetails()I
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSynchBookMarkValue()Z

    move-result v0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSyncInternetDataValue()Z

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSyncOpenPagesValue()Z

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSyncSavedPagesValue()Z

    move-result v3

    if-eqz v0, :cond_0

    sget-object v5, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->bookmarks:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->value:I
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->access$000(Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;)I

    move-result v5

    or-int/2addr v4, v5

    :cond_0
    if-eqz v1, :cond_1

    sget-object v5, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->Internet_data:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->value:I
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->access$000(Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;)I

    move-result v5

    or-int/2addr v4, v5

    :cond_1
    if-eqz v2, :cond_2

    sget-object v5, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->open_pages:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->value:I
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->access$000(Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;)I

    move-result v5

    or-int/2addr v4, v5

    :cond_2
    if-eqz v3, :cond_3

    sget-object v5, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->saved_pages:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->value:I
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->access$000(Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;)I

    move-result v5

    or-int/2addr v4, v5

    :cond_3
    return v4
.end method

.method public modelPropertyChanged(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->modelPropertyChangedd(ILjava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->registerSyncStateObserver(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->unregisterSyncStateObserver(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V

    return-void
.end method
