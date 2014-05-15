.class public Lcom/android/dialer/dialpad/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/dialer/dialpad/DialpadKeyButton$OnPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;,
        Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;,
        Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;,
        Lcom/android/dialer/dialpad/DialpadFragment$BlockSpeeddial;
    }
.end annotation


# static fields
.field public static final DATA_PROJECTION:[Ljava/lang/String;

.field private static final SPEED_DIAL_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static isSpeedPopupRunnging:Z

.field private static mIsAirplaneModeOn:Z

.field private static mMannerModePressed:Z

.field public static mRoamingAutoDialTempOff:Ljava/lang/Boolean;

.field private static needToShowDialpadChooser:Z

.field private static showDialpadChooserWithAddCall:Z


# instance fields
.field private final HOVER_DIALPAD_VIEW_IDS:[I

.field private final mCallLog:Lcom/android/phone/common/CallLogAsync;

.field private mClearDigitsOnStop:Z

.field protected mContext:Landroid/content/Context;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field protected mDelete:Landroid/view/View;

.field protected mDialButton:Landroid/view/View;

.field public mDialButtonContainer:Landroid/widget/FrameLayout;

.field private mDialConferenceButton:Landroid/widget/ImageButton;

.field private mDialEdittext:Landroid/widget/FrameLayout;

.field public mDialPad:Landroid/widget/FrameLayout;

.field public mDialpadButtonView:Landroid/view/View;

.field protected mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

.field public mDialpadEditText:Landroid/view/View;

.field private mDialpadHoverImpl:Lcom/samsung/dialer/impl/DialpadHoverImpl;

.field public mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

.field private mDialpadPressCount:I

.field private mDialpadStub:Landroid/view/View;

.field public mDialpadView:Landroid/view/View;

.field public mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

.field private mDigitsContainer:Landroid/view/View;

.field protected mDigitsFilledByIntent:Z

.field public mEasyMode:Z

.field public mEmergencyMode:Z

.field private mExploreByTouchListener:Lcom/samsung/dialer/dialpad/ExploreByTouchListener;

.field private mFragmentView:Landroid/view/View;

.field private final mHaptic:Lcom/android/phone/common/HapticFeedback;

.field private mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

.field public mIsNeedConfigureScreen:Z

.field private mIsServiceJustConnected:Z

.field public mKeyStringHandler:Landroid/os/Handler;

.field private mLastNumberDialed:Ljava/lang/String;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLowSignalHandler:Landroid/os/Handler;

.field private mMessenger:Landroid/os/Messenger;

.field private mParserServiceConnection:Landroid/content/ServiceConnection;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousString:Ljava/lang/String;

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mReceiveMessenger:Landroid/os/Messenger;

.field private mRecipients:Landroid/widget/EditText;

.field private mSavedDigitsNumber:Ljava/lang/String;

.field private mSavedIsShowSearchResult:Z

.field private mSavedLocalLayoutText:Ljava/lang/String;

.field public mSoundPool:Landroid/media/SoundPool;

.field public mSoundTone:I

.field protected mSpeedDial:Z

.field public mSpeedDialDlg:Landroid/app/AlertDialog;

.field public mSpeedDialNumber:I

.field private mStartedFromNewIntent:Z

.field private mSubscription:I

.field private mToastEnterNumber:Landroid/widget/Toast;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mToneGeneratorLock:Ljava/lang/Object;

.field private mViewGroup:Landroid/view/ViewGroup;

.field private mWasEmptyBeforeTextChange:Z

.field private visibilityChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    sput-boolean v3, Lcom/android/dialer/dialpad/DialpadFragment;->isSpeedPopupRunnging:Z

    sput-boolean v3, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    sput-boolean v3, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooserWithAddCall:Z

    sput-boolean v3, Lcom/android/dialer/dialpad/DialpadFragment;->mMannerModePressed:Z

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "is_super_primary"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->DATA_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key_number"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v2

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_name_reverse"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "speed_dial_data_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->mRoamingAutoDialTempOff:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSubscription:I

    new-instance v0, Lcom/android/phone/common/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/common/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/common/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/common/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpad/DialpadFragment$1;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->visibilityChanged:Z

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEasyMode:Z

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEmergencyMode:Z

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsNeedConfigureScreen:Z

    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpad/DialpadFragment$2;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLowSignalHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsServiceJustConnected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$5;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpad/DialpadFragment$5;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mKeyStringHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mKeyStringHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mReceiveMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$6;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpad/DialpadFragment$6;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mParserServiceConnection:Landroid/content/ServiceConnection;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->HOVER_DIALPAD_VIEW_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x89t 0x1t 0x8t 0x7ft
        0x8at 0x1t 0x8t 0x7ft
        0x8bt 0x1t 0x8t 0x7ft
        0x8ct 0x1t 0x8t 0x7ft
        0x8dt 0x1t 0x8t 0x7ft
        0x8et 0x1t 0x8t 0x7ft
        0x8ft 0x1t 0x8t 0x7ft
        0x90t 0x1t 0x8t 0x7ft
        0x91t 0x1t 0x8t 0x7ft
        0x92t 0x1t 0x8t 0x7ft
        0x93t 0x1t 0x8t 0x7ft
        0x94t 0x1t 0x8t 0x7ft
    .end array-data
.end method

.method private SpeedDialParser(J)Z
    .locals 10

    const-wide/16 v8, 0xa

    const/4 v7, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "SpeedDialParser"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->length()I

    move-result v0

    if-lez v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/dialer/dialpad/DialpadFragment;->isSpeedPopupRunnging:Z

    if-eqz v5, :cond_1

    :cond_0
    move v0, v4

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v5}, Lcom/android/dialer/dialpad/EllipsisTextView;->length()I

    move-result v5

    if-ne v5, v7, :cond_2

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    cmp-long v2, p1, v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    if-ne v5, v2, :cond_4

    cmp-long v2, v0, v8

    if-gez v2, :cond_4

    :cond_3
    move v0, v4

    goto :goto_1

    :cond_4
    mul-long/2addr v0, v8

    add-long/2addr v0, p1

    sput-boolean v7, Lcom/android/dialer/dialpad/DialpadFragment;->isSpeedPopupRunnging:Z

    new-instance v2, Lcom/android/dialer/dialpad/DialpadFragment$BlockSpeeddial;

    sget-boolean v3, Lcom/android/dialer/dialpad/DialpadFragment;->isSpeedPopupRunnging:Z

    invoke-direct {v2, p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment$BlockSpeeddial;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;Z)V

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v2, v5, v0, v1}, Lcom/samsung/dialer/impl/DialpadImpl;->doSpeedDialCall(IJ)Z

    move-result v0

    goto :goto_1

    :cond_5
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/dialer/dialpad/DialpadFragment;)Lcom/samsung/contacts/util/ImsLowSignalHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/dialer/dialpad/DialpadFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsServiceJustConnected:Z

    return p1
.end method

.method static synthetic access$1100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/dialer/dialpad/DialpadFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/dialpad/DialpadFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->updateCallIcon(Z)V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/dialer/dialpad/DialpadFragment;->isSpeedPopupRunnging:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsAirplaneModeOn:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsAirplaneModeOn:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/dialer/dialpad/DialpadFragment;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static canAddDigit(Ljava/lang/CharSequence;IIC)Z
    .locals 3

    const/16 v2, 0x3b

    const/4 v0, 0x0

    if-eq p3, v2, :cond_1

    const/16 v1, 0x2c

    if-eq p3, v1, :cond_1

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Should not be called for anything other than PAUSE & WAIT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-lt p2, p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p2, v1, :cond_0

    if-eqz p1, :cond_0

    if-ne p3, v2, :cond_2

    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, p2, :cond_2

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cleanupHoverListenerForExploreByTouch()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "cleanupHoverListenerForExploreByTouch.."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->HOVER_DIALPAD_VIEW_IDS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->HOVER_DIALPAD_VIEW_IDS:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadButtonView:Landroid/view/View;

    const v1, 0x7f08019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method private cleanupResouces()V
    .locals 3

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupResouces >>>>>mFragmentView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    return-void
.end method

.method private clickDialkey(I)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_a
    sget-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->mMannerModePressed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    :cond_0
    sput-boolean v1, Lcom/android/dialer/dialpad/DialpadFragment;->mMannerModePressed:Z

    goto :goto_0

    :pswitch_b
    sget-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->mMannerModePressed:Z

    if-nez v0, :cond_1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    :cond_1
    sput-boolean v1, Lcom/android/dialer/dialpad/DialpadFragment;->mMannerModePressed:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080189
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private connectToParsingService()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.parser"

    const-string v2, "com.sec.android.app.parser.ParseService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mParserServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private disconnectParsingService()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mParserServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mParserServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "tel"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-boolean v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getReplaceGsmCharToAndroidFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "W"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/dialer/dialpad/DialpadFragment;->isCalldedWithSpecialChar(Landroid/content/Intent;)Z

    move-result v1

    invoke-direct {p0, v0, v3, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v6

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "vnd.android.cursor.item/phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v7

    const-string v4, "number_key"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getReplaceGsmCharToAndroidFormat()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "P"

    const-string v3, ","

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "W"

    const-string v3, ";"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move v0, v7

    goto/16 :goto_0
.end method

.method private getLatestLogsNumber()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v2, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "number"

    aput-object v1, v2, v0

    const-string v0, "content://logs/addcall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "getLatestLogsNumber() is called "

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v7, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    const-string v1, "number"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "-2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "-3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_3
    move-object v0, v6

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_7
    :goto_1
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLatestLogsNumber providerClient has exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_8
    throw v1
.end method

.method private handleDialButtonClickWithEmptyDigits()V
    .locals 3

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getLatestLogsNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v1, v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->showToastEnterNumber()V

    goto :goto_0
.end method

.method private static isAddCallMode(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "add_call_mode"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_1
    return v0
.end method

.method private static isCalldedWithSpecialChar(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "called_from_miniphone"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "withSpecialChar"

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isLayoutReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isNonSeparator(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoicemailAvailable()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialpadImpl;->getVoiceMailNumber()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "SecurityException is thrown. Maybe privilege isn\'t sufficient."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDigitsNumber()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedDigitsNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedDigitsNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedDigitsNumber is not null : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedDigitsNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getReplaceGsmCharToAndroidFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedDigitsNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "W"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedDigitsNumber:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedDigitsNumber:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/EllipsisTextView;->setSelection(I)V

    iput-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedDigitsNumber:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "mSavedDigitsNumber is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialpadImpl;->setPrefixNumber()V

    goto :goto_0
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    :goto_0
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    const-string v0, ")"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_3
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    const-string v0, "("

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    :goto_4
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_4

    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mannerModeSet()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->setRingerMode(Z)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e020d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->setRingerMode(Z)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e020e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private newVoicemailIntent()Landroid/content/Intent;
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x1000

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "voicemail"

    const-string v3, ""

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private nullViewDrawable(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private nullViewDrawablesRecursive(Landroid/view/View;)V
    .locals 6

    if-eqz p1, :cond_1

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->nullViewDrawable(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private phoneIsCdma()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "persist.radio.calldefault.simid"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CDMA"

    const-string v3, "gsm.sim.selectnetwork"

    const-string v4, "CDMA"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "phone.getActivePhoneType() failed"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private phoneIsRinging()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.phoneIsRinging() failed"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private playTone(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private registerHoverListener()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/dialer/dialpad/DialpadUtil;->isTalkBackExploreByTouchMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/dialer/dialpad/DialpadUtil;->isRapidInputMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->setHoverListenerForExploreByTouch()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadHoverImpl:Lcom/samsung/dialer/impl/DialpadHoverImpl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/dialer/impl/DialpadHoverImpl;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/dialer/impl/DialpadHoverImpl;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadHoverImpl:Lcom/samsung/dialer/impl/DialpadHoverImpl;

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadHoverImpl:Lcom/samsung/dialer/impl/DialpadHoverImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialpadHoverImpl;->setupKeypadHoverListener()V

    goto :goto_0
.end method

.method private returnToInCallScreen(Z)V
    .locals 3

    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "phone.showCallScreenWithDialpad() failed"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEYSTRING"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsServiceJustConnected:Z

    if-eqz v2, :cond_1

    const-string v2, "USERDATA"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mReceiveMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, "USERDATA"

    iget-boolean v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getReplaceGsmCharToAndroidFormat()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "W"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p3, :cond_3

    :goto_1
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisablePhoneNumberFormatting()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "ext."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " ext. "

    const-string v2, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, p1

    goto :goto_0
.end method

.method private setHoverListenerForExploreByTouch()V
    .locals 3

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "setHoverListenerForExploreByTouch.."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mExploreByTouchListener:Lcom/samsung/dialer/dialpad/ExploreByTouchListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;

    invoke-direct {v0}, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mExploreByTouchListener:Lcom/samsung/dialer/dialpad/ExploreByTouchListener;

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->HOVER_DIALPAD_VIEW_IDS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->HOVER_DIALPAD_VIEW_IDS:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mExploreByTouchListener:Lcom/samsung/dialer/dialpad/ExploreByTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f08019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mExploreByTouchListener:Lcom/samsung/dialer/dialpad/ExploreByTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method private setRingerMode(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_in_silent"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_2
    return-void

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2
.end method

.method private showDialConference(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialConference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadStub:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadStub:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0, v4}, Lcom/android/dialer/dialpad/EllipsisTextView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialPad:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialPad:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialConferenceButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialConferenceButton:Landroid/widget/ImageButton;

    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadStub:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadStub:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0, v3}, Lcom/android/dialer/dialpad/EllipsisTextView;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialPad:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialPad:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialConferenceButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialConferenceButton:Landroid/widget/ImageButton;

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private showDialpadChooser(Z)V
    .locals 8

    const v7, 0x7f08019f

    const v6, 0x7f080001

    const/high16 v5, 0x7f08

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "showDialpadChooser is not LayoutReady return"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialpadChooser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a006f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadStub:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadStub:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialPad:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialPad:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    :cond_7
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0, v4}, Lcom/android/dialer/dialpad/EllipsisTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a006e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialConference(Z)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialPad:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialPad:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0, v3}, Lcom/android/dialer/dialpad/EllipsisTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2
.end method

.method private showToastEnterNumber()V
    .locals 3

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToastEnterNumber:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToastEnterNumber:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToastEnterNumber:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e02b9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToastEnterNumber:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToastEnterNumber:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private stopTone()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "stopTone: mToneGenerator == null"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private unRegisterHoverListener()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/dialer/dialpad/DialpadUtil;->isTalkBackExploreByTouchMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/dialer/dialpad/DialpadUtil;->isRapidInputMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->cleanupHoverListenerForExploreByTouch()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadHoverImpl:Lcom/samsung/dialer/impl/DialpadHoverImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadHoverImpl:Lcom/samsung/dialer/impl/DialpadHoverImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialpadHoverImpl;->cleanupKeypadHoverListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadHoverImpl:Lcom/samsung/dialer/impl/DialpadHoverImpl;

    goto :goto_0
.end method

.method private updateCallIcon(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEasyMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEmergencyMode:Z

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0e046a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    const v1, 0x7f0200f3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0e046b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    const v1, 0x7f0e0469

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const v1, 0x7f0200e9

    goto :goto_0

    :cond_4
    const v1, 0x7f0e0487

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const v1, 0x7f020154

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    const v1, 0x7f020062

    goto :goto_3
.end method


# virtual methods
.method protected addDialButtonsListener(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f080199

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v0}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->isImsOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateCallIcon(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    const v0, 0x7f08019a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    const v0, 0x7f0801a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/dialer/impl/DialpadImpl;->customListener(Lcom/android/dialer/dialpad/DialpadFragment;)V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "<<<<<<<<<<<<<<<<<<<afterTextChanged>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPreviousString:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPreviousString:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->visibilityChanged:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "ignore second same string"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->visibilityChanged:Z

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPreviousString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->connectServiceToSCParser(Landroid/text/Editable;)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v2, v4}, Lcom/android/dialer/dialpad/EllipsisTextView;->setCursorVisible(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v2, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->requestSmartDialSearch(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v2, p1}, Lcom/samsung/dialer/impl/DialpadImpl;->setLocalName(Landroid/text/Editable;)V

    goto :goto_0

    :cond_3
    instance-of v2, v0, Lcom/samsung/dialer/impl/DialerTutorialActivity;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->requestSmartDialSearch(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected assembleDialer(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "assembleDialer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialEdittext:Landroid/widget/FrameLayout;

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEasyMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEmergencyMode:Z

    if-eqz v0, :cond_3

    :cond_1
    const v0, 0x7f03007b

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadEditText:Landroid/view/View;

    :goto_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialEdittext:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadEditText:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->setEditTextView(Landroid/view/View;)V

    const v0, 0x7f0801a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialPad:Landroid/widget/FrameLayout;

    const v0, 0x7f030074

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialPad:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f0801a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadStub:Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadStub:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadStub:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    const v0, 0x7f0801a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/widget/FrameLayout;

    const-string v0, "VZW"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getOpStyleVariation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEmergencyMode:Z

    if-eqz v0, :cond_4

    const v0, 0x7f030078

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadButtonView:Landroid/view/View;

    :goto_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/dialer/impl/DialpadImpl;->setLocalLayout(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f03007a

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadEditText:Landroid/view/View;

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEasyMode:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEmergencyMode:Z

    if-eqz v0, :cond_6

    :cond_5
    const v0, 0x7f030077

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadButtonView:Landroid/view/View;

    goto :goto_2

    :cond_6
    const v0, 0x7f030076

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadButtonView:Landroid/view/View;

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    return-void
.end method

.method public callDefualtVoicemail()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v1}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->isLowSignal()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    const v1, 0x7f0e0402

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->showErrorDialog(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isVoicemailAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->newVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    sput-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsAirplaneModeOn:Z

    :try_start_0
    sget-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsAirplaneModeOn:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const v1, 0x7f0e0231

    invoke-static {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(II)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "voicemail_request_during_airplane_mode"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "callDefualtVoicemail"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :cond_5
    const v0, 0x7f0e02ba

    const v1, 0x7f0e0230

    :try_start_1
    invoke-static {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(II)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "voicemail_not_ready"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public callVoicemail()V
    .locals 2

    sget-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->isSpeedPopupRunnging:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v0}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->isLowSignal()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    const v1, 0x7f0e0402

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->showErrorDialog(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->isSpeedPopupRunnging:Z

    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$BlockSpeeddial;

    sget-boolean v1, Lcom/android/dialer/dialpad/DialpadFragment;->isSpeedPopupRunnging:Z

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment$BlockSpeeddial;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;Z)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialpadImpl;->callVoicemailVariation()V

    goto :goto_0
.end method

.method public checkReturnToInCallScreen()V
    .locals 3

    const-string v0, "com.android.dialer.DialtactsActivity"

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "redirect_from"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.dialer.DialtactsActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method public clearDialString()V
    .locals 8

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/android/dialer/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v0

    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/android/dialer/dialpad/EllipsisTextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-ne v5, v4, :cond_1

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v6, ""

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_1
    const-string v6, ""

    invoke-interface {v1, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/android/dialer/dialpad/EllipsisTextView;->length()I

    move-result v2

    const-string v6, ""

    invoke-interface {v1, v7, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method public clearDialpad()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0, v2}, Lcom/samsung/dialer/impl/DialpadImpl;->setLocalName(Landroid/text/Editable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->mRoamingAutoDialTempOff:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/impl/DialpadImpl;->setLocalLayoutText(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedDigitsNumber:Ljava/lang/String;

    return-void
.end method

.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsNeedConfigureScreen:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "configureScreenFromIntent mIsNeedConfigureScreen is false. return"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v4, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Screen configuration is requested before onCreateView() is called. Ignored"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/dialer/dialpad/DialpadFragment;->isAddCallMode(Landroid/content/Intent;)Z

    move-result v0

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureScreenFromIntent, isAddCallMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    move-result v0

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureScreenFromIntent, mStartedFromNewIntent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", digitsFilled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureScreenFromIntent, action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/contacts/ContactsUtils;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsRinging()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooserWithAddCall:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    :cond_4
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureScreenFromIntent, needToShowDialpadChooser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    sput-boolean v4, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialConferenceButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialConferenceButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected connectServiceToSCParser(Landroid/text/Editable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDialpadNumberSharpAction()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-static {v1, v0, v2}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsServiceJustConnected:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->connectToParsingService()V

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->sendMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dialButtonPressed()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v2}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->isLowSignal()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    const v1, 0x7f0e0402

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->showErrorDialog(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Error: Cannot dial.  Please provide conference recipients."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "persist.radio.otaspdial"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "The phone number is prohibited explicitly by a rule."

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    const v0, 0x7f0e022f

    invoke-static {v0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "phone_prohibited_dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v1, v0}, Lcom/samsung/dialer/impl/DialpadImpl;->dialNumber(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    goto/16 :goto_1
.end method

.method public dialConferenceButtonPressed()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialConference(Z)V

    return-void
.end method

.method public dialpadChooserVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDigitsWidget()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    return-object v0
.end method

.method public getSpeedDialNumber(JZ)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x1

    const-string v6, ""

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_AddPreloadedSpeedDialAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :try_start_0
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "number"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    long-to-int v3, p1

    invoke-virtual {v2, v3}, Lcom/samsung/dialer/impl/DialpadImpl;->showSpeedDialDlg(I)V

    move-object v2, v6

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    long-to-int v2, p1

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/impl/DialpadImpl;->showSpeedDialDlg(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v1, v6

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v6

    :goto_3
    :try_start_3
    sget-object v3, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpeedDialNumber providerClient has exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_4
    throw v1

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public inflateDialpad()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/android/contacts/activities/PeopleActivity;->requestSmartDialSearch(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/DialpadImpl;->callChangeToSecPhoneDialog()V

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadEditText:Landroid/view/View;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "mDialpadEditText is not null"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->phoneIsInUse()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    instance-of v1, v0, Lcom/samsung/dialer/impl/DialerTutorialActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->requestSmartDialSearch(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "inflateDialpad"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "mFragmentView is not created"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mViewGroup:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/android/dialer/dialpad/DialpadFragment;->assembleDialer(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->addDialButtonsListener(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->registerHoverListener()V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_6

    sput-boolean v3, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    :cond_6
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->setDialpadChooser()V

    move v1, v2

    goto :goto_1
.end method

.method public isDigitsEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyPressed(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v2, p1}, Lcom/samsung/dialer/impl/DialpadImpl;->checkPrefixNumber(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v2, p1, v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->getSelectionEnd()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v2, v4}, Lcom/android/dialer/dialpad/EllipsisTextView;->setCursorVisible(Z)V

    :cond_0
    return-void

    :pswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x4

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x5

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_5
    const/4 v2, 0x6

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x7

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_7
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_8
    const/16 v2, 0x9

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, v4, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_a
    const/16 v2, 0xb

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_b
    const/16 v2, 0xa

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult >>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "index"

    const/4 v1, -0x2

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v0, -0x2

    if-ne v8, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_9

    const-string v0, "phone_data_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v0, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const-wide/16 v6, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "data"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_2
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_c

    :cond_2
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_c

    :try_start_1
    const-string v2, "is_super_primary"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "_id"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    const/4 v1, 0x1

    move-wide v2, v6

    :goto_4
    if-nez v1, :cond_3

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "_id"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    move-wide v1, v2

    :goto_5
    if-eqz v4, :cond_4

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-wide v0, v1

    :goto_6
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "key_number"

    add-int/lit8 v4, v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "speed_dial_data_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_5
    :goto_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e03d4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Contact uri is null, contact does not exist."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    :try_start_5
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto/16 :goto_3

    :catch_1
    move-exception v1

    move-object v3, v1

    move-wide v1, v6

    :goto_8
    :try_start_6
    sget-object v4, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult providerClient has exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-wide v0, v1

    goto/16 :goto_6

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_8
    throw v1

    :cond_9
    const-string v0, "phone_data_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    :try_start_7
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult2 providerClient has exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_a
    throw v0

    :catch_3
    move-exception v1

    move-object v9, v1

    move-wide v10, v2

    move-wide v1, v10

    move-object v3, v9

    goto :goto_8

    :catch_4
    move-exception v3

    goto :goto_8

    :cond_b
    move-wide v0, v1

    goto/16 :goto_6

    :cond_c
    move-wide v2, v6

    goto/16 :goto_4

    :cond_d
    move-wide v1, v6

    goto/16 :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/dialer/impl/DialpadImpl;->onCustomClick(Landroid/view/View;)V

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onClick() event from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->clickDialkey(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mContext:Landroid/content/Context;

    const-string v1, "0001"

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialpadImpl;->directCallVoicemail()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialpadImpl;->showOTADlg()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressed()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/EllipsisTextView;->setCursorVisible(Z)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->dialConferenceButtonPressed()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080189
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreate >>>>>"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEasyMode:Z

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEmergencyMode:Z

    sget-object v1, Lcom/android/contacts/ContactsApplication;->dialerEnter:Lcom/samsung/contacts/ContactsPerformance;

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v3}, Lcom/samsung/contacts/ContactsPerformance;->startTimeAndMemoryStamp(Landroid/content/Context;ZLjava/lang/String;)Z

    sget-object v1, Lcom/android/contacts/ContactsApplication;->dialerEnter:Lcom/samsung/contacts/ContactsPerformance;

    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateStart(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/common/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/dialer/dialpad/DialpadFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->mRoamingAutoDialTempOff:Ljava/lang/Boolean;

    sput-boolean v5, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooserWithAddCall:Z

    if-eqz p1, :cond_0

    const-string v1, "pref_digits_filled_by_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    const-string v1, "last_digits"

    invoke-virtual {p1, v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedDigitsNumber:Ljava/lang/String;

    const-string v1, "AutoDial_temp_data"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->mRoamingAutoDialTempOff:Ljava/lang/Boolean;

    const-string v1, "local_layout_text"

    invoke-virtual {p1, v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedLocalLayoutText:Ljava/lang/String;

    const-string v1, "search_result_dialog"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedIsShowSearchResult:Z

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->phoneIsInUse()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreate restore showDialpadChooserWithAddCall"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "chooser_with_addcall"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooserWithAddCall:Z

    const-string v1, "show_dialpad_chooser"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->connectToParsingService()V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/contacts/util/ImsLowSignalHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLowSignalHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->registerForLowSignal(Landroid/os/Handler;)V

    :cond_2
    if-nez p1, :cond_3

    iput-boolean v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsNeedConfigureScreen:Z

    :cond_3
    sget-object v1, Lcom/android/contacts/ContactsApplication;->dialerEnter:Lcom/samsung/contacts/ContactsPerformance;

    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateEnd(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Vibrate control bool missing."

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f110008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView >>>>>"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/contacts/ContactsApplication;->dialerEnter:Lcom/samsung/contacts/ContactsPerformance;

    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateViewStart(Ljava/lang/String;)V

    const v1, 0x7f03007c

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/dialer/impl/DialpadImpl;

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;

    invoke-direct {v3, p0}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/dialer/impl/DialpadImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;)V

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    if-eqz p3, :cond_1

    const-string v1, "speed_dial_num"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialNumber:I

    const-string v1, "speed_dial"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDial:Z

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateView mSpeedDial : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDial:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSpeedDialNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDial:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialNumber:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    iget v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialNumber:I

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/impl/DialpadImpl;->showSpeedDialDlg(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    const-string v2, "check_prefix_number"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/impl/DialpadImpl;->setCheckPrefixNumber(Z)V

    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/dialer/dialpad/DialpadFragment;->saveFragmentView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/DialpadImpl;->changeOnehandOperationLayout()V

    sget-object v1, Lcom/android/contacts/ContactsApplication;->dialerEnter:Lcom/samsung/contacts/ContactsPerformance;

    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateViewEnd(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy >>>>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->disconnectParsingService()V

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->cleanupResouces()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    iget v0, v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    packed-switch v0, :pswitch_data_0

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick: unexpected itemId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    :pswitch_2
    sput-boolean v2, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooserWithAddCall:Z

    sput-boolean v1, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->setDialpadChooser()V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/16 v5, 0x42

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    if-ne p2, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0801a4

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKey(), keyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_0
    if-ne p2, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->clickDialkey(I)V

    move v0, v2

    goto :goto_0

    :sswitch_1
    if-eq p2, v5, :cond_3

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialpadImpl;->showOTADlg()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressed()V

    :cond_4
    move v0, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08019c -> :sswitch_1
        0x7f0801a4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLongClick >>>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sput-boolean v1, Lcom/android/dialer/dialpad/DialpadFragment;->mMannerModePressed:Z

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v1

    :cond_1
    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialString()V

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnablegActionForDialOneLong()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isVoicemailAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->callVoicemail()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v1, v0

    :cond_4
    if-eqz v1, :cond_5

    const v1, 0x7f0e0231

    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "voicemail_request_during_airplane_mode"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const v1, 0x7f0e02ba

    const v2, 0x7f0e0230

    invoke-static {v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(II)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "voicemail_not_ready"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->SpeedDialParser(J)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_3
    const-wide/16 v2, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->SpeedDialParser(J)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto/16 :goto_1

    :pswitch_4
    const-wide/16 v2, 0x3

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->SpeedDialParser(J)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto/16 :goto_1

    :pswitch_5
    const-wide/16 v2, 0x4

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->SpeedDialParser(J)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto/16 :goto_1

    :pswitch_6
    const-wide/16 v2, 0x5

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->SpeedDialParser(J)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto/16 :goto_1

    :pswitch_7
    const-wide/16 v2, 0x6

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->SpeedDialParser(J)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto/16 :goto_1

    :pswitch_8
    const-wide/16 v2, 0x7

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->SpeedDialParser(J)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto/16 :goto_1

    :pswitch_9
    const-wide/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->SpeedDialParser(J)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto/16 :goto_1

    :pswitch_a
    const-wide/16 v2, 0x9

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->SpeedDialParser(J)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto/16 :goto_1

    :pswitch_b
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->SpeedDialParser(J)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x51

    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_1

    :pswitch_c
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v2, v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->setCursorVisible(Z)V

    move v0, v1

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialString(C)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->mannerModeSet()V

    sput-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->mMannerModePressed:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080189
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_b
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_1
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause >>>>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->registerImsReceiver(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    iput v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->unRegisterHoverListener()V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iput-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;

    :cond_2
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialpadImpl;->unregisterReceiverVariation()V

    invoke-static {}, Lcom/android/dialer/SpecialCharSequenceMgr;->cleanup()V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_4
    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsNeedConfigureScreen:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 3

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPressed(). view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pressed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onTouch(ACTION_DOWN) event from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    iget v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    if-gez v0, :cond_2

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "mKeyPressCount become negative."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f080189
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onResume()V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "onResume >>>>>"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/contacts/ContactsApplication;->dialerEnter:Lcom/samsung/contacts/ContactsPerformance;

    sget-object v3, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/ContactsPerformance;->getOnResumeStart(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEasyMode:Z

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEmergencyMode:Z

    new-instance v0, Landroid/media/SoundPool;

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v0, v3, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundTone:I

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->checkSystemSetting()V

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v4, 0x8

    const/16 v5, 0x50

    invoke-direct {v0, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v3, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0, v7}, Lcom/android/dialer/dialpad/EllipsisTextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_2

    sput-boolean v2, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->setDialpadChooser()V

    :cond_3
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->registerImsReceiver(Z)V

    :cond_5
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableIpCall()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/dialer/impl/DialpadImpl;->customListener(Lcom/android/dialer/dialpad/DialpadFragment;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->registerHoverListener()V

    :cond_7
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->loadDigitsNumber()V

    instance-of v3, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v3}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedIsShowSearchResult:Z

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->requestSmartDialSearch(Ljava/lang/String;ZZ)V

    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedIsShowSearchResult:Z

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedLocalLayoutText:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedLocalLayoutText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/impl/DialpadImpl;->setLocalLayoutText(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedLocalLayoutText:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialpadImpl;->registerReceiverVariation()V

    sget-object v0, Lcom/android/contacts/ContactsApplication;->dialerEnter:Lcom/samsung/contacts/ContactsPerformance;

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getOnResumeEnd(Ljava/lang/String;)V

    return-void

    :cond_a
    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v4, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught while creating local tone generator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_b
    instance-of v0, v0, Lcom/samsung/dialer/impl/DialerTutorialActivity;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->requestSmartDialSearch(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "pref_digits_filled_by_intent"

    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v0, :cond_5

    const-string v0, "last_digits"

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "speed_dial_num"

    iget v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "speed_dial"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getDialpadSearchImpl()Lcom/samsung/dialer/impl/DialpadSearchImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->isShowingSearchDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "search_result_dialog"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const-string v0, "AutoDial_temp_data"

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->mRoamingAutoDialTempOff:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialpadImpl;->getLocalLayoutText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "local_layout_text"

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/DialpadImpl;->getLocalLayoutText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/contacts/ContactsUtils;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState, showDialpadChooserWithAddCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooserWithAddCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needToShowDialpadChooser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chooser_with_addcall"

    sget-boolean v1, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooserWithAddCall:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "show_dialpad_chooser"

    sget-boolean v1, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    const-string v0, "check_prefix_number"

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/DialpadImpl;->getCheckPrefixNumber()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooserWithAddCall:Z

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedDigitsNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "last_digits"

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSavedDigitsNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart >>>>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/contacts/ContactsApplication;->dialerEnter:Lcom/samsung/contacts/ContactsPerformance;

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getOnStartStart(Ljava/lang/String;)V

    sget-object v0, Lcom/android/contacts/ContactsApplication;->dialerEnter:Lcom/samsung/contacts/ContactsPerformance;

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getOnStartEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/high16 v2, 0x3f80

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundTone:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    return v4
.end method

.method public onTrimMemory(I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadEditText:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialEdittext:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadEditText:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialPad:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadEditText:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadButtonView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadEditText:Landroid/view/View;

    iput-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    iput-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadButtonView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPreviousString:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadHoverImpl:Lcom/samsung/dialer/impl/DialpadHoverImpl;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->cleanupDialpadSearchView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Dialpad is not created"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveFragmentView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mViewGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method public setDialpadChooser()V
    .locals 3

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisableDialpadChooser()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "no support dialpad chooser - csc feature is none"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->checkReturnToInCallScreen()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialpadChooser, showDialpadChooserWithAddCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooserWithAddCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needToShowDialpadChooser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooserWithAddCall:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->needToShowDialpadChooser:Z

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0
.end method

.method protected setEditTextView(Landroid/view/View;)V
    .locals 6

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const v1, 0x7f080196

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    const v1, 0x7f08019c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/dialpad/EllipsisTextView;

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    sget-object v2, Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;->INSTANCE:Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v1, p0}, Lcom/android/dialer/dialpad/EllipsisTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v1, p0}, Lcom/android/dialer/dialpad/EllipsisTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v1, p0}, Lcom/android/dialer/dialpad/EllipsisTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->setScaledWidth(F)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    sget-object v2, Lcom/android/contacts/ContactsApplication;->ttfEditTextTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->setScaledDensity(F)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v1, p0}, Lcom/android/dialer/dialpad/EllipsisTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->forceHideSoftInput(Z)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisablePhoneNumberFormatting()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->setFontSize(I)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->getTextSize()F

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/android/dialer/dialpad/EllipsisTextView;->getFontSizeRatio()D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->setMaxTextSize(F)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->getTextSize()F

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/android/dialer/dialpad/EllipsisTextView;->getFontSizeRatio()D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->setMinTextSize(F)V

    const/4 v0, 0x0

    const v1, 0x7f08019e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->loadDigitsNumber()V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/impl/DialpadImpl;->setLocalName(Landroid/text/Editable;)V

    return-void
.end method

.method public setStartedFromNewIntent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    return-void
.end method

.method protected setupKeypad(Landroid/view/View;)V
    .locals 16

    const/16 v1, 0xc

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    const/16 v1, 0xc

    new-array v9, v1, [I

    fill-array-data v9, :array_1

    const/16 v1, 0xc

    new-array v10, v1, [I

    fill-array-data v10, :array_2

    const/16 v1, 0xc

    new-array v11, v1, [I

    fill-array-data v11, :array_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v2, 0x7f02004c

    const v1, 0x7f02004e

    move v5, v1

    move v6, v2

    :goto_0
    const/4 v1, 0x0

    move v7, v1

    :goto_1
    array-length v1, v8

    if-ge v7, v1, :cond_11

    aget v1, v8, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/dialpad/DialpadKeyButton;

    const v2, 0x7f0801a4

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    aget v3, v8, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v3, 0x1

    if-ne v7, v3, :cond_8

    const v3, 0x7f0801a5

    invoke-virtual {v1, v3}, Lcom/android/dialer/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_2
    const v3, 0x7f0801a7

    invoke-virtual {v1, v3}, Lcom/android/dialer/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aget v4, v9, v7

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v4, 0x7f0801a6

    invoke-virtual {v1, v4}, Lcom/android/dialer/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v14, Lcom/android/contacts/ContactsApplication;->ttfNumTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mEasyMode:Z

    if-eqz v14, :cond_b

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getUseFixedFontSizeForKeypadLettter()Z

    move-result v14

    if-eqz v14, :cond_9

    const-string v14, "zh_TW"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    const/high16 v15, 0x4234

    invoke-virtual {v4, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e03d0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/dialer/dialpad/DialpadFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13}, Lcom/android/dialer/dialpad/DialpadFragment$3;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/DialpadKeyButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz v3, :cond_3

    aget v2, v10, v7

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/contacts/ContactsApplication;->ttfStringTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getUseFixedFontSizeForKeypadLettter()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "zh_HK"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "zh_TW"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mEasyMode:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    const/high16 v4, 0x4190

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    :goto_4
    if-nez v7, :cond_e

    const-string v2, "+"

    aget v4, v10, v7

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mEasyMode:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    const/high16 v4, 0x41f0

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    :goto_5
    aget v2, v11, v7

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const v3, 0x7f0801a8

    invoke-virtual {v1, v3}, Lcom/android/dialer/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/contacts/ContactsApplication;->ttfStringTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getUseFixedFontSizeForKeypadLettter()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "zh_HK"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "zh_TW"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mEasyMode:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    const/high16 v3, 0x4190

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    :goto_6
    if-nez v7, :cond_6

    const-string v2, "+"

    aget v3, v11, v7

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getUseFixedFontSizeForKeypadLettter()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "zh_TW"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    const/high16 v3, 0x41a0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1

    :cond_7
    const v2, 0x7f02004b

    const v1, 0x7f02004d

    move v5, v1

    move v6, v2

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xb

    if-ne v7, v3, :cond_0

    const v3, 0x7f0801a5

    invoke-virtual {v1, v3}, Lcom/android/dialer/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_9
    const/16 v14, 0xa

    if-ge v7, v14, :cond_a

    const/4 v14, 0x1

    const/high16 v15, 0x4260

    invoke-virtual {v4, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3

    :cond_a
    const/4 v14, 0x1

    const/high16 v15, 0x4240

    invoke-virtual {v4, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3

    :cond_b
    const/4 v14, 0x1

    const/high16 v15, 0x4234

    invoke-virtual {v4, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x1

    const/high16 v4, 0x4180

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_4

    :cond_d
    const/4 v2, 0x1

    const/high16 v4, 0x41e0

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    :cond_e
    const/16 v2, 0xa

    if-ne v7, v2, :cond_3

    const-string v2, "P"

    aget v4, v10, v7

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mEasyMode:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    const/high16 v4, 0x41a0

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    :cond_f
    const/4 v2, 0x1

    const/high16 v4, 0x4190

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    :cond_10
    const/4 v2, 0x1

    const/high16 v3, 0x4180

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_6

    :cond_11
    return-void

    :array_0
    .array-data 0x4
        0x93t 0x1t 0x8t 0x7ft
        0x89t 0x1t 0x8t 0x7ft
        0x8at 0x1t 0x8t 0x7ft
        0x8bt 0x1t 0x8t 0x7ft
        0x8ct 0x1t 0x8t 0x7ft
        0x8dt 0x1t 0x8t 0x7ft
        0x8et 0x1t 0x8t 0x7ft
        0x8ft 0x1t 0x8t 0x7ft
        0x90t 0x1t 0x8t 0x7ft
        0x91t 0x1t 0x8t 0x7ft
        0x92t 0x1t 0x8t 0x7ft
        0x94t 0x1t 0x8t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xact 0x3t 0xet 0x7ft
        0xadt 0x3t 0xet 0x7ft
        0xaet 0x3t 0xet 0x7ft
        0xaft 0x3t 0xet 0x7ft
        0xb0t 0x3t 0xet 0x7ft
        0xb1t 0x3t 0xet 0x7ft
        0xb2t 0x3t 0xet 0x7ft
        0xb3t 0x3t 0xet 0x7ft
        0xb4t 0x3t 0xet 0x7ft
        0xb5t 0x3t 0xet 0x7ft
        0xb6t 0x3t 0xet 0x7ft
        0xb7t 0x3t 0xet 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0xb8t 0x3t 0xet 0x7ft
        0xb9t 0x3t 0xet 0x7ft
        0xbat 0x3t 0xet 0x7ft
        0xbbt 0x3t 0xet 0x7ft
        0xbct 0x3t 0xet 0x7ft
        0xbdt 0x3t 0xet 0x7ft
        0xbet 0x3t 0xet 0x7ft
        0xbft 0x3t 0xet 0x7ft
        0xc0t 0x3t 0xet 0x7ft
        0xc1t 0x3t 0xet 0x7ft
        0xc2t 0x3t 0xet 0x7ft
        0xc3t 0x3t 0xet 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xc4t 0x3t 0xet 0x7ft
        0xc5t 0x3t 0xet 0x7ft
        0xc6t 0x3t 0xet 0x7ft
        0xc7t 0x3t 0xet 0x7ft
        0xc8t 0x3t 0xet 0x7ft
        0xc9t 0x3t 0xet 0x7ft
        0xcat 0x3t 0xet 0x7ft
        0xcbt 0x3t 0xet 0x7ft
        0xcct 0x3t 0xet 0x7ft
        0xcdt 0x3t 0xet 0x7ft
        0xcet 0x3t 0xet 0x7ft
        0xcft 0x3t 0xet 0x7ft
    .end array-data
.end method

.method public updateDialString(C)V
    .locals 4

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Not expected for anything other than PAUSE & WAIT"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateDialString, mDigits\'s null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/EllipsisTextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->length()I

    move-result v0

    move v1, v0

    :cond_3
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v1, v0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->canAddDigit(Ljava/lang/CharSequence;IIC)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/EllipsisTextView;->setSelection(I)V

    goto :goto_0
.end method
