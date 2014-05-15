.class public Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Landroid/app/IActivityController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;
    }
.end annotation


# static fields
.field static final HEADER_TYPE_CATEGORY:I = 0x0

.field static final HEADER_TYPE_CHECKBOX:I = 0x7

.field private static final HEADER_TYPE_COUNT:I = 0x8

.field static final HEADER_TYPE_NORMAL:I = 0x1

.field static final HEADER_TYPE_NORMAL_CHECKBOX:I = 0x4

.field static final HEADER_TYPE_SWITCH:I = 0x2

.field static final HEADER_TYPE_TITLE:I = 0x5

.field public static final extractModeIndex:I = 0x9

.field public static final headerIndex:I = 0x1

.field private static mInflater:Landroid/view/LayoutInflater;

.field public static mSelectedId:I

.field private static mSharedPreferences:Landroid/content/SharedPreferences;

.field public static samsungAccount:Ljava/lang/String;

.field public static samsungAccountSignedUp:Z


# instance fields
.field public checkLoggingState:Z

.field public isSignInDialogVisible:Z

.field private mActivityContext:Landroid/preference/PreferenceActivity;

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListActivityAdapter:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;

.field private mflag:Z

.field public signInDialog:Landroid/app/Dialog;

.field public signup:Landroid/preference/PreferenceActivity$Header;

.field public st:Lcom/sec/android/app/sbrowser/preferences/SetHomePagePreference;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->checkLoggingState:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signInDialog:Landroid/app/Dialog;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->isSignInDialogVisible:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;

    sget v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->SAMSUNG_ACCOUNT_NAME:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccount:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccountSignedUp:Z

    return-void
.end method

.method static synthetic access$100()Landroid/view/LayoutInflater;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$102(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;)Landroid/preference/PreferenceActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    return-object v0
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkStatus()Landroid/preference/PreferenceActivity$Header;
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->checkLoggingState:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->isLoggedInOrNot()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signup:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signup:Landroid/preference/PreferenceActivity$Header;

    const-class v1, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signup:Landroid/preference/PreferenceActivity$Header;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->isLoggedInOrNot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mHeaders:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signup:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public getContext()Landroid/preference/PreferenceActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method protected getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getListAdapter()Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mListActivityAdapter:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mHeaders:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mListActivityAdapter:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mListActivityAdapter:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isLoggedInOrNot()Z
    .locals 2

    sget v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->SAMSUNG_ACCOUNT_NAME:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccount:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccountSignedUp:Z

    sget-boolean v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccountSignedUp:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;Landroid/preference/PreferenceActivity;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/preference/PreferenceActivity;",
            ")V"
        }
    .end annotation

    const/4 v11, 0x4

    const/4 v12, 0x1

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;->setSharedPreferenceValueFromNative()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;->isXLarge()Z

    move-result v5

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_8

    const v9, 0x7f060019

    :goto_0
    invoke-virtual {v10, v9, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v9}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsExtractModeEnabled()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    const-string v9, "current_url"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v9, "chrome://debug/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    const v10, 0x7f0c0142

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    const-class v9, Lcom/sec/android/app/sbrowser/preferences/DebugPreferences;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v9}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v9}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v9}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v9}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    const-string v0, "default"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->getContext()Landroid/preference/PreferenceActivity;

    move-result-object v9

    const-string v10, "default"

    const-string v11, ""

    invoke-static {v9, v10, v11, v8}, Landroid/os/PersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    if-nez v2, :cond_9

    :cond_5
    invoke-interface {p1, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    :goto_1
    const-string v9, "CscFeature_Web_DisableBookmarkSync"

    invoke-static {v9}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v12, :cond_7

    invoke-interface {p1, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_7
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mHeaders:Ljava/util/List;

    return-void

    :cond_8
    const v9, 0x7f060016

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsSettingAccountSyncEnabled()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    sget-boolean v9, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccountSignedUp:Z

    if-eqz v9, :cond_a

    sget-object v9, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccount:Ljava/lang/String;

    if-eqz v9, :cond_a

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    const-class v9, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto :goto_1

    :cond_a
    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    const-class v9, Lcom/sec/android/app/sbrowser/preferences/AddAccountPreference;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v2, "current_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/HomePagePreference;->setCurrentPage(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/SetHomePagePreference;->setCurrentPage(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/DevToolsPreferences;->setCurrentPage(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;->useFullscreen(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mflag:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;->useFullscreen(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;->isXLarge()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mHeaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mHeaders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mHeaders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    iget-object v3, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v2, v0

    :cond_2
    if-eqz v2, :cond_4

    iget-object v3, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-class v4, Lcom/sec/android/app/sbrowser/preferences/AddAccountPreference;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mHeaders:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v3, v2

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string v0, "default"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->getContext()Landroid/preference/PreferenceActivity;

    move-result-object v4

    const-string v5, "default"

    const-string v6, ""

    invoke-static {v4, v5, v6, v3}, Landroid/os/PersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    :cond_1
    const/4 v4, 0x1

    if-ne v4, p2, :cond_2

    sget-boolean v4, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccountSignedUp:Z

    if-nez v4, :cond_2

    sget-object v4, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccount:Ljava/lang/String;

    if-nez v4, :cond_2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signup:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->showDialog()V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->finish()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->isLoggedInOrNot()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mflag:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;->useFullscreen(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;->useFullscreen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mflag:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mflag:Z

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mHeaders:Ljava/util/List;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mHeaders:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectedHeaderID(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mListActivityAdapter:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mListActivityAdapter:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mListActivityAdapter:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->setSelectedId(I)V

    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;

    const v3, 0x7f0d0019

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0032

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$3;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c007c

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signInDialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->isSignInDialogVisible:Z

    return-void
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
