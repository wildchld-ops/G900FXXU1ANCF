.class public Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
.super Lorg/chromium/base/ChromiumActivity;
.source "SBrowserMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;
    }
.end annotation


# static fields
.field public static final ACTION_INPUT_URL:Ljava/lang/String; = "android.intent.action.doInputURL"

.field public static final ACTION_NEW_WINDOW:Ljava/lang/String; = "android.intent.action.doNewWindow"

.field public static final ACTION_PRINT_INTENT:Ljava/lang/String; = "com.samsung.android.sconnect.PRINT.SBROWSER"

.field public static final ACTION_RESTORETABS:Ljava/lang/String; = "com.sec.android.app.sbrowser.RESTORETABS"

.field public static final ACTION_WINDOW_MANAGER:Ljava/lang/String; = "android.intent.action.doWindowManager"

.field private static final CHOOSE_FILE_REQUEST:I = 0x64

.field private static final DATA_CHARGING:I = 0x8b

.field private static ENABLE_POWER_CONTROL:Z = false

.field private static final FIRST_INSTANCE_INDEX:I = 0x1

.field private static final MDNIE_BROWSER_MODE:I = 0x8

.field private static final MDNIE_UI_MODE:I = 0x0

.field private static final NETWORK_STATE_NONE:I = 0x0

.field public static final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String; = "screen_mode_automatic_setting"

.field private static final SECOND_INSTANCE_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = null

.field private static final TCON_BROWSER_MODE:I = 0x8

.field private static final TCON_UI_MODE:I

.field public static mIsAssitantMenuRegistered:Z

.field private static mIsRefreshRequired:J


# instance fields
.field private fromSconnect:Z

.field private imgUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public mActivityStatus:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

.field public mBrowserInitlRunnable:Ljava/lang/Runnable;

.field private mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

.field private mDecorView:Landroid/view/View;

.field private mHasWindowFocus:Z

.field private mIsFirstLaunch:Z

.field private mIsPaused:Z

.field private mIsPausedDueToTabManagerDestroy:Z

.field private mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mPrintReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestoreTabsReceiver:Landroid/content/BroadcastReceiver;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUi:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

.field private mWebkitSuspended:Z

.field private printerInfo:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->ENABLE_POWER_CONTROL:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsAssitantMenuRegistered:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsRefreshRequired:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/chromium/base/ChromiumActivity;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsPaused:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsPausedDueToTabManagerDestroy:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mAudioManager:Landroid/media/AudioManager;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mWebkitSuspended:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mPowerManager:Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$1;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$2;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mRestoreTabsReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->printerInfo:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->imgUris:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->fromSconnect:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$3;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsFirstLaunch:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mDecorView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mUi:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    new-instance v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBrowserInitlRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnWindowFocusChanged(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->fromSconnect:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->printerInfo:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->imgUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnStart()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnResume()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mHasWindowFocus:Z

    return v0
.end method

.method private createController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v2

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;-><init>(Landroid/content/Context;)V

    :goto_0
    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mUi:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    :cond_0
    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setController(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setUi(Lcom/sec/android/app/sbrowser/common/UI;)V

    return-object v0

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private handleOnCreate(Landroid/os/Bundle;)V
    .locals 7

    const-wide/16 v5, 0x0

    const-string v3, "SBROWSER_VERSION"

    const-string v4, "SBROWSER_VERSION : 1.6.28"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "VerificationLog"

    const-string v4, "onCreate - loadLibrary - begin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->loadLibrary()V

    const-string v3, "VerificationLog"

    const-string v4, "onCreate - loadLibrary - stop "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "VerificationLog"

    const-string v4, "onCreate - Calling  initializeSmalleWindowEnableSettings -Begin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->initializeSmalleWindowEnableSettings(Landroid/content/Context;)V

    const-string v3, "VerificationLog"

    const-string v4, "onCreate - Calling  initializeSmalleWindowEnableSettings -End"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    new-instance v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$16;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$16;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    sget-boolean v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->ENABLE_POWER_CONTROL:Z

    if-eqz v3, :cond_0

    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mPowerManager:Landroid/os/PowerManager;

    :cond_0
    const-string v3, "CscFeature_Web_EnableImage2Play"

    invoke-static {v3}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->imideoEULA()V

    :cond_1
    const-string v3, "VerificationLog"

    const-string v4, "calling controller onCreate -Begin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v3, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "VerificationLog"

    const-string v4, "calling controller onCreate -end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "VerificationLog"

    const-string v4, "onCreate - Calling/Accessing REFRESH_OLD_DATA SharedPref-Begin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "refresh_old_data"

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsRefreshRequired:J

    :try_start_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;->isDataBackupRequired()Z

    move-result v3

    if-nez v3, :cond_2

    sget-wide v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsRefreshRequired:J

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    :cond_2
    sget-object v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    const-string v4, "Refresh Data "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsRefreshRequired:J

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "refresh_old_data"

    sget-wide v5, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsRefreshRequired:J

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;->refreshData(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    const-string v3, "VerificationLog"

    const-string v4, "onCreate - Calling/Accessing REFRESH_OLD_DATA SharedPref-stop"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "VerificationLog"

    const-string v4, "onCreate - end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Data Backup Failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleOnResume()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mWebkitSuspended:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mWebkitSuspended:Z

    :cond_0
    invoke-super {p0}, Lorg/chromium/base/ChromiumActivity;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->registerListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->registerAssistantMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onResume()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsPausedDueToTabManagerDestroy:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsPaused:Z

    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsPausedDueToTabManagerDestroy:Z

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->setDNIeMode(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->setTconMode(I)V

    const-string v0, "VerificationLog"

    const-string v1, "onResume, Executed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleOnStart()V
    .locals 2

    invoke-super {p0}, Lorg/chromium/base/ChromiumActivity;->onStart()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->start(Landroid/content/Intent;)V

    return-void
.end method

.method private handleOnWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onWindowFocusChanged(Z)V

    return-void
.end method

.method private initializeSmalleWindowEnableSettings(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "smallwindow_enabled"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getsSmallWindowSize()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getsSmallWindowSize()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "smallwindow_enabled"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setsSmallWindowSize(Ljava/lang/Boolean;)V

    return-void
.end method

.method private registerPrintReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.sconnect.PRINT.SBROWSER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public IsPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsPaused:Z

    return v0
.end method

.method public captureThumbnail()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->captureThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    const-string v4, "captureThumbnail: cannot recycle bimap"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    move-object v0, v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/chromium/base/ChromiumActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->getContentVideoView()Lorg/chromium/content/browser/ContentVideoView;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->clearUndoIfShown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lorg/chromium/base/ChromiumActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public doPostUiInflateProcess()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnStart()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnResume()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mHasWindowFocus:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    goto :goto_0
.end method

.method public getDecoreView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mDecorView:Landroid/view/View;

    return-object v0
.end method

.method public getImgUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->imgUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMainActivityStatus()Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mActivityStatus:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    return-object v0
.end method

.method public getPrinterInfo()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->printerInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public imideoEULA()V
    .locals 11

    move-object v2, p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "checked_imideo_eula"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v8, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    const-string v9, "Imideo Eula Pop-up"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "layout_inflater"

    invoke-virtual {v2, v8}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v8, 0x7f040048

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0c02cd

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0c02d4

    new-instance v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$11;

    invoke-direct {v10, p0, v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$11;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0c02d5

    new-instance v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$10;

    invoke-direct {v10, p0, v7, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$10;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$9;

    invoke-direct {v9, p0, v7, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$9;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    const v8, 0x7f0a015c

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v8, 0x7f0c02d0

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v4}, Landroid/widget/Button;->getPaintFlags()I

    move-result v8

    or-int/lit8 v8, v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setPaintFlags(I)V

    new-instance v8, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$12;

    invoke-direct {v8, p0, v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$12;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    sget-object v8, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    const-string v9, "already checked Imideo Eula"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public imideoEulaSecondPopup()V
    .locals 11

    const/16 v10, 0x8

    move-object v1, p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "layout_inflater"

    invoke-virtual {v1, v8}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v8, 0x7f040048

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v8, 0x7f0a015a

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0c02d2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    const v8, 0x7f0a015b

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v8, 0x7f0a015c

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0c02d1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0c02d4

    new-instance v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$15;

    invoke-direct {v10, p0, v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$15;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0c02d5

    new-instance v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$14;

    invoke-direct {v10, p0, v6, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$14;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$13;

    invoke-direct {v9, p0, v6, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$13;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public isFromSconnect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->fromSconnect:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onActivityResult(IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Lorg/chromium/base/ChromiumActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "APPLOGS: onActivityResult() - DATA_CHARGING : calling SBrowserMainActivity.this.finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8b
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/chromium/base/ChromiumActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onConfgurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const-string v10, "VerificationLog"

    const-string v11, "onCreate - start"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->CREATED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mActivityStatus:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    new-instance v10, Lcom/sec/android/app/sbrowser/mcafee/AnshinScan;

    invoke-direct {v10, p0}, Lcom/sec/android/app/sbrowser/mcafee/AnshinScan;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v10

    if-nez v10, :cond_0

    const v10, 0x7f0d0008

    invoke-virtual {p0, v10}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/base/ChromiumActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v10, "ChinaNalSecurity"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->checkNetwork(Landroid/content/Context;)I

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "data_charging_Setting"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v10, "data_charging_checkbox"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v6, Landroid/content/Intent;

    const-class v10, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;

    invoke-direct {v6, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v10, 0x8b

    invoke-virtual {p0, v6, v10}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    const-string v10, "intent_extra_target_type"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    if-eqz v4, :cond_2

    :try_start_0
    const-string v10, "0"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    :cond_2
    sget-object v10, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    if-eq v5, v10, :cond_3

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "perf_show bookmark_sfinder"

    const-wide/16 v12, 0x1

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Landroid/content/Intent;

    const-class v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;

    invoke-direct {v6, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "_id"

    invoke-virtual {v6, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_0
    const-string v10, "VerificationLog"

    const-string v11, "SFinder - completed"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "SBROWSER_VERSION"

    const-string v11, "SBROWSER_VERSION : 1.6.28"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->createController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "VerificationLog"

    const-string v11, "onCreate - loadLibrary - begin"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->loadLibrary()V

    const-string v10, "VerificationLog"

    const-string v11, "onCreate - loadLibrary - stop "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "VerificationLog"

    const-string v11, "onCreate - Calling  initializeSmalleWindowEnableSettings -Begin"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->initializeSmalleWindowEnableSettings(Landroid/content/Context;)V

    const-string v10, "VerificationLog"

    const-string v11, "onCreate - Calling  initializeSmalleWindowEnableSettings -End"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    invoke-direct {v10, p0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    new-instance v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$4;

    invoke-direct {v10, p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$4;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    sget-boolean v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->ENABLE_POWER_CONTROL:Z

    if-eqz v10, :cond_4

    const-string v10, "power"

    invoke-virtual {p0, v10}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mPowerManager:Landroid/os/PowerManager;

    :cond_4
    const-string v10, "CscFeature_Web_EnableImage2Play"

    invoke-static {v10}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->imideoEULA()V

    :cond_5
    const-string v10, "VerificationLog"

    const-string v11, "calling controller onCreate -Begin"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v10, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onCreate(Landroid/os/Bundle;)V

    const-string v10, "VerificationLog"

    const-string v11, "calling controller onCreate -end"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "VerificationLog"

    const-string v11, "onCreate - Calling/Accessing REFRESH_OLD_DATA SharedPref-Begin"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10}, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "refresh_old_data"

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    sput-wide v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsRefreshRequired:J

    :try_start_1
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;->isDataBackupRequired()Z

    move-result v10

    if-nez v10, :cond_6

    sget-wide v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsRefreshRequired:J

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    :cond_6
    sget-object v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    const-string v11, "Refresh Data "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x0

    sput-wide v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsRefreshRequired:J

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "refresh_old_data"

    sget-wide v12, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsRefreshRequired:J

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;->refreshData(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_7
    :goto_1
    const-string v10, "VerificationLog"

    const-string v11, "onCreate - Calling/Accessing REFRESH_OLD_DATA SharedPref-stop"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "VerificationLog"

    const-string v11, "onCreate - end"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "com.sec.android.app.sbrowser.RESTORETABS"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mRestoreTabsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v8}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v3

    sget-object v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v3

    sget-object v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: Data Backup Failed : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const/16 v10, 0xa

    invoke-virtual {p0, v10}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->requestWindowFeature(I)Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsFirstLaunch:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->createController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v10, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->createContentViewListAdapter(Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mUi:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v10, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setUi(Lcom/sec/android/app/sbrowser/common/UI;)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mUi:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v11, v10}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setController(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mUi:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setUiOnScreen(Landroid/view/View;)V

    const-string v10, "VerificationLog"

    const-string v11, "test - onCreate controler created"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    goto/16 :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 5

    sget-object v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBrowserMainActivity onDestroy -totalInstance-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.app.sbrowser.RESTORETABS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mRestoreTabsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->DESTROYED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mActivityStatus:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onDestroy()V

    invoke-super {p0}, Lorg/chromium/base/ChromiumActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/chromium/base/ChromiumActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/chromium/base/ChromiumActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onBackPressed()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :sswitch_0
    invoke-super {p0, p1, p2}, Lorg/chromium/base/ChromiumActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Lorg/chromium/base/ChromiumActivity;->onLowMemory()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onLowMemory()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->handleNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onOptionsItemSelected(I)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/chromium/base/ChromiumActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    sget-object v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    const-string v7, "APPLOGS: onPause"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->PAUSED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mActivityStatus:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    invoke-virtual {p0, v10}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->setDNIeMode(I)V

    invoke-virtual {p0, v10}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->setTconMode(I)V

    invoke-super {p0}, Lorg/chromium/base/ChromiumActivity;->onPause()V

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->getContentVideoView()Lorg/chromium/content/browser/ContentVideoView;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v6

    if-ne v6, v9, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->destroyContentVideoView()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getPauseCounterForWebkitTimers()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->setPauseCounterForWebkitTimers(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onPause()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SBrowserMainActivity onPause -totalInstance-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v5, v9, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v3

    sget-object v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SBrowserMainActivity onPause-InstanceID-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v9, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->unRegisterAssistantMenu()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->unregisterListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V

    :cond_3
    iput-boolean v9, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsPaused:Z

    sget-boolean v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->ENABLE_POWER_CONTROL:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mWebkitSuspended:Z

    if-nez v6, :cond_4

    if-ne v5, v9, :cond_8

    iput-boolean v9, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mWebkitSuspended:Z

    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v6, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$5;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$5;->start()V

    :cond_5
    const-string v6, "gsm.sim.browserEvent"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v0, Lcom/android/internal/telephony/cat/CatEventDownload;

    const/16 v6, 0x8

    invoke-direct {v0, v6, v10}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(II)V

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.stk.event"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "STK EVENT"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    return-void

    :cond_7
    if-ne v3, v11, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    goto :goto_0

    :cond_8
    if-le v5, v9, :cond_4

    add-int/lit8 v6, v2, -0x1

    if-nez v6, :cond_4

    iput-boolean v9, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mWebkitSuspended:Z

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/chromium/base/ChromiumActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getPauseCounterForWebkitTimers()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->setPauseCounterForWebkitTimers(I)V

    sget-object v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->RESUMED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mActivityStatus:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "perf_show bookmark_sfinder"

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "perf_show bookmark_sfinder"

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->finish()V

    :cond_0
    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsFirstLaunch:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnResume()V

    :goto_0
    invoke-super {p0}, Lorg/chromium/base/ChromiumActivity;->onResume()V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->registerPrintReceiver()V

    const-string v2, "VerificationLog"

    const-string v3, "onResume, Executed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsFirstLaunch:Z

    const-string v2, "VerificationLog"

    const-string v3, "onResume - first launch"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mWebkitSuspended:Z

    if-eqz v2, :cond_3

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mWebkitSuspended:Z

    :cond_3
    invoke-super {p0}, Lorg/chromium/base/ChromiumActivity;->onResume()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->registerListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->registerAssistantMenu()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onResume()V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsPausedDueToTabManagerDestroy:Z

    if-nez v2, :cond_5

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsPaused:Z

    :cond_5
    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsPausedDueToTabManagerDestroy:Z

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->setDNIeMode(I)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->setTconMode(I)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/chromium/base/ChromiumActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onSearchRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->STARTED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mActivityStatus:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    invoke-super {p0}, Lorg/chromium/base/ChromiumActivity;->onStart()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsFirstLaunch:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnStart()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->start(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->STOPPED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mActivityStatus:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    invoke-super {p0}, Lorg/chromium/base/ChromiumActivity;->onStop()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isSmallWindowApplicable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->processSmallWindowEvents(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/base/ChromiumActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrimMemory(I)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getPauseCounterForWebkitTimers()I

    move-result v1

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsPaused:Z

    if-eqz v3, :cond_1

    if-eq v2, v4, :cond_0

    if-le v2, v4, :cond_1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mWebkitSuspended:Z

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    iget-boolean v3, v3, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->isReaderActive:Z

    if-nez v3, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mWebkitSuspended:Z

    :cond_1
    invoke-super {p0, p1}, Lorg/chromium/base/ChromiumActivity;->onTrimMemory(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v3, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onTrimMemory(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lorg/chromium/base/ChromiumActivity;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mHasWindowFocus:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;->onWindowFocusChanged(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->unRegisterContentVideoViewFocusDelegate()V

    new-instance v0, Lorg/chromium/content/browser/ActivityContentVideoViewDelegate;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ActivityContentVideoViewDelegate;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lorg/chromium/content/browser/ContentVideoView;->registerContentVideoViewFocusDelegate(Lorg/chromium/content/browser/ContentVideoViewContextDelegate;)V

    :cond_1
    return-void
.end method

.method public registerAssistantMenu()V
    .locals 6

    const/4 v5, 0x1

    sget-boolean v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsAssitantMenuRegistered:Z

    if-nez v3, :cond_0

    :try_start_0
    const-string v3, "accessibility"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ActivityName"

    const-string v4, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "IconName"

    const-string v4, "Enter URL;Window manager;New window;"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "register"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.doInputURL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.doWindowManager"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.doNewWindow"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v5, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsAssitantMenuRegistered:Z

    :cond_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public setDNIeMode(I)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$7;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$7;->start()V

    return-void
.end method

.method public setFromSconnect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->fromSconnect:Z

    return-void
.end method

.method public setHolderToMatchWindow(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->setHolderToMatchParentWindow(Z)V

    return-void
.end method

.method public setPausedStateManually()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsPausedDueToTabManagerDestroy:Z

    return-void
.end method

.method public setTconMode(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$8;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;I)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$8;->start()V

    :cond_1
    return-void
.end method

.method public setmBaseLayout(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mDecorView:Landroid/view/View;

    return-void
.end method

.method public showAlertTag(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Alert"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$6;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public startFileUploadDialog(Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, p2, v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public unRegisterAssistantMenu()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsAssitantMenuRegistered:Z

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ActivityName"

    const-string v3, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "register"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsAssitantMenuRegistered:Z

    :cond_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method
