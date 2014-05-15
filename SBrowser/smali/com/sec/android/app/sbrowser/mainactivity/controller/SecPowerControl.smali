.class public Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;
.super Landroid/app/Activity;
.source "SecPowerControl.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$Listener;
    }
.end annotation


# static fields
.field public static final COLORIZE_PERF:Ljava/lang/String; = "ColorizeButton"

.field public static final COLORIZE_PREFERENCE_NAME:Ljava/lang/String; = "com.android.browser"

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field public static final SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"

.field private static final SEEK_BAR_RANGE:I = 0x2710

#the value of this static final field might be set in the static constructor
.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = false

.field private static final mModeCount:I = 0x4

.field static mScreenLock:Z

.field private static mTablet:Z

.field static strPowerSavingMode:Ljava/lang/String;

.field static strTempPowerSavingMode:Ljava/lang/String;


# instance fields
.field auto_detail_custom_layout:Landroid/widget/LinearLayout;

.field auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

.field private beforeBrightness:I

.field bright_seekbar_layout:Landroid/widget/LinearLayout;

.field private colorizeButton:[Landroid/widget/RadioButton;

.field private mActivity:Landroid/app/Activity;

.field private mActivityPaused:Z

.field private mAutoBright:Z

.field private mAutoBrightness:Landroid/widget/CompoundButton;

.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutoBrightnessFake:Landroid/widget/ImageButton;

.field private mAutoBrightnessFakeLayout:Landroid/widget/LinearLayout;

.field private mAutoBrightnessListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mAutomaticAvailable:Z

.field mBright:Landroid/view/View;

.field private mBrightnessLayout:Landroid/widget/LinearLayout;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mBrightnessRelativeLayout:Landroid/widget/RelativeLayout;

.field private mBrightnessText:Landroid/widget/TextView;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mContext:Landroid/content/Context;

.field private mCurBrightness:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mMaxBrightness:I

.field private mOldAutoDetailLevel:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mOldBrightness_DB:I

.field private mPowerSavingLayout:Landroid/widget/LinearLayout;

.field private mPowserControlPopup:Landroid/app/AlertDialog;

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

.field private mTracking:Z

.field private mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

.field private mTwSeekBarLayout:Landroid/widget/LinearLayout;

.field private mTwSeekBarText:Landroid/widget/TextView;

.field public mUseBrightness:Z

.field public mUseSystemBrightness:Z

.field private mautobrightnessChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

.field private mbrightProgressBar:Landroid/widget/SeekBar;

.field private mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mbrightness_min:I

.field private relativelayout:[Landroid/widget/RelativeLayout;

.field supportAutoBrightnessDetail:Z

.field private systemAutoBrightness:Z

.field private systemAutoBrightnessMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTablet:Z

    const-string v0, "colorize0"

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    const-string v0, "colorize0"

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->strTempPowerSavingMode:Ljava/lang/String;

    sput-boolean v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mScreenLock:Z

    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightness:Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessFake:Landroid/widget/ImageButton;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutomaticAvailable:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivityPaused:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mLinearLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessFakeLayout:Landroid/widget/LinearLayout;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->systemAutoBrightness:Z

    iput v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->systemAutoBrightnessMode:I

    const/16 v0, 0x6e

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->beforeBrightness:I

    new-array v0, v3, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    new-array v0, v3, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->relativelayout:[Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/BrowserFeature;->useBrightness()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseBrightness:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mPowerSavingLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/BrowserFeature;->useSystemBrightness()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseSystemBrightness:Z

    const/16 v0, 0xff

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mMaxBrightness:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mScreenBrightnessDim:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCurBrightness:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->supportAutoBrightnessDetail:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$2;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$3;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$9;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mautobrightnessChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightness:Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessFake:Landroid/widget/ImageButton;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutomaticAvailable:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivityPaused:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mLinearLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessFakeLayout:Landroid/widget/LinearLayout;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->systemAutoBrightness:Z

    iput v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->systemAutoBrightnessMode:I

    const/16 v1, 0x6e

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->beforeBrightness:I

    new-array v1, v4, [Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    new-array v1, v4, [Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->relativelayout:[Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/BrowserFeature;->useBrightness()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseBrightness:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mPowerSavingLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/BrowserFeature;->useSystemBrightness()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseSystemBrightness:Z

    const/16 v1, 0xff

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mMaxBrightness:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mScreenBrightnessDim:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCurBrightness:I

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->supportAutoBrightnessDetail:Z

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$2;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$3;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$9;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mautobrightnessChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseSystemBrightness:Z

    if-eqz v1, :cond_0

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mScreenBrightnessDim:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightness_min:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->isSupportAutoBrightnessDetail()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->supportAutoBrightnessDetail:Z

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setBrightness(IZ)V

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTablet:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->restoreOldState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivityPaused:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBarText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessFake:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->onAutoBrightnessDetailChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setMode(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mMaxBrightness:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    return p1
.end method

.method private colorizeFocusSetting()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    const-string v1, "colorize0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    const-string v1, "colorize1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    const-string v1, "colorize2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    const-string v1, "colorize3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->colorizeButton:[Landroid/widget/RadioButton;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private getBrightness()I
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getBrightnessMode(I)I

    move-result v1

    const/4 v0, 0x0

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCurBrightness:I

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    :goto_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mScreenBrightnessDim:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mScreenBrightnessDim:I

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    div-float v0, v2, v3

    const v2, 0x461c4000

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    :cond_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 3

    move v0, p1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getColorizeSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    const-string v1, "com.android.browser"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getSettingBrightness()V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->systemAutoBrightnessMode:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->beforeBrightness:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->systemAutoBrightnessMode:I

    if-ne v1, v4, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->systemAutoBrightness:Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iput v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->systemAutoBrightnessMode:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->systemAutoBrightnessMode:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->systemAutoBrightness:Z

    goto :goto_1
.end method

.method private hideFakeCheckBox()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v1, 0x7f0a0234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessFakeLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessFakeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private onAutoBrightnessDetailChanged()V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_brightness_detail"

    const/16 v5, 0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v2, v3, 0x14

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    move v1, v2

    const-string v0, ""

    add-int/lit8 v3, v1, -0x5

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onBrightnessModeChanged()V
    .locals 6

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->bright_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->bright_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private restoreOldState()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setMode(I)V

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mOldBrightness:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setBrightness(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mOldBrightness_DB:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mOldAutoDetailLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mRestoredOldState:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCurBrightness:I

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 5

    iget v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mScreenBrightnessDim:I

    rsub-int v1, v3, 0xff

    mul-int v3, p1, v1

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    const v4, 0x461c4000

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mScreenBrightnessDim:I

    add-int p1, v3, v4

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    :cond_2
    if-eqz p2, :cond_3

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCurBrightness:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCurBrightness:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setColours(I)V
    .locals 0

    return-void
.end method

.method private setMode(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPowerBrightness(I)V
    .locals 2

    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showFakeCheckBox()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessFake:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$11;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v1, 0x7f0a0234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessFakeLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessFakeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public applyAutoBrightnessSetting()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-ne v0, v4, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    goto :goto_1
.end method

.method public getAutoBright()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    return v0
.end method

.method public getColorizeButton(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getColorizeSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "colorize0"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowserControlPopup()Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public isDualFolderType(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.folder_type"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.dual_lcd"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFolderOpen(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v2, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->isFolderOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1, v2}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mMaxBrightness:I

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mOldAutomatic:I

    if-ne v3, v1, :cond_2

    sget-boolean v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_5

    :cond_2
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setBrightness(IZ)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDrawPowerCtrl()V
    .locals 15

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    const-string v12, "sensor"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    const/4 v11, -0x1

    invoke-virtual {v6, v11}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Sensor;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    const/4 v11, 0x5

    if-ne v7, v11, :cond_6

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutomaticAvailable:Z

    :cond_0
    const/4 v8, 0x0

    const v11, 0x7f04008a

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0238

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SeekBar;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0233

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0235

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessFake:Landroid/widget/ImageButton;

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseBrightness:Z

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0238

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SeekBar;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0233

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutomaticAvailable:Z

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0232

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0239

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    iget-boolean v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    invoke-virtual {v11, v12}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setAutoBrightness(Z)V

    :cond_1
    :goto_1
    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseBrightness:Z

    if-eqz v11, :cond_c

    :cond_2
    :goto_2
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v11, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v12, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$5;

    invoke-direct {v12, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$5;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutomaticAvailable:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v11, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    :cond_3
    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseSystemBrightness:Z

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/16 v12, 0x2710

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getBrightness()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    if-eqz v11, :cond_4

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutomaticAvailable:Z

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_4
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->isDualFolderType(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->isFolderOpen(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setEnabled(Z)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->bright_seekbar_layout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->showFakeCheckBox()V

    :cond_5
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getBrightness()I

    move-result v10

    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v11, 0x7f0c01bc

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0c003d

    new-instance v12, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;

    invoke-direct {v12, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V

    invoke-virtual {v3, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0c0155

    new-instance v12, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;

    invoke-direct {v12, p0, v10, v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;IZ)V

    invoke-virtual {v3, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$8;

    invoke-direct {v11, p0, v10, v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$8;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;IZ)V

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseSystemBrightness:Z

    if-eqz v11, :cond_b

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->supportAutoBrightnessDetail:Z

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0233

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0238

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SeekBar;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0236

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->bright_seekbar_layout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0239

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a023a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBarText:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getBrightnessMode(I)I

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->bright_seekbar_layout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a023b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "auto_brightness_detail"

    const/16 v13, 0x64

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mOldAutoDetailLevel:I

    iget v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mOldAutoDetailLevel:I

    div-int/lit8 v11, v11, 0x14

    add-int/lit8 v0, v11, -0x5

    const-string v4, ""

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setQuickPanleInstance(Z)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v11, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mautobrightnessChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setRange(I)V

    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setSplitMax(I)V

    add-int/lit8 v11, v0, 0x5

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setSplitValue(I)V

    if-lez v0, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutomaticAvailable:Z

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0232

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0239

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    goto/16 :goto_1

    :cond_8
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->bright_seekbar_layout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_a
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0238

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SeekBar;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0233

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    goto :goto_5

    :cond_b
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0232

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0236

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBright:Landroid/view/View;

    const v12, 0x7f0a0239

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseSystemBrightness:Z

    if-eqz v11, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->applyAutoBrightnessSetting()V

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    :goto_6
    iput v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mOldAutomatic:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getBrightness()I

    move-result v11

    iput v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mOldBrightness:I

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness"

    const/16 v13, 0x64

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mOldBrightness_DB:I

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mRestoredOldState:Z

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness"

    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness_mode"

    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "auto_brightness_detail"

    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v11, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;

    invoke-direct {v11, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    goto/16 :goto_2

    :cond_d
    const/4 v11, 0x0

    goto :goto_6
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseSystemBrightness:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTracking:Z

    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTracking:Z

    return-void
.end method

.method public resetForBrightnessSetting()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getBrightness()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getAutoBrightness()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getSettingBrightness()V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, -0x4080

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setBrightness(I)V

    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setAutoBrightness(Z)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setWindowBrightness(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public setColorizeButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getColorizeSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setColoursDefault()V
    .locals 0

    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivityPaused:Z

    return-void
.end method

.method public setPowerControlPopupForDualFolderClosed()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->bright_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->showFakeCheckBox()V

    :cond_0
    return-void
.end method

.method public setPowerControlPopupForDualFolderOpened()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->bright_seekbar_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mautobrightnessChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->hideFakeCheckBox()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setPowserControlPopup(Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mPowserControlPopup:Landroid/app/AlertDialog;

    return-void
.end method

.method public setSettingBrightness()V
    .locals 4

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->systemAutoBrightness:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/high16 v1, -0x4080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public setSplitMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setRange(I)V

    return-void
.end method

.method public setSplitValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    return-void
.end method

.method public setWindowBrightness(I)V
    .locals 4

    const/16 v3, 0x28

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-gtz p1, :cond_1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightness_min:I

    if-ne v2, v3, :cond_0

    const v1, 0x3e20c49c

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setBrightness(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    const v1, 0x3da3d70a

    goto :goto_0

    :cond_1
    const/16 v2, 0x25

    if-ne p1, v2, :cond_2

    const v1, 0x3edeb852

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    const v1, 0x3ee66666

    goto :goto_0

    :cond_3
    const/16 v2, 0x32

    if-ne p1, v2, :cond_4

    const v1, 0x3f11eb85

    goto :goto_0

    :cond_4
    const/16 v2, 0x3c

    if-ne p1, v2, :cond_5

    const v1, 0x3f34bc6a

    goto :goto_0

    :cond_5
    const/16 v2, 0x58

    if-lt p1, v2, :cond_6

    const v1, 0x3f7b22d1

    goto :goto_0

    :cond_6
    div-int/lit8 v2, p1, 0xa

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    const v3, 0x3dcccccd

    mul-float v1, v2, v3

    goto :goto_0
.end method

.method public updatePowerSavingMode()V
    .locals 0

    return-void
.end method
