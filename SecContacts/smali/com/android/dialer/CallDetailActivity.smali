.class public Lcom/android/dialer/CallDetailActivity;
.super Landroid/app/Activity;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/dialer/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;,
        Lcom/android/dialer/CallDetailActivity$ActivityReference;,
        Lcom/android/dialer/CallDetailActivity$PlaybackViewImpl;,
        Lcom/android/dialer/CallDetailActivity$ViewEntry;,
        Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;,
        Lcom/android/dialer/CallDetailActivity$Tasks;
    }
.end annotation


# static fields
.field private static final HAS_CONTENT_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field static final PHOTO_PROJECTION:[Ljava/lang/String;

.field public static flexibleHeight:I

.field public static mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;


# instance fields
.field public bCheckedBefore:Z

.field public keyPressed:Z

.field private mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

.field public mAddToRejectListDialog:Landroid/app/AlertDialog;

.field private mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

.field private mCallDetailButtonsContainer:Landroid/widget/LinearLayout;

.field public mCallDetailImpl:Lcom/samsung/dialer/impl/CallDetailImpl;

.field public mCnapName:Ljava/lang/String;

.field private mCompany:Ljava/lang/String;

.field private mCompanyTitle:Ljava/lang/String;

.field private mContactBackgroundButton:Landroid/widget/ImageButton;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field public mContactId:J

.field private mContactNButtonsLayout:Landroid/widget/RelativeLayout;

.field private mContactPhotoView:Landroid/widget/ImageView;

.field mContactUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDefaultCountryIso:Ljava/lang/String;

.field public mE164Number:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mHistoryList:Landroid/widget/ListView;

.field private mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsPostExcuteDone:Z

.field private mIsSavedContact:Z

.field private mIsScoverFeatureEnabled:Z

.field private mIsThumbnailUri:Z

.field private mJobTitle:Ljava/lang/String;

.field public mLogId:Ljava/lang/String;

.field private mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

.field public mName:Ljava/lang/String;

.field public mNormalizedNumber:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field mOMenuController:Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuControllerImpl;

.field private mPhoneContactObserver:Landroid/database/ContentObserver;

.field private mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

.field private mPlaybackLayout:Landroid/view/View;

.field private mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

.field private mRcsPinner:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

.field mResources:Landroid/content/res/Resources;

.field private mRunnable:Ljava/lang/Runnable;

.field private mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private mStatusMessageView:Landroid/view/View;

.field private mSystemUIBackgroundView:Landroid/view/View;

.field private mTertiaryActionListener:Landroid/view/View$OnClickListener;

.field private mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

.field public mVoiceMailNumber:Ljava/lang/String;

.field private statusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "photo_uri"

    aput-object v1, v0, v4

    const-string v1, "photo_thumb_uri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/dialer/CallDetailActivity;->PHOTO_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "has_content"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/dialer/CallDetailActivity;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactId:J

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mLogId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mE164Number:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNormalizedNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mCnapName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mCompanyTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mCompany:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mJobTitle:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/dialer/CallDetailActivity;->bCheckedBefore:Z

    new-instance v0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v2}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$1;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mContactUri:Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/android/dialer/CallDetailActivity;->mIsPostExcuteDone:Z

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    iput-boolean v3, p0, Lcom/android/dialer/CallDetailActivity;->mIsScoverFeatureEnabled:Z

    iput-boolean v3, p0, Lcom/android/dialer/CallDetailActivity;->mIsSavedContact:Z

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    iput-boolean v3, p0, Lcom/android/dialer/CallDetailActivity;->keyPressed:Z

    new-instance v0, Lcom/android/dialer/CallDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$1;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/dialer/CallDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$2;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/android/dialer/CallDetailActivity;->mIsThumbnailUri:Z

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/dialer/CallDetailActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/CallDetailActivity$3;-><init>(Lcom/android/dialer/CallDetailActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneContactObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/CallDetailActivity;)Lcom/samsung/contacts/util/ImsLowSignalHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/dialer/CallDetailActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->disableCallButton()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactNButtonsLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/dialer/CallDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/CallDetailActivity;->mIsScoverFeatureEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/dialer/CallDetailActivity;)Lcom/samsung/dialer/cover/MissedCallCoverManager;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mJobTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCompany:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/dialer/CallDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/CallDetailActivity;->mIsSavedContact:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/dialer/CallDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/CallDetailActivity;->mIsSavedContact:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/dialer/CallDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/CallDetailActivity;->mIsPostExcuteDone:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHistoryList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/dialer/CallDetailActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mHistoryList:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->getPhotoUribyId(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mSystemUIBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/dialer/CallDetailActivity;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/dialer/CallDetailActivity;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dialer/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;JZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->getPhoneCallDetailsImplForUri(Ljava/lang/String;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->configureActionBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dialer/CallDetailActivity;)Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mRcsPinner:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$ViewEntry;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/CallDetailActivity;->configureCallButton(Lcom/android/dialer/CallDetailActivity$ViewEntry;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/dialer/CallDetailActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/CallDetailActivity;->queryContact(J)V

    return-void
.end method

.method private closeSystemDialogs()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private configureCallButton(Lcom/android/dialer/CallDetailActivity$ViewEntry;I)V
    .locals 6

    const/4 v5, 0x0

    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080075

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f080077

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v3, 0x7f080076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallDetailImpl:Lcom/samsung/dialer/impl/CallDetailImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/dialer/impl/CallDetailImpl;->setCustomListener(Lcom/android/dialer/CallDetailActivity$ViewEntry;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/android/dialer/CallDetailActivity;->flexibleHeight:I

    if-nez v1, :cond_1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sput v0, Lcom/android/dialer/CallDetailActivity;->flexibleHeight:I

    :cond_1
    return-void
.end method

.method private createPlaybackViewImpl()Lcom/android/dialer/CallDetailActivity$PlaybackViewImpl;
    .locals 4

    new-instance v0, Lcom/android/dialer/CallDetailActivity$PlaybackViewImpl;

    new-instance v1, Lcom/android/dialer/CallDetailActivity$ActivityReference;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/CallDetailActivity$ActivityReference;-><init>(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$1;)V

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dialer/CallDetailActivity$PlaybackViewImpl;-><init>(Lcom/android/dialer/CallDetailActivity$ActivityReference;Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method private createScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private disableCallButton()V
    .locals 5

    const/16 v4, 0x8

    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030019

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static formatAsMinutesAndSeconds(I)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x63

    div-int/lit16 v2, p0, 0x3e8

    div-int/lit8 v1, v2, 0x3c

    mul-int/lit8 v3, v1, 0x3c

    sub-int/2addr v2, v3

    if-le v1, v0, :cond_0

    :goto_0
    const-string v1, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getPhoneCallDetailsImplForUri(Ljava/lang/String;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;
    .locals 35

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v7, 0x0

    const-string v3, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogDisplayType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v7, "_id DESC"

    :cond_0
    sget-object v3, Lcom/samsung/dialer/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/dialer/impl/CallLogQueryImpl;->CALL_DETAIL_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    if-eqz v28, :cond_1

    :try_start_0
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    if-eqz v28, :cond_2

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    :cond_3
    :try_start_1
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v0, v3, [Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    move-object/from16 v29, v0

    const/4 v3, 0x0

    move/from16 v27, v3

    :goto_0
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_f

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/4 v3, 0x2

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v3, 0x3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v3, 0x4

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    const/4 v3, 0x5

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x7

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v20, 0x0

    const/16 v4, 0x9

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const/16 v4, 0xc

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v4, 0x12c

    if-ne v14, v4, :cond_4

    const/16 v4, 0x8

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    move-object/from16 v26, v3

    :goto_1
    const-string v6, ""

    const-string v18, ""

    const/16 v17, 0x0

    const-string v16, ""

    const/4 v15, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v4}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v19, v15

    move-object v6, v3

    move-object/from16 v15, v18

    move-object/from16 v18, v9

    move-object/from16 v34, v16

    move/from16 v16, v17

    move-object/from16 v17, v34

    :goto_2
    new-instance v23, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v3, v1}, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    new-instance v3, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    const/4 v4, 0x1

    new-array v9, v4, [I

    const/4 v4, 0x0

    aput v31, v9, v4

    move/from16 v4, v30

    move-object/from16 v5, v25

    move-object/from16 v7, v26

    invoke-direct/range {v3 .. v24}, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;JLcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;Ljava/lang/String;)V

    aput-object v3, v29, v27

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v3, v27, 0x1

    move/from16 v27, v3

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableLTNCallerIDMatch()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v3

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static/range {v25 .. v25}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "CallDetailActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getPhoneCallDetailsForUri: mIsSpecialNum"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-le v4, v3, :cond_7

    if-nez v5, :cond_7

    invoke-static/range {v25 .. v25}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :goto_3
    if-nez v27, :cond_13

    sget-object v4, Lcom/android/dialer/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v19

    if-eqz v19, :cond_c

    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    const/4 v5, 0x0

    :goto_4
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisablePhoneNumberFormatting()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_5
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-wide/16 v32, 0x0

    cmp-long v3, v16, v32

    if-lez v3, :cond_12

    const/4 v3, 0x7

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/dialer/CallDetailActivity;->mContactUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_6
    move-object v9, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v15

    :goto_7
    if-eqz v19, :cond_6

    :try_start_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_6
    if-nez v7, :cond_11

    invoke-static/range {v25 .. v25}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_11

    move-object/from16 v18, v9

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    move/from16 v16, v6

    move-object v15, v3

    move-object v6, v3

    goto/16 :goto_2

    :cond_7
    sget-object v3, Lcom/samsung/dialer/calllog/LogsDBProvider;->PHOTE_LOOKUP_WITH_PROFILE:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_3

    :cond_8
    invoke-static/range {v25 .. v25}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/samsung/dialer/calllog/LogsDBProvider;->PHOTE_LOOKUP_WITH_PROFILE:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "sip"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_3

    :cond_9
    sget-object v3, Lcom/samsung/dialer/calllog/LogsDBProvider;->PHOTE_LOOKUP_WITH_PROFILE:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto/16 :goto_3

    :cond_a
    :try_start_4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_4

    :cond_b
    const/4 v3, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    :cond_c
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisablePhoneNumberFormatting()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v3, v25

    move-object v4, v15

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_7

    :cond_d
    invoke-static/range {v25 .. v26}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    move-object v4, v15

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_7

    :catchall_1
    move-exception v2

    if-eqz v19, :cond_e

    :try_start_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_f
    if-eqz v28, :cond_10

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_10
    return-object v29

    :cond_11
    move-object/from16 v18, v9

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    move/from16 v16, v6

    move-object v15, v7

    move-object v6, v3

    goto/16 :goto_2

    :cond_12
    move-object v3, v9

    goto/16 :goto_6

    :cond_13
    move-object/from16 v19, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v9

    move/from16 v34, v17

    move-object/from16 v17, v16

    move/from16 v16, v34

    goto/16 :goto_2

    :cond_14
    move-object/from16 v26, v3

    goto/16 :goto_1
.end method

.method private getPhotoUribyId(Ljava/lang/String;)Landroid/net/Uri;
    .locals 11

    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v3

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v0, "CallDetailActivity"

    const-string v1, "getPhotoUribyId"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableLTNCallerIDMatch()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "CallDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhotoUribyId: mIsSpecialNum"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-le v1, v0, :cond_4

    if-nez v2, :cond_4

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :goto_1
    move-object v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/dialer/CallDetailActivity;->PHOTO_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactId:J

    iget-wide v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactId:J

    cmp-long v0, v0, v9

    if-lez v0, :cond_6

    iput-boolean v8, p0, Lcom/android/dialer/CallDetailActivity;->mIsSavedContact:Z

    :goto_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_7

    move-object v0, v3

    :goto_4
    if-nez v1, :cond_8

    move-object v1, v3

    :goto_5
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-boolean v8, p0, Lcom/android/dialer/CallDetailActivity;->mIsThumbnailUri:Z

    :goto_6
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v3, "CallDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get photo data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "CallDetailActivity"

    const-string v2, "Get thumbnail data instead of full size photo data."

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/dialer/calllog/LogsDBProvider;->PHOTE_LOOKUP_WITH_PROFILE:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/samsung/dialer/calllog/LogsDBProvider;->PHOTE_LOOKUP_WITH_PROFILE:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_2

    :cond_6
    iput-boolean v7, p0, Lcom/android/dialer/CallDetailActivity;->mIsSavedContact:Z

    goto :goto_3

    :cond_7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    :cond_8
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5

    :cond_9
    iput-boolean v7, p0, Lcom/android/dialer/CallDetailActivity;->mIsThumbnailUri:Z

    goto :goto_6

    :cond_a
    iput-wide v9, p0, Lcom/android/dialer/CallDetailActivity;->mContactId:J

    iput-boolean v7, p0, Lcom/android/dialer/CallDetailActivity;->mIsSavedContact:Z

    move-object v1, v3

    move-object v0, v3

    goto :goto_6

    :catch_1
    move-exception v1

    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get photo data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private getVoicemailNumber()Ljava/lang/String;
    .locals 2

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVoicemailUri()Landroid/net/Uri;
    .locals 2

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method private isAutoBlockedLog(Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v9, v0

    :goto_0
    return v9

    :cond_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v2, v10, [Ljava/lang/String;

    const-string v1, "reject_flag"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/dialer/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "date DESC"

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "reject_flag"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    if-ne v8, v10, :cond_3

    const/4 v9, 0x1

    :cond_3
    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " === isAutoBlockedLog ===  autoRejected = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;JZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string v0, "CallDetailActivity"

    const-string v1, "load default image"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-static {v3, v2, p2, p3}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactNButtonsLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p2, p3}, Lcom/android/dialer/CallDetailActivity;->setRandomBackgroundColor(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    invoke-direct {p0, v2}, Lcom/android/dialer/CallDetailActivity;->setContactImageLayout(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CallDetailActivity"

    const-string v1, "load contact photo"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mLogId:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p4, :cond_0

    :cond_2
    new-instance v0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/dialer/util/CallDetailDrawableSetter;-><init>(Landroid/widget/ImageView;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->setupPhoto(Landroid/net/Uri;JLandroid/widget/ImageView;)V

    invoke-direct {p0, v3}, Lcom/android/dialer/CallDetailActivity;->setContactImageLayout(Z)V

    goto :goto_0
.end method

.method private loadPref()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "logslist_pref"

    invoke-virtual {p0, v0, v2}, Lcom/android/dialer/CallDetailActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reject_popup"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/CallDetailActivity;->bCheckedBefore:Z

    return-void
.end method

.method private markVoicemailAsRead(Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/CallDetailActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/dialer/CallDetailActivity$6;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/CallDetailActivity$6;-><init>(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private queryContact(J)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "contact_id"

    aput-object v0, v2, v5

    const-string v0, "display_name"

    aput-object v0, v2, v7

    const-string v0, "data1"

    aput-object v0, v2, v6

    const-string v0, "data4"

    aput-object v0, v2, v8

    const-string v3, "contact_id=? AND mimetype=? "

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "vnd.android.cursor.item/organization"

    aput-object v0, v4, v7

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mCompany:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mJobTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mCompanyTitle:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setContactImageLayout(Z)V
    .locals 6

    const/4 v5, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v0, "CallDetailActivity"

    const-string v1, "setContactImageLayout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/widget/StrokeTextView;

    const v1, 0x7f080069

    invoke-virtual {p0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/widget/StrokeTextView;

    const v2, 0x7f08006a

    invoke-virtual {p0, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/widget/StrokeTextView;

    invoke-virtual {v0, v5}, Lcom/samsung/contacts/widget/StrokeTextView;->setUseStroke(Z)V

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/widget/StrokeTextView;->setUseStroke(Z)V

    invoke-virtual {v2, v5}, Lcom/samsung/contacts/widget/StrokeTextView;->setUseStroke(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoView:Landroid/widget/ImageView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v4

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f080060

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/dialer/CallDetailActivity;->mIsSavedContact:Z

    if-eqz v1, :cond_4

    :goto_4
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    move v4, v3

    goto :goto_4
.end method

.method private setRandomBackgroundColor(J)I
    .locals 5

    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRandomBackgroundColor - id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :goto_0
    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRandomBackgroundColor - randomNum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRandomBackgroundColor - fallbacks[randomNum] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    aget v0, v1, v0

    return v0

    :cond_0
    const-wide/16 v2, 0x5

    rem-long v2, p1, v2

    long-to-int v0, v2

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x5ft 0x0t 0xat 0x7ft
        0x60t 0x0t 0xat 0x7ft
        0x61t 0x0t 0xat 0x7ft
        0x62t 0x0t 0xat 0x7ft
        0x63t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method private updateData(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/contacts/ContactsApplication;->callDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "CallDetailActivity"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getDBQueryStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;-><init>(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public canPlaceCallsTo()Z
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public disableProximitySensor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/dialer/ProximitySensorManager;->disable(Z)V

    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/dialer/ProximitySensorManager;->enable()V

    return-void
.end method

.method public getCallLogEntryUris(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mE164Number:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "e164_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mE164Number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNormalizedNumber:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "normalized_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mLogId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/dialer/CallDetailActivity;->isAutoBlockedLog(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reject_flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reject_flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    const-string v1, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogDisplayType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-virtual {v1, p1}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mCnapName:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cnap_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mLogId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/dialer/CallDetailActivity;->isAutoBlockedLog(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reject_flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cnap_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mCnapName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getContactUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRejectNumberCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/dialer/util/CallLogUtil;->getRejectNumberCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hideStrokeTextView()V
    .locals 2

    const/4 v1, 0x4

    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initVoicemail(ILandroid/net/Uri;Landroid/view/View;)V
    .locals 9

    const/4 v5, 0x0

    const-string v0, "CallDetailActivity"

    const-string v1, "initVoicemail"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vvm_id =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voicemailUri =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/android/dialer/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->createScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->createPlaybackViewImpl()Lcom/android/dialer/CallDetailActivity$PlaybackViewImpl;

    move-result-object v1

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lcom/android/dialer/util/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v6

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;Landroid/media/MediaPlayer;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/dialer/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onCreate()V

    invoke-direct {p0, p2}, Lcom/android/dialer/CallDetailActivity;->markVoicemailAsRead(Landroid/net/Uri;)V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "CallDetailActivity"

    const-string v1, "mPlaybackLayout.setVisibility(View.GONE)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initializeVoicemail()V
    .locals 9

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_VVM_ID"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "CallDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVoicemail  vvm_id =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f08005c

    invoke-virtual {p0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    if-eq v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sjssjs onCREATE  voicemailUri =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->createScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->createPlaybackViewImpl()Lcom/android/dialer/CallDetailActivity$PlaybackViewImpl;

    move-result-object v1

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lcom/android/dialer/util/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v6

    invoke-direct/range {v0 .. v8}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;Landroid/media/MediaPlayer;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/dialer/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onCreate()V

    invoke-direct {p0, v3}, Lcom/android/dialer/CallDetailActivity;->markVoicemailAsRead(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isSavedContact()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/CallDetailActivity;->mIsSavedContact:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "CallDetailActivity"

    const-string v3, "CallDetailActivity onCreate"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/contacts/ContactsApplication;->callDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v4, "CallDetailActivity"

    invoke-virtual {v2, v3, v7, v4}, Lcom/samsung/contacts/ContactsPerformance;->startTimeAndMemoryStamp(Landroid/content/Context;ZLjava/lang/String;)Z

    sget-object v2, Lcom/android/contacts/ContactsApplication;->callDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v3, "CallDetailActivity"

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateStart(Ljava/lang/String;)V

    const v2, 0x7f030014

    invoke-virtual {p0, v2}, Lcom/android/dialer/CallDetailActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/dialer/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->statusBarManager:Landroid/app/StatusBarManager;

    new-instance v2, Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/dialer/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    const v2, 0x7f08005c

    invoke-virtual {p0, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    const v2, 0x7f08005f

    invoke-virtual {p0, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mContactNButtonsLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f080061

    invoke-virtual {p0, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundButton:Landroid/widget/ImageButton;

    const v2, 0x7f080063

    invoke-virtual {p0, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    const v2, 0x7f080062

    invoke-virtual {p0, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoView:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    new-instance v2, Lcom/android/dialer/ProximitySensorManager;

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v2, p0, v3}, Lcom/android/dialer/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/dialer/ProximitySensorManager$Listener;)V

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_FROM_NOTIFICATION"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->closeSystemDialogs()V

    :cond_0
    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->loadPref()V

    const-string v2, "vvm"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getViewByTypeOfLogs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->initializeVoicemail()V

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_VVM_ID"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    if-nez v2, :cond_1

    if-ne v1, v6, :cond_1

    new-instance v2, Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-direct {v2, p0, v5}, Lcom/samsung/dialer/util/DirectCallingManager;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate  set mDirectCallingManager = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0328

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/dialer/CallDetailActivity$4;

    invoke-direct {v3, p0}, Lcom/android/dialer/CallDetailActivity$4;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f08006b

    invoke-virtual {p0, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mCallDetailButtonsContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/dialer/impl/CallDetailImpl;

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity;->mCallDetailButtonsContainer:Landroid/widget/LinearLayout;

    invoke-direct {v2, v3, v4}, Lcom/samsung/dialer/impl/CallDetailImpl;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mCallDetailImpl:Lcom/samsung/dialer/impl/CallDetailImpl;

    sget-object v2, Lcom/android/contacts/ContactsApplication;->callDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v3, "CallDetailActivity"

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateEnd(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v2}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v2, v7}, Lcom/samsung/android/sdk/cover/Scover;->isFeatureEnabled(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dialer/CallDetailActivity;->mIsScoverFeatureEnabled:Z

    iget-boolean v2, p0, Lcom/android/dialer/CallDetailActivity;->mIsScoverFeatureEnabled:Z

    if-eqz v2, :cond_2

    const-string v2, "com.sec.android.app.dialertab.calllog.MISSED_CALL"

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/samsung/dialer/cover/MissedCallCoverManager;

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    :cond_2
    invoke-static {p0}, Lcom/samsung/contacts/model/rcs/RcsUtils;->refreshRCSeSettingValue(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mRcsPinner:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    :cond_3
    const v2, 0x7f08006e

    invoke-virtual {p0, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mSystemUIBackgroundView:Landroid/view/View;

    new-instance v2, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-direct {v2, p0}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    new-instance v2, Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/util/ImsLowSignalHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    :cond_5
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "e164_number"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mE164Number:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "normalized_number"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_CNAP_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mCnapName:Ljava/lang/String;

    return-void

    :cond_6
    invoke-static {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-direct {v2, p0, v5}, Lcom/samsung/dialer/util/DirectCallingManager;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate  set mDirectCallingManager = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SsdkUnsupportedException!! type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onDestroy()V

    :cond_0
    sget-object v0, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-virtual {v0}, Lcom/samsung/dialer/util/DirectCallingManager;->pause()V

    sput-object v3, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectCallingManager Unregitser onDestroy  =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/dialer/CallDetailActivity;->mIsScoverFeatureEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    invoke-virtual {v0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->dismissMissedCallCover()V

    iput-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    :cond_2
    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mRcsPinner:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->pinOnDestroy()V

    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0220

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0222

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0223

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/dialer/util/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuTrashVoicemail(Landroid/view/MenuItem;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v2, Lcom/android/dialer/CallDetailActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v3, Lcom/android/dialer/CallDetailActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/android/dialer/CallDetailActivity$7;-><init>(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->finish()V

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/contacts/menu/factory/CallDetailOptionMenuFactory;->createContactsMenu(Landroid/content/Context;I)Lcom/samsung/contacts/menu/OptionMenu;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/contacts/menu/OptionMenu;->execute()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0, v3}, Lcom/android/dialer/CallDetailActivity;->disableProximitySensor(Z)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onPause()V

    :cond_0
    sget-object v0, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-virtual {v0}, Lcom/samsung/dialer/util/DirectCallingManager;->pause()V

    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectCallingManager Unregitser onPause  =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->registerImsReceiver(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/dialer/CallDetailActivity;->mIsScoverFeatureEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/dialer/CallDetailActivity;->mIsPostExcuteDone:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    invoke-virtual {v0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->finish()V

    :cond_4
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    invoke-virtual {v0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->unregisterReceiver()V

    :cond_5
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->stopTracking()V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mOMenuController:Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuControllerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuControllerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mOMenuController:Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuControllerImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mOMenuController:Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuControllerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuControllerImpl;->configureVisibility(Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_showing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "reject_number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/dialer/util/CallLogUtil;->showDialog(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/ActionMode;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v1, "CallDetailActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/contacts/ContactsApplication;->callDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v2, "CallDetailActivity"

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/ContactsPerformance;->getOnResumeStart(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.contacts/phone_lookup"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->statusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v5}, Landroid/app/StatusBarManager;->setTransGradationMode(Z)V

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mLogId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mLogId:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mLogId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/dialer/CallDetailActivity;->updateData(Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-virtual {v1}, Lcom/samsung/dialer/util/DirectCallingManager;->resume()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/dialer/CallDetailActivity;->mIsScoverFeatureEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    invoke-virtual {v1}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->resumeMissedCallDialog()V

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    invoke-virtual {v1}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->registerReceiver()V

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->startTracking()V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->registerImsReceiver(Z)V

    :cond_3
    iput-boolean v6, p0, Lcom/android/dialer/CallDetailActivity;->keyPressed:Z

    sget-object v1, Lcom/android/contacts/ContactsApplication;->callDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v2, "CallDetailActivity"

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/ContactsPerformance;->getOnResumeEnd(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "phone_number"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/dialer/CallDetailActivity;->getPhotoUribyId(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/dialer/CallDetailActivity;->mIsThumbnailUri:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/dialer/CallDetailActivity$5;

    invoke-direct {v2, p0}, Lcom/android/dialer/CallDetailActivity$5;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    iget-boolean v1, p0, Lcom/android/dialer/CallDetailActivity;->mIsSavedContact:Z

    if-eqz v1, :cond_6

    iget-wide v1, p0, Lcom/android/dialer/CallDetailActivity;->mContactId:J

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/android/dialer/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;JZ)V

    :cond_6
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/dialer/CallDetailActivity;->getCallLogEntryUris(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dialer/CallDetailActivity;->updateData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "is_showing"

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "reject_number"

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateCallDetailData()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mLogId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mLogId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/dialer/CallDetailActivity;->updateData(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->getCallLogEntryUris(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/CallDetailActivity;->updateData(Ljava/lang/String;)V

    goto :goto_0
.end method
