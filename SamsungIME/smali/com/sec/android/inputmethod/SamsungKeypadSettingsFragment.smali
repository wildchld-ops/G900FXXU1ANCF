.class public Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SamsungKeypadSettingsFragment.java"


# static fields
.field private static final DELAY_LONG:Ljava/lang/String; = "0.5"

.field private static final DELAY_LONG_ARABIC:Ljava/lang/String; = "\u0660.\u0665"

.field private static final DELAY_MEDIUM:Ljava/lang/String; = "0.3"

.field private static final DELAY_MEDIUM_ARABIC:Ljava/lang/String; = "\u0660.\u0663"

.field private static final DELAY_SHORT:Ljava/lang/String; = "0.2"

.field private static final DELAY_SHORT_ARABIC:Ljava/lang/String; = "\u0660.\u0662"

.field private static final applying2014:Z = true

.field private static delayTextForSummary:[Ljava/lang/CharSequence;


# instance fields
.field protected IS_FHD:Z

.field protected IS_WVGA:Z

.field public PointingPopup:Z

.field public SwipePopup:Z

.field public TracePopup:Z

.field public TracePopup2:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field mHandler:Landroid/os/Handler;

.field private mHelpAppPackageVersion:I

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsCheckDontShowPinchZoomGuide:Z

.field private mIsCheckDontShowPredictiveTextGuide:Z

.field private mIsDaMode:Z

.field private mIsEnablePredictiveTextGuide:Z

.field private mIsKeypadGuideInHelpApp:Z

.field private mIsKorMode:Z

.field private mIsODDcsc:Z

.field private mIsSwiftKeySDK:Z

.field private mLangCode:I

.field private mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mT9Toast:Landroid/widget/Toast;

.field protected mWindowHeight:I

.field protected mWindowWidth:I

.field private mXt9Version:I

.field private misTablet:Z

.field private misUseSplitFloatingKeyboard:Z

.field onAutoReplacementChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onAutoReplacementClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onKeyboardSwipeClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onKorInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onLanguageItemClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onNumberSymbolInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onShortCutPhraseClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onSoundChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onTurkishInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onUseHwrClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUseKorKeypadClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUsePointingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUseSweepingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUseTraceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUseXt9ClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onVibChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field pointingDialog:Landroid/app/AlertDialog$Builder;

.field salesCode:Ljava/lang/String;

.field private settingActivity:Landroid/app/Activity;

.field swipeDialog:Landroid/app/AlertDialog$Builder;

.field traceDialog:Landroid/app/AlertDialog$Builder;

.field traceDialog2:Landroid/app/AlertDialog$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    sput-object v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsDaMode:Z

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    iput v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    iput v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->PointingPopup:Z

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->TracePopup:Z

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->TracePopup2:Z

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->SwipePopup:Z

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misUseSplitFloatingKeyboard:Z

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKeypadGuideInHelpApp:Z

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    const-string v0, "INU"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "INS"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NPL"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SLK"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TML"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsODDcsc:Z

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mWindowHeight:I

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mWindowWidth:I

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mWindowHeight:I

    const/16 v3, 0x320

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mWindowWidth:I

    const/16 v3, 0x1e0

    if-ne v0, v3, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->IS_WVGA:Z

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mWindowHeight:I

    const/16 v3, 0x780

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mWindowWidth:I

    const/16 v3, 0x438

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->IS_FHD:Z

    iput v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUsePointingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseTraceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseSweepingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$25;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$25;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onShortCutPhraseClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoReplacementClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoReplacementChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseXt9ClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$29;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$29;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKeyboardSwipeClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$30;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$30;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseHwrClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$31;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$31;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseKorKeypadClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$32;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$32;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKorInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$34;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$34;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onNumberSymbolInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$35;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$35;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onTurkishInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$36;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$36;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onLanguageItemClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$41;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$41;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAnimationRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$42;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$42;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$44;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$44;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onSoundChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$45;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$45;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onVibChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->areAllLanguagesDisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->showAutoReplacementGuideDialogToEnalbe()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    return v0
.end method

.method static synthetic access$300()[Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPinchZoomGuide:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPinchZoomGuide:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private addLanguageActivityPreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v1, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-virtual {p3}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v9, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ko"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const v5, 0x7f070021

    const v6, 0x7f070022

    invoke-virtual {p3}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->createLanguageListDialogPref(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)Landroid/preference/ListPreference;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p1, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v9, :cond_0

    invoke-virtual {v9, p2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v9, p4}, Landroid/preference/Preference;->setOrder(I)V

    const-string v0, "ko"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v0, :cond_3

    const-string v0, "tr"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "vi"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ja"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "zh"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "de"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onLanguageItemClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    invoke-virtual {p1, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private addLanguageListPreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V
    .locals 14

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v2, "com.sec.android.inputmethod_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-string v1, "ko"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    if-eqz v1, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const v6, 0x7f070021

    const v7, 0x7f070022

    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-ne v6, v1, :cond_e

    new-instance v10, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v10, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    if-eqz v10, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {p1, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    return-void

    :cond_4
    const v6, 0x7f07001f

    const v7, 0x7f070020

    goto :goto_0

    :cond_5
    const-string v1, "tr"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_6

    const v6, 0x7f070015

    const v7, 0x7f070016

    goto :goto_0

    :cond_6
    const-string v1, "vi"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_7

    const v6, 0x7f070012

    const v7, 0x7f070014

    goto :goto_0

    :cond_7
    const-string v1, "ja"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_8

    const v6, 0x7f070017

    const v7, 0x7f070018

    goto :goto_0

    :cond_8
    const-string v1, "zh"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_9

    const v6, 0x7f070019

    const v7, 0x7f07001a

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "de"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v6, 0x7f07001b

    const v7, 0x7f07001c

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "bg"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v6, 0x7f07001d

    const v7, 0x7f07001e

    goto/16 :goto_0

    :cond_b
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-nez v1, :cond_c

    const-string v1, "lo"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "km"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phonepad_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x1

    :try_start_0
    invoke-static {v12}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    const v6, 0x7f070010

    const v7, 0x7f070011

    goto/16 :goto_0

    :cond_c
    const-string v1, "lo"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "km"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_d
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phonepad_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x1

    :try_start_1
    invoke-static {v12}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    goto/16 :goto_0

    :cond_e
    invoke-virtual/range {p3 .. p3}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->createLanguageListDialogPref(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)Landroid/preference/ListPreference;

    move-result-object v9

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method private addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguageListPreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V

    return-void
.end method

.method private areAllLanguagesDisable()Z
    .locals 15

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    iget-boolean v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v10

    :goto_0
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v7

    array-length v11, v7

    new-array v8, v11, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_1
    array-length v11, v10

    if-ge v1, v11, :cond_3

    const-string v11, "0x%08x"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aget-object v14, v10, v1

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    invoke-interface {v9, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget-object v12, v10, v1

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    aget-object v11, v10, v1

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    invoke-interface {v9, v5, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_2

    const/4 v11, 0x0

    :goto_3
    return v11

    :cond_0
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v10

    goto :goto_0

    :cond_1
    const/4 v11, 0x1

    invoke-interface {v9, v5, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_5

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v6

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11, v6}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    invoke-interface {v9, v5, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_5

    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    const/4 v11, 0x1

    invoke-interface {v9, v5, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    const/4 v11, 0x1

    goto :goto_3
.end method

.method private changeSwipe(Landroid/preference/Preference;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private createLanguageListDialogPref(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)Landroid/preference/ListPreference;
    .locals 2

    new-instance v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    invoke-virtual {v0, p4}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v0, p5}, Landroid/preference/ListPreference;->setEntries(I)V

    invoke-virtual {v0, p6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setOrder(I)V

    :cond_0
    return-object v0
.end method

.method private createLanguageListPreference()V
    .locals 22

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v17

    :goto_0
    const/4 v7, 0x0

    const/4 v12, -0x1

    const-string v18, "SETTINGS_INPUT_LANGUAGES"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    if-nez v9, :cond_1

    :goto_1
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v17

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->removeAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const-string v19, "com.sec.android.inputmethod_preferences"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_3

    const-string v18, "0x%08x"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v17, v5

    invoke-virtual/range {v21 .. v21}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v7, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    aget-object v19, v17, v5

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    aget-object v18, v17, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v8, v1, v12}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v10

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v18, "0x%08x"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v10}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v18, "default_keyboard_language"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v9, v4, v1, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v9, v8, v10, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V

    const-string v18, "SETTINGS_INPUT_DEFALUT_LANGUAGE"

    move-object/from16 v0, v18

    invoke-interface {v3, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    :goto_3
    new-instance v14, Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0d02cb

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    const-string v18, "select_swiftkey_language_list"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.diotek.ime.implement.setting.SWIFTKEY_LANGUAGES_SETTINGS"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_4
    const/16 v18, 0x3e8

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOrder(I)V

    const v18, 0x7f0209ce

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setIcon(I)V

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_5
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v9, v8, v10, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V

    const-string v18, "SETTINGS_INPUT_DEFALUT_LANGUAGE"

    move-object/from16 v0, v18

    invoke-interface {v3, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    :cond_6
    const-string v18, "select_language_list"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.diotek.ime.implement.setting.AC_LANGUAGES_SETTINGS"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method private getAutoReplacementSelectedLanguages()Ljava/lang/String;
    .locals 15

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    const-string v8, ""

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v12, "com.sec.android.inputmethod_preferences"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v10

    :goto_0
    const/4 v2, 0x0

    :goto_1
    array-length v11, v10

    if-ge v2, v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v11

    if-nez v11, :cond_2

    aget-object v11, v10, v2

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v10

    goto :goto_0

    :cond_2
    aget-object v11, v10, v2

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ja"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    aget-object v11, v10, v2

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "zh"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "0x%08x"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aget-object v14, v10, v2

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-interface {v9, v5, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget-object v12, v10, v2

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    aget-object v11, v10, v2

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    invoke-interface {v9, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_0

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    aget-object v11, v10, v2

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    const/4 v11, 0x1

    invoke-interface {v9, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_3

    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v10, v2

    invoke-virtual {v12}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    :cond_5
    if-eqz v3, :cond_6

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v7

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11, v7}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    invoke-interface {v9, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_b

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11, v1}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    invoke-interface {v9, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_6
    :goto_5
    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0204

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_8
    return-object v8

    :cond_9
    const/4 v11, 0x1

    invoke-interface {v9, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_b
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11, v1}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    invoke-interface {v9, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_5
.end method

.method private getHelpAppIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "helphub:section"

    const-string v2, "sip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const-string v1, "helphub:appid"

    const-string v2, "keyboard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getHelpAppPackageVersion()I
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isEnableToRemovePredictionOption()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPrivateImeOptionsController()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPrivateImeOptionsController()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x15

    if-eq v0, v2, :cond_2

    const/16 v2, 0x18

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private registerHelpAppPrefIntent()V
    .locals 2

    const-string v1, "HELP_INTEGRATION"

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getHelpAppIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private removedPreferenceOnTalkbackEnabled()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "SETTINGS_SMART_TYPING"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "SETTINGS_DEFAULT_AUTO_SPACING"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isSupportSpaceLanguageChange()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v4, "SETTINGS_SMART_TYPING"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v4, "settings_keyboard_swipe"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string v4, "SETTINGS_SHORTCUT_PHRASE"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v4, "settings_key_tap_feedback"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v4, "SETTINGS_DEFAULT_HOLD_DELAY"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    return-void
.end method

.method private setSummaryForPredictiveText()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v0, 0x0

    const-string v3, "settings_keyboard_swipe"

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0d0076

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    const-string v3, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getAutoReplacementSelectedLanguages()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v3, "SETTINGS_DEFAULT_AUTO_SPACING"

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    const v3, 0x7f0d0057

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v3, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f0d007c

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_4
    const-string v3, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f0d007f

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_5
    const v3, 0x7f0d02cf

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_6
    const-string v3, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    const v3, 0x7f0d0203

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    :cond_7
    const-string v3, "SETTINGS_DEFAULT_AUTO_SPACING"

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    const v3, 0x7f0d0058

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method private showAutoReplacementGuideDialogToEnalbe()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const/high16 v3, 0x7f0e

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d01ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0202

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d010e

    new-instance v2, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$43;

    invoke-direct {v2, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$43;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 34

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v13, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v30, v0

    const-string v31, "com.sec.android.inputmethod_preferences"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    const-string v30, "da_mode"

    const/16 v31, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsDaMode:Z

    const-string v30, "support_hwr_mode"

    const/16 v31, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v21

    if-eqz v21, :cond_1

    const-string v30, "USE_HWR_MODE"

    const/16 v31, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    const-string v30, "TABLET_MODE"

    const/16 v31, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misUseSplitFloatingKeyboard:Z

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsEnablePredictiveTextGuide:Z

    const-string v30, "INPUT_LANGUAGE"

    const v31, 0x656e4742

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v10

    const/high16 v30, -0x1

    and-int v30, v30, v10

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v12

    invoke-virtual {v12}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v30

    const/high16 v31, -0x1

    and-int v13, v30, v31

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsDaMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_22

    if-eqz v26, :cond_2

    if-nez v28, :cond_21

    :cond_2
    const v30, 0x7f030065

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->dismissAllDialog()V

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getHelpAppPackageVersion()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_26

    const/16 v30, 0x0

    :goto_1
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKeypadGuideInHelpApp:Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->registerHelpAppPrefIntent()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v30, v0

    if-nez v30, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_5

    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setHasOptionsMenu(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v30, v0

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v30

    const/16 v31, 0x400

    const/16 v32, 0x400

    invoke-virtual/range {v30 .. v32}, Landroid/view/Window;->setFlags(II)V

    :cond_6
    const/16 v25, 0x0

    const/16 v17, 0x0

    const-string v30, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseXt9ClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v30, v0

    const/high16 v31, 0x7a68

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v30, v0

    const/high16 v31, 0x6a61

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    :cond_8
    const-string v30, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_9

    const/16 v30, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->removedPreferenceOnTalkbackEnabled()V

    const-string v30, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_Sip_DisableAutoCorrection"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoReplacementClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v30, v0

    if-eqz v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoReplacementChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_Sip_ApplyAutoCorrectionPatent"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_b

    const v30, 0x7f0d0201

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_b
    :goto_2
    const-string v30, "SETTINGS_SHORTCUT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onShortCutPhraseClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_c
    const-string v30, "settings_keyboard_swipe"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKeyboardSwipeClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v30, v0

    if-nez v30, :cond_e

    const-string v30, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_e

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v30, v0

    if-eqz v30, :cond_e

    const-string v30, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseHwrClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_e
    const-string v30, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_f

    const-string v30, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceCategory;

    if-eqz v18, :cond_f

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_Sip_DisableMenuKeyboardSwipe"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_10

    :cond_10
    const-string v30, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    if-eqz v19, :cond_11

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKeypadGuideInHelpApp:Z

    move/from16 v30, v0

    if-eqz v30, :cond_28

    const-string v30, "tutorial"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_13

    const-string v30, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceCategory;

    if-eqz v18, :cond_12

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_12
    const-string v30, "HELP_INTEGRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v18, :cond_13

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_13
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_29

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isSupportSpaceLanguageChange()Z

    move-result v30

    if-eqz v30, :cond_29

    const-string v30, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_14

    new-instance v30, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$5;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$5;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_14
    :goto_4
    const-string v30, "SETTINGS_DEFAULT_PEN_DETECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_15

    const-string v30, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceCategory;

    if-eqz v18, :cond_15

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_15
    const-string v30, "SETTINGS_DEFAULT_ONE_HAND"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    if-eqz v19, :cond_16

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v30, v0

    const/high16 v31, 0x6a61

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_17

    const-string v30, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    if-eqz v19, :cond_17

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v30, v0

    const/high16 v31, 0x7472

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2a

    const-string v30, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    if-eqz v14, :cond_18

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onTurkishInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_18
    :goto_5
    const-string v30, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    if-eqz v14, :cond_19

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_19
    const-string v30, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v30

    if-eqz v30, :cond_2b

    if-eqz v14, :cond_1a

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onNumberSymbolInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1a
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1c

    const-string v30, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    if-eqz v14, :cond_1b

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKorInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1c

    const-string v30, "SETTINGS_DEFAULT_USE_PREVIEW"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1c

    new-instance v30, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$8;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$8;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1c
    const-string v30, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUsePointingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1d
    const-string v30, "SETTINGS_DEFAULT_TRACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v30, v0

    const/high16 v31, 0x6a61

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    if-eqz v19, :cond_1e

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1e
    :goto_7
    const-string v30, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseSweepingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1f
    const-string v30, "settings_keyboard_swipe_cursor_control"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    const-string v30, "settings_keyboard_swipe_continuous_input"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v20, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    if-eqz v30, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v27

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v30, v0

    const-string v31, "com.sec.android.inputmethod_preferences"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    const/4 v11, 0x0

    const/4 v15, -0x1

    const/16 v23, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    const/16 v24, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v8, v30, -0x1

    :goto_9
    if-ltz v8, :cond_2e

    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v33, v27, v8

    invoke-virtual/range {v33 .. v33}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_20

    add-int/lit8 v15, v15, 0x1

    move/from16 v23, v8

    aget-object v30, v27, v8

    invoke-virtual/range {v30 .. v30}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v30

    const/high16 v31, -0x1

    and-int v24, v30, v31

    if-nez v6, :cond_20

    move/from16 v0, v24

    if-ne v7, v0, :cond_20

    const/4 v6, 0x1

    :cond_20
    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    :cond_21
    const v30, 0x7f030064

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v30, v0

    if-eqz v30, :cond_23

    if-nez v28, :cond_23

    const v30, 0x7f03005c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v30, v0

    if-eqz v30, :cond_24

    const v30, 0x7f03005c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_24
    const/high16 v30, 0x7a68

    move/from16 v0, v30

    if-ne v13, v0, :cond_25

    const v30, 0x7f03005b

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_25
    const v30, 0x7f03005b

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_26
    const/16 v30, 0x1

    goto/16 :goto_1

    :cond_27
    const-string v30, "SETTINGS_SMART_TYPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_28
    const-string v30, "HELP_INTEGRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_13

    const-string v30, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceCategory;

    if-eqz v18, :cond_13

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_29
    const-string v30, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_14

    const-string v30, "SETTINGS_SMART_TYPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceCategory;

    if-eqz v18, :cond_14

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    :cond_2a
    const-string v30, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    if-eqz v14, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    if-eqz v19, :cond_18

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_2b
    if-eqz v14, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    if-eqz v19, :cond_1a

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseTraceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_7

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v27

    goto/16 :goto_8

    :cond_2e
    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v15, v0, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v12

    invoke-virtual {v12}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v30

    const/high16 v31, -0x1

    and-int v7, v30, v31

    :cond_2f
    :goto_a
    const/high16 v30, 0x6a61

    move/from16 v0, v30

    if-ne v7, v0, :cond_35

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    :cond_30
    :goto_b
    const-string v30, "SETTINGS_VIETNAMESE_INPUT_METHOD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/ListPreference;

    if-eqz v29, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v30, v0

    const/high16 v31, 0x7669

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_31

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingVietnameseTelex()Z

    move-result v30

    if-nez v30, :cond_32

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    if-eqz v19, :cond_32

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_32
    new-instance v30, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v31, 0x7f0d007c

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    const v31, 0x7f0d007e

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    const v31, 0x7f0d010e

    new-instance v32, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$11;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$11;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v30 .. v32}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    const v31, 0x7f0d01c9

    new-instance v32, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$10;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$10;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v30 .. v32}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    new-instance v31, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$9;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$9;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->pointingDialog:Landroid/app/AlertDialog$Builder;

    new-instance v30, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v31, 0x7f0d0076

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    const v31, 0x7f0d007b

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    const v31, 0x7f0d010e

    new-instance v32, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$14;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$14;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v30 .. v32}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    const v31, 0x7f0d01c9

    new-instance v32, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$13;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$13;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v30 .. v32}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    new-instance v31, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$12;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$12;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog:Landroid/app/AlertDialog$Builder;

    new-instance v30, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v31, 0x7f0d0076

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    const v31, 0x7f0d0088

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    const v31, 0x7f0d010e

    new-instance v32, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$17;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$17;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v30 .. v32}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    const v31, 0x7f0d01c9

    new-instance v32, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$16;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$16;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v30 .. v32}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    new-instance v31, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$15;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$15;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog2:Landroid/app/AlertDialog$Builder;

    new-instance v30, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v31, 0x7f0d0052

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    const v31, 0x7f0d0087

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    const v31, 0x7f0d010e

    new-instance v32, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v30 .. v32}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    const v31, 0x7f0d01c9

    new-instance v32, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$19;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$19;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v30 .. v32}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    new-instance v31, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$18;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$18;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->swipeDialog:Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v30, 0x7f0d0051

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;

    return-void

    :cond_33
    if-eqz v15, :cond_34

    if-nez v6, :cond_2f

    :cond_34
    aget-object v30, v27, v23

    invoke-virtual/range {v30 .. v30}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v30

    const/high16 v31, -0x1

    and-int v7, v30, v31

    goto/16 :goto_a

    :cond_35
    const/16 v30, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    const/high16 v30, 0x7a68

    move/from16 v0, v30

    if-ne v7, v0, :cond_30

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f0d0066

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f03006d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getHelpAppIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f0d0066

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 45

    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    if-nez v39, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v39

    const-string v40, "INPUT_LANGUAGE"

    const v41, 0x656e4742

    invoke-interface/range {v39 .. v41}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v39

    invoke-static/range {v39 .. v39}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v39

    if-nez v39, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsODDcsc:Z

    move/from16 v39, v0

    if-eqz v39, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->IS_WVGA:Z

    move/from16 v39, v0

    if-nez v39, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->IS_FHD:Z

    move/from16 v39, v0

    if-eqz v39, :cond_4

    :cond_1
    const-string v39, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    const-string v39, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    const-string v39, "Portrait keyboard types"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    if-eqz v25, :cond_4

    if-eqz v13, :cond_2

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    if-eqz v14, :cond_3

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    if-eqz v12, :cond_4

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    if-eqz v39, :cond_2a

    const-string v39, "SETTINGS_DEFAULT_VOICE_INPUT"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->isVoiceInputSelected()Z

    move-result v39

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_5
    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->createLanguageListPreference()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v39, v0

    const-string v40, "com.sec.android.inputmethod_preferences"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    const/16 v37, 0x0

    const/16 v19, 0x0

    const/16 v22, -0x1

    const/16 v29, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    const/16 v31, -0x1

    const/4 v6, 0x0

    const-string v39, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v39, v0

    if-eqz v39, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v37

    :goto_0
    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v11, v39, -0x1

    :goto_1
    if-ltz v11, :cond_8

    const-string v39, "0x%08x"

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget-object v42, v37, v11

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    aput-object v42, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v39, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_6

    add-int/lit8 v22, v22, 0x1

    move/from16 v29, v11

    aget-object v39, v37, v11

    invoke-virtual/range {v39 .. v39}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v39

    const/high16 v40, -0x1

    and-int v31, v39, v40

    if-nez v6, :cond_6

    move/from16 v0, v31

    if-ne v7, v0, :cond_6

    const/4 v6, 0x1

    :cond_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v37

    goto :goto_0

    :cond_8
    const/16 v39, -0x1

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v39

    const/high16 v40, -0x1

    and-int v7, v39, v40

    :cond_9
    :goto_2
    const/high16 v39, 0x7a68

    move/from16 v0, v39

    if-eq v7, v0, :cond_a

    const/high16 v39, 0x6a61

    move/from16 v0, v39

    if-ne v7, v0, :cond_1a

    :cond_a
    const-string v39, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    const-string v39, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v24, :cond_b

    const/16 v39, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    if-eqz v16, :cond_19

    const v39, 0x7f0d0030

    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_b
    :goto_3
    const-string v39, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_c

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v39, v0

    if-eqz v39, :cond_c

    move-object/from16 v35, v24

    check-cast v35, Landroid/preference/SwitchPreference;

    const-string v39, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_c
    if-eqz v24, :cond_d

    const-string v39, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_d
    const-string v39, "SETTINGS_SHORTCUT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_e

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v39, v0

    if-eqz v39, :cond_e

    move-object/from16 v35, v24

    check-cast v35, Landroid/preference/SwitchPreference;

    const-string v39, "SETTINGS_SHORTCUT_PHRASE"

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_e
    const-string v39, "SETTINGS_DEFAULT_AUTO_CAPS"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_f

    const-string v39, "SETTINGS_DEFAULT_AUTO_CAPS"

    const/16 v40, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_f
    const-string v39, "SETTINGS_DEFAULT_AUTO_SPACING"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v39

    const/high16 v40, 0x6b6f

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    move/from16 v39, v0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_1d

    const-string v39, "SETTINGS_SMART_TYPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceCategory;

    if-eqz v23, :cond_10

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_10
    :goto_4
    const-string v39, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_11

    const-string v39, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    :cond_11
    const-string v39, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_12
    const-string v39, "SETTINGS_DEFAULT_AUTO_PERIOD"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_13

    const-string v39, "SETTINGS_DEFAULT_AUTO_PERIOD"

    const/16 v40, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_13
    const-string v39, "SETTINGS_DEFAULT_USE_PREVIEW"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_14

    const-string v39, "SETTINGS_DEFAULT_USE_PREVIEW"

    const/16 v40, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_14
    const-string v39, "SETTINGS_DEFAULT_PEN_DETECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_15

    const-string v39, "SETTINGS_DEFAULT_PEN_DETECTION"

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_15
    const-string v39, "settings_keyboard_swipe_continuous_input"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v26, :cond_21

    if-nez v37, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v39, v0

    if-eqz v39, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v37

    :goto_5
    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v11, v39, -0x1

    :goto_6
    if-ltz v11, :cond_1f

    const-string v39, "0x%08x"

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget-object v42, v37, v11

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    aput-object v42, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v39, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_16

    add-int/lit8 v22, v22, 0x1

    move/from16 v29, v11

    aget-object v39, v37, v11

    invoke-virtual/range {v39 .. v39}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v39

    const/high16 v40, -0x1

    and-int v31, v39, v40

    if-nez v6, :cond_16

    move/from16 v0, v31

    if-ne v7, v0, :cond_16

    const/4 v6, 0x1

    :cond_16
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    :cond_17
    if-eqz v22, :cond_18

    if-nez v6, :cond_9

    :cond_18
    aget-object v39, v37, v29

    invoke-virtual/range {v39 .. v39}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v39

    const/high16 v40, -0x1

    and-int v7, v39, v40

    goto/16 :goto_2

    :cond_19
    const v39, 0x7f0d0031

    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    :cond_1a
    const/16 v39, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v39, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v39, v0

    if-eqz v39, :cond_1b

    move-object/from16 v35, v24

    check-cast v35, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_1b
    if-eqz v16, :cond_1c

    const v39, 0x7f0d0030

    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    :cond_1c
    const v39, 0x7f0d0031

    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    :cond_1d
    const-string v39, "SETTINGS_DEFAULT_AUTO_SPACING"

    const/16 v40, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v37

    goto/16 :goto_5

    :cond_1f
    const/16 v39, -0x1

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v39

    const/high16 v40, -0x1

    and-int v7, v39, v40

    :cond_20
    :goto_7
    const/high16 v39, 0x6a61

    move/from16 v0, v39

    if-ne v7, v0, :cond_32

    const/16 v39, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    :cond_21
    :goto_8
    const-string v39, "SETTINGS_DEFAULT_HOLD_DELAY"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    if-eqz v10, :cond_24

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    const/16 v39, 0x0

    aget-object v39, v9, v39

    if-eqz v39, :cond_22

    const/16 v39, 0x1

    aget-object v39, v9, v39

    if-eqz v39, :cond_22

    const/16 v39, 0x2

    aget-object v39, v9, v39

    if-eqz v39, :cond_22

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v39

    const-string v40, "ar"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_35

    sget-object v39, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    aget-object v42, v9, v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    const-string v43, "%s"

    const-string v44, "\u0660.\u0662"

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v9, v41

    aput-object v42, v39, v40

    sget-object v39, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v40, 0x1

    const/16 v41, 0x1

    const/16 v42, 0x1

    aget-object v42, v9, v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    const-string v43, "%s"

    const-string v44, "\u0660.\u0663"

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v9, v41

    aput-object v42, v39, v40

    sget-object v39, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v40, 0x2

    const/16 v41, 0x2

    const/16 v42, 0x2

    aget-object v42, v9, v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    const-string v43, "%s"

    const-string v44, "\u0660.\u0665"

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v9, v41

    aput-object v42, v39, v40

    :cond_22
    :goto_9
    invoke-virtual {v10, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const-string v36, ""

    const-string v39, "SETTINGS_DEFAULT_HOLD_DELAY"

    const-string v40, "settings_hold_delay_medium"

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v39, "settings_hold_delay_short"

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_36

    sget-object v39, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v40, 0x0

    aget-object v36, v39, v40

    check-cast v36, Ljava/lang/String;

    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :cond_23
    :goto_a
    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v39, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$21;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$21;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setSummaryForPredictiveText()V

    const-string v39, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "sip_key_feedback_vibration"

    const/16 v41, 0x1

    invoke-static/range {v39 .. v41}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_39

    const/16 v16, 0x1

    :goto_b
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onVibChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_25
    const-string v39, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "sip_key_feedback_sound"

    const/16 v41, -0x1

    invoke-static/range {v39 .. v41}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    const/16 v40, -0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v39, v0

    const-string v40, "com.sec.android.inputmethod_preferences"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    if-eqz v28, :cond_26

    const-string v39, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    const/16 v40, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    if-eqz v39, :cond_3a

    const/16 v16, 0x1

    :cond_26
    :goto_c
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onSoundChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsEnablePredictiveTextGuide:Z

    move/from16 v39, v0

    if-eqz v39, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v39, v0

    const-string v40, "com.sec.android.inputmethod_preferences"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    const-string v39, "first_predictive_text_execution"

    const/16 v40, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->showPredictiveTextGuideDialog()V

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/diotek/ime/framework/common/EasyMode;->isDeviceEasyModeOn(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_29

    const-string v39, "HELP_INTEGRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    if-eqz v25, :cond_29

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    move/from16 v39, v0

    if-eqz v39, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v39, v0

    const-string v40, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    const/16 v41, 0x0

    invoke-interface/range {v39 .. v41}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    const-string v39, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    const-string v39, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_2a

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2a
    const-string v39, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2b

    instance-of v0, v3, Landroid/preference/SwitchPreference;

    move/from16 v39, v0

    if-eqz v39, :cond_2b

    move-object v4, v3

    check-cast v4, Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_2b

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->areAllLanguagesDisable()Z

    move-result v39

    if-eqz v39, :cond_2b

    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2b
    const-string v39, "SETTINGS_SHORTCUT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    if-eqz v33, :cond_2c

    move-object/from16 v0, v33

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v39, v0

    if-eqz v39, :cond_2c

    move-object/from16 v34, v33

    check-cast v34, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v34 .. v34}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_3d

    const/16 v39, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2c
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->isEnableToRemovePredictionOption()Z

    move-result v39

    if-eqz v39, :cond_2f

    const/16 v27, 0x0

    const/16 v25, 0x0

    const-string v39, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    if-eqz v27, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    if-eqz v25, :cond_2e

    if-eqz v3, :cond_2d

    invoke-virtual/range {v27 .. v27}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v39

    invoke-virtual {v3}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2d

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2d
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2e
    const-string v39, "SETTINGS_DEFAULT_TRACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    if-eqz v27, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    if-eqz v25, :cond_2f

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2f
    return-void

    :cond_30
    if-eqz v22, :cond_31

    if-nez v6, :cond_20

    :cond_31
    aget-object v39, v37, v29

    invoke-virtual/range {v39 .. v39}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v39

    const/high16 v40, -0x1

    and-int v7, v39, v40

    goto/16 :goto_7

    :cond_32
    const/high16 v39, 0x7a68

    move/from16 v0, v39

    if-ne v7, v0, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v39

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_33

    const-string v39, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    :goto_e
    const-string v39, "settings_keyboard_swipe_none"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_33
    const/16 v39, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    goto :goto_e

    :cond_34
    const/16 v39, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    const-string v39, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_21

    const-string v39, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_35
    sget-object v39, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    aget-object v42, v9, v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    const-string v43, "%s"

    const-string v44, "0.2"

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v9, v41

    aput-object v42, v39, v40

    sget-object v39, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v40, 0x1

    const/16 v41, 0x1

    const/16 v42, 0x1

    aget-object v42, v9, v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    const-string v43, "%s"

    const-string v44, "0.3"

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v9, v41

    aput-object v42, v39, v40

    sget-object v39, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v40, 0x2

    const/16 v41, 0x2

    const/16 v42, 0x2

    aget-object v42, v9, v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    const-string v43, "%s"

    const-string v44, "0.5"

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v9, v41

    aput-object v42, v39, v40

    goto/16 :goto_9

    :cond_36
    const-string v39, "settings_hold_delay_medium"

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_37

    sget-object v39, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v40, 0x1

    aget-object v36, v39, v40

    check-cast v36, Ljava/lang/String;

    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_a

    :cond_37
    const-string v39, "settings_hold_delay_long"

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_38

    sget-object v39, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v40, 0x2

    aget-object v36, v39, v40

    check-cast v36, Ljava/lang/String;

    const/16 v39, 0x2

    move/from16 v0, v39

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_a

    :cond_38
    const-string v39, "settings_hold_delay_custom"

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0d02e6

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    const/16 v39, 0x3

    move/from16 v0, v39

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_a

    :cond_39
    const/16 v16, 0x0

    goto/16 :goto_b

    :cond_3a
    const/16 v16, 0x0

    goto/16 :goto_c

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "sip_key_feedback_sound"

    const/16 v41, 0x1

    invoke-static/range {v39 .. v41}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3c

    const/16 v16, 0x1

    goto/16 :goto_c

    :cond_3c
    const/16 v16, 0x0

    goto/16 :goto_c

    :cond_3d
    const/16 v39, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_d
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public showPinchZoomGuideDialog()V
    .locals 15

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v12

    if-nez v12, :cond_3

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v12, Landroid/view/ContextThemeWrapper;

    iget-object v13, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const/high16 v14, 0x7f0e

    invoke-direct {v12, v13, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00b9

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v9, 0x7f080049

    const v8, 0x7f08004a

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isUsedSplitKeyboard()Z

    move-result v12

    if-eqz v12, :cond_4

    const v10, 0x7f03003d

    :goto_0
    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isCheckDontShowPinchZoomGuide()Z

    move-result v12

    iput-boolean v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPinchZoomGuide:Z

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v12, 0x1020016

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    const v12, 0x104000a

    new-instance v13, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$37;

    invoke-direct {v13, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$37;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f08004b

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v12, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$38;

    invoke-direct {v12, p0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$38;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v13, 0x1f4

    invoke-virtual {v4, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    const v10, 0x7f030038

    goto :goto_0
.end method

.method public showPredictiveTextGuideDialog()V
    .locals 9

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f03003e

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00bf

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isCheckDontShowPredictiveTextGuide()Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x1020016

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    const v7, 0x104000a

    new-instance v8, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$39;

    invoke-direct {v8, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$39;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f080053

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    iget-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v7, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    :cond_3
    return-void
.end method
