.class public Lcom/samsung/mms/ui/RestorePreviewMessageListItem;
.super Landroid/widget/LinearLayout;
.source "RestorePreviewMessageListItem.java"


# static fields
.field public static final BUBBLE_MIN_HEIGHT_DP:I = 0x2f

.field public static final EXTRA_URLS:Ljava/lang/String; = "com.android.mms.ExtraUrls"

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x3e8

.field public static final MSG_LIST_ACTION_VIEW:I = 0x4

.field public static final MSG_LIST_ADD_TO_BOOKMARK:I = 0x5

.field public static final MSG_LIST_ADD_TO_CONTACT:I = 0x9

.field public static final MSG_LIST_CALL:I = 0xb

.field public static final MSG_LIST_COPY_MESSAGE_TEXT:I = 0x8

.field public static final MSG_LIST_EDIT_MMS:I = 0x1

.field public static final MSG_LIST_EDIT_SMS:I = 0x2

.field public static final MSG_LIST_OPEN_BROWSER:I = 0x3

.field public static final MSG_LIST_SEND_MESSAGE:I = 0x7

.field public static final MSG_LIST_URL_ADD_TO_CONTACT:I = 0x6

.field public static final MSG_LIST_VIEW_CONTACT:I = 0xa

.field private static final SMS_BUBBLE_MAX_CHARS:I = 0xa0

.field public static final SMS_PRIORITY_HIGH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms/RestorePreviewMessageListItem"

.field private static final TAP_TIMEOUT:I

.field public static gListview:Lcom/android/mms/ui/MessageListView;

.field public static final mInboxBGStyle:[I

.field private static final mReceivedBubbleStyle:[I

.field private static final mReservedBubbleStyle:[I

.field public static final mReservedboxBGStyle:[I

.field private static final mSentBubbleStyle:[I

.field public static final mSentFailBGStyle:[I

.field private static final mSentFailBubbleStyle:[I

.field public static final mSentboxBGStyle:[I


# instance fields
.field private SMS_POPUP_RIGHT_MARGON:F

.field private mAddressTextView:Landroid/widget/TextView;

.field protected mAttachView:Landroid/widget/ImageView;

.field private mAudioInfoView:Landroid/widget/TextView;

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mAvatarViewMe:Landroid/widget/QuickContactBadge;

.field private mBodyTopMargin:I

.field private mBottomBodyTextView:Landroid/widget/TextView;

.field private mBubbleInnerMargin:I

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCursor:Landroid/database/Cursor;

.field private mDateSeperator:Landroid/widget/TextView;

.field private mDateSeperatorContainer:Landroid/widget/LinearLayout;

.field protected mDateView:Landroid/widget/TextView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingLabel:Landroid/widget/TextView;

.field private mDownloding:Z

.field private mFailedIcon:Landroid/widget/Button;

.field protected mGroupView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsAlignLeft:Z

.field private mIsSearchMsgItem:Z

.field private mLeftDateAndIcons:Landroid/widget/LinearLayout;

.field private mLinkedContextMenu:Landroid/app/AlertDialog;

.field private mListInnerMargin:I

.field private mListOuterMargin:I

.field private mLocationTextView:Landroid/widget/TextView;

.field protected mLockView:Landroid/widget/ImageView;

.field private final mLongClickHandler:Landroid/os/Handler;

.field private mMessageItem:Lcom/samsung/mms/data/SavedSmsMessage;

.field protected mMmsAttachmentInfoView:Landroid/widget/TextView;

.field protected mMmsIndicatorView:Landroid/widget/TextView;

.field private mMmsView:Landroid/view/View;

.field private mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

.field private mMsgListItem:Landroid/view/View;

.field private mMsgListItemContents:Landroid/widget/LinearLayout;

.field private mMsgListItemLayout:Landroid/widget/LinearLayout;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMsgListViewLayout:Landroid/widget/LinearLayout;

.field private mOldFontSize:F

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mRightDateAndIcons:Landroid/widget/LinearLayout;

.field private mScheduledIcon:Landroid/widget/Button;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field private mSendNowLocked:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mSlideShowButton:Landroid/widget/ImageButton;

.field private mTopBodyTextView:Landroid/widget/TextView;

.field private mVideoPlayButton:Landroid/widget/ImageView;

.field private onAvatarClick:Landroid/view/View$OnClickListener;

.field private onAvatarMeClick:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSentboxBGStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mReservedboxBGStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mInboxBGStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSentFailBGStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mReceivedBubbleStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSentBubbleStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mReservedBubbleStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSentFailBubbleStyle:[I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->TAP_TIMEOUT:I

    return-void

    :array_0
    .array-data 0x4
        0x18t 0x1t 0x2t 0x7ft
        0x19t 0x1t 0x2t 0x7ft
        0x1at 0x1t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
        0x1ct 0x1t 0x2t 0x7ft
        0x19t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xet 0x1t 0x2t 0x7ft
        0xft 0x1t 0x2t 0x7ft
        0x10t 0x1t 0x2t 0x7ft
        0x11t 0x1t 0x2t 0x7ft
        0x12t 0x1t 0x2t 0x7ft
        0xet 0x1t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x4t 0x1t 0x2t 0x7ft
        0x5t 0x1t 0x2t 0x7ft
        0x6t 0x1t 0x2t 0x7ft
        0x7t 0x1t 0x2t 0x7ft
        0x8t 0x1t 0x2t 0x7ft
        0x4t 0x1t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xet 0x1t 0x2t 0x7ft
        0xft 0x1t 0x2t 0x7ft
        0x10t 0x1t 0x2t 0x7ft
        0x11t 0x1t 0x2t 0x7ft
        0x12t 0x1t 0x2t 0x7ft
        0xet 0x1t 0x2t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x90t 0x1t 0x2t 0x7ft
        0x93t 0x1t 0x2t 0x7ft
        0x96t 0x1t 0x2t 0x7ft
        0x99t 0x1t 0x2t 0x7ft
        0x9ct 0x1t 0x2t 0x7ft
        0x90t 0x1t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x9ft 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
        0xa8t 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0x9ft 0x1t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x7et 0x1t 0x2t 0x7ft
        0x81t 0x1t 0x2t 0x7ft
        0x84t 0x1t 0x2t 0x7ft
        0x87t 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
        0x7et 0x1t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x7et 0x1t 0x2t 0x7ft
        0x81t 0x1t 0x2t 0x7ft
        0x84t 0x1t 0x2t 0x7ft
        0x87t 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
        0x7et 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x4160

    iput v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    iput-boolean v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    iput-boolean v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsSearchMsgItem:Z

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOldFontSize:F

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowType:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowAddr:Ljava/lang/String;

    iput-wide v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowThreadId:J

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowBody:Ljava/lang/String;

    iput-wide v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowSize:J

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowLocked:Z

    iput v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mListInnerMargin:I

    iput v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleInnerMargin:I

    iput v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mListOuterMargin:I

    iput v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBodyTopMargin:I

    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->onAvatarClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$2;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$2;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->onAvatarMeClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$4;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$4;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$5;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$5;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$6;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$6;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLongClickHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x4160

    iput v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    iput-boolean v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    iput-boolean v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsSearchMsgItem:Z

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOldFontSize:F

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowType:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowAddr:Ljava/lang/String;

    iput-wide v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowThreadId:J

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowBody:Ljava/lang/String;

    iput-wide v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowSize:J

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowLocked:Z

    iput v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mListInnerMargin:I

    iput v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleInnerMargin:I

    iput v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mListOuterMargin:I

    iput v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBodyTopMargin:I

    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->onAvatarClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$2;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$2;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->onAvatarMeClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$4;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$4;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$5;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$5;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$6;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$6;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLongClickHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Lcom/samsung/mms/data/SavedSmsMessage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMessageItem:Lcom/samsung/mms/data/SavedSmsMessage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private bindCommonMessage(Lcom/samsung/mms/data/SavedSmsMessage;Landroid/content/Context;)V
    .locals 12

    const/4 v8, 0x6

    const/4 v11, 0x5

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/16 v10, 0x8

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v1

    if-eq v1, v11, :cond_0

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v1

    if-ne v1, v8, :cond_4

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v1

    if-ne v1, v8, :cond_5

    move v6, v4

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v1

    if-ne v1, v11, :cond_6

    move v7, v4

    :goto_2
    const-string v5, "sms"

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->formatMessage(Lcom/samsung/mms/data/SavedSmsMessage;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v7}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->setBodyTextViewColor(Z)V

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getLocked()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mGroupView:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getDate()J

    move-result-wide v8

    invoke-static {v1, v8, v9}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v2

    if-ne v2, v11, :cond_8

    move v2, v4

    :goto_4
    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v8

    if-ne v8, v4, :cond_9

    :goto_5
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->setDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->hideMmsViewIfNeeded()V

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->drawLeftStatusIndicator(Lcom/samsung/mms/data/SavedSmsMessage;)V

    return-void

    :cond_4
    move v3, v0

    goto :goto_0

    :cond_5
    move v6, v0

    goto :goto_1

    :cond_6
    move v7, v0

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    move v2, v0

    goto :goto_4

    :cond_9
    move v4, v0

    goto :goto_5
.end method

.method private drawLeftStatusIndicator(Lcom/samsung/mms/data/SavedSmsMessage;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    iget-object v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    if-eqz v4, :cond_3

    :goto_3
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->setMessageBubbleStyle(Lcom/samsung/mms/data/SavedSmsMessage;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getDayOfWeekString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private formatMessage(Lcom/samsung/mms/data/SavedSmsMessage;)Ljava/lang/CharSequence;
    .locals 15

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getDate()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v11

    const/4 v12, 0x0

    new-array v8, v12, [I

    const/4 v12, 0x0

    new-array v7, v12, [I

    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v13

    if-le v12, v13, :cond_1

    const/4 v12, 0x0

    const/16 v13, 0xa0

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v7

    const-string v12, "\n"

    invoke-virtual {v1, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    const v14, 0x7f0c013b

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int v5, v9, v12

    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v12, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x205000b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v12, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v13, 0x21

    invoke-virtual {v1, v12, v9, v5, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v12, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v12, v13}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/16 v13, 0x21

    invoke-virtual {v1, v12, v9, v5, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v6, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v7

    goto :goto_0
.end method

.method private getSmsPageCount(Ljava/lang/String;I)I
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    invoke-static {p1, v3, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    :cond_1
    :goto_1
    return v1

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableComposeTypeUI()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/TelephonyUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0

    :cond_4
    array-length v2, v0

    if-eqz v2, :cond_1

    aget v1, v0, v3

    goto :goto_1
.end method

.method private hideMmsViewIfNeeded()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateDownloadControls()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f0b01c8

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b020e

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v0, 0x7f0b0211

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLinksClickable(Z)V

    return-void
.end method

.method private inflateMmsView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsView:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f0b01da

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0212

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsView:Landroid/view/View;

    const v0, 0x7f0b0242

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b0216

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLocationTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0215

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mVideoPlayButton:Landroid/widget/ImageView;

    const v0, 0x7f0b01db

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method private isMultiSelectMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private reCreateTextBottomView()V
    .locals 7

    const-string v5, "Mms/RestorePreviewMessageListItem"

    const-string v6, "reCreateTextBottomView"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f0b01e3

    invoke-virtual {p0, v5}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f040062

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private setBodyTextViewColor(Z)V
    .locals 4

    const v3, 0x7f09000c

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020373

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_0

    const v0, -0xd7d7d8

    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    return-void
.end method

.method private setDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;Z)V
    .locals 7

    const/4 v2, 0x1

    const/16 v6, 0x8

    const/4 v3, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_1

    const-string v2, "Mms/RestorePreviewMessageListItem"

    const-string v4, "Inside setDateViewTextAndColor failed case"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    const v4, 0x7f0c0134

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMMSStatusUIForCHN()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    if-eqz p5, :cond_2

    const-string v3, "mms"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isMmsNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz p6, :cond_6

    iget-object v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    const-string v5, "mms"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v4, v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isMsgNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    const v4, 0x7f0c009a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMessageBubbleStyle(Lcom/samsung/mms/data/SavedSmsMessage;I)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-object v3, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mInboxBGStyle:[I

    aget v0, v3, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void

    :pswitch_1
    sget-object v3, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mInboxBGStyle:[I

    aget v0, v3, v1

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSentboxBGStyle:[I

    aget v0, v3, v2

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSentFailBGStyle:[I

    aget v0, v3, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private showLinksContextMenu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const v8, 0x7f0c01a0

    const v7, 0x7f0c004b

    const v6, 0x7f0c004a

    const/4 v5, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p2, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0452

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    const v5, 0x7f040071

    const v6, 0x7f0b0249

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    new-instance v4, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$3;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_6
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string v3, "tel:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c019e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rtsp://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c019f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private smsGetPage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object p1, v2

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/samsung/mms/data/SavedSmsMessage;Landroid/content/Context;Z)V
    .locals 12

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMessageItem:Lcom/samsung/mms/data/SavedSmsMessage;

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v3

    iget v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOldFontSize:F

    cmpl-float v8, v8, v3

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->reCreateTextBottomView()V

    :cond_0
    iput v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOldFontSize:F

    if-eqz p3, :cond_7

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getDate()J

    move-result-wide v9

    invoke-direct {p0, p2, v9, v10}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v8, :cond_1

    const v8, 0x7f0b01df

    invoke-virtual {p0, v8}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    const v9, 0x7f0b01ac

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    :cond_1
    iget-object v7, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0b01ad

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const v8, 0x7f0b01a7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, 0x7f0b01a5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mGroupView:Landroid/widget/ImageView;

    :cond_2
    :goto_2
    const v8, 0x7f0b01dd

    invoke-virtual {p0, v8}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    const v8, 0x7f0b01de

    invoke-virtual {p0, v8}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_3

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->setLongClickable(Z)V

    iget-object v9, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->isMultiSelectMode()Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v8}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_d

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    invoke-direct {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->isMultiSelectMode()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mScheduledIcon:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v9, 0x1

    sget-object v10, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_FONT_SIZE:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_15

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    const-string v8, "CBmessages"

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_14

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v8, "Mms/RestorePreviewMessageListItem"

    const-string v9, "Contact avatar display"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :cond_5
    :goto_6
    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02028a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v8, v1}, Landroid/widget/QuickContactBadge;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_7
    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBodyTopMargin:I

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_17

    iget v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleInnerMargin:I

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mListOuterMargin:I

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_8
    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->bindCommonMessage(Lcom/samsung/mms/data/SavedSmsMessage;Landroid/content/Context;)V

    return-void

    :cond_7
    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v8, :cond_9

    const v8, 0x7f0b01e0

    invoke-virtual {p0, v8}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    const/16 v9, 0x53

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_9
    iget-object v7, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v8

    if-eqz v8, :cond_b

    const v8, 0x7f0b01aa

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mGroupView:Landroid/widget/ImageView;

    :cond_b
    const v8, 0x7f0b01a8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLockView:Landroid/widget/ImageView;

    goto/16 :goto_2

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_d
    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    :cond_e
    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v8, "Mms/RestorePreviewMessageListItem"

    const-string v9, "Contact default avatar display"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_6

    :cond_10
    const-string v5, ""

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    :cond_11
    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v9, 0x1

    invoke-virtual {v8, v5, v9}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v9, 0x1

    invoke-virtual {v8, v5, v9}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_13
    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_6

    :cond_14
    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto/16 :goto_7

    :cond_15
    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    sget-object v8, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_16

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/data/Contact;->getAvataMe(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_9
    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02028a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual {v8, v1}, Landroid/widget/QuickContactBadge;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_16
    sget-object v1, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

    goto :goto_9

    :cond_17
    iget v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mListOuterMargin:I

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleInnerMargin:I

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_8
.end method

.method protected findDateAndIconsView()V
    .locals 1

    const v0, 0x7f0b01ad

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    const v0, 0x7f0b01dd

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    const v0, 0x7f0b01b7

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    const v0, 0x7f0b01b5

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public getBubbleLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCheckBox()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getCheckBoxView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public isAlignLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloding:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloding:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    const/16 v2, 0x8

    const/4 v4, 0x2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x7f0b01b4

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItem:Landroid/view/View;

    const v1, 0x7f0b01ba

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01bc

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01bf

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01c0

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01c1

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01e1

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mFailedIcon:Landroid/widget/Button;

    const v1, 0x7f0b01e2

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mScheduledIcon:Landroid/widget/Button;

    const v1, 0x7f0b01c3

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const v1, 0x7f0b01d9

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const v1, 0x7f0b01e3

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0b005e

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v1, 0x7f0b01dc

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v1

    invoke-static {v4, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v1

    iput v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOldFontSize:F

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findDateAndIconsView()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0441

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0442

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b01bd

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const v1, 0x7f0b01d5

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->onAvatarClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->onAvatarMeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v4}, Landroid/widget/QuickContactBadge;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mListInnerMargin:I

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mListOuterMargin:I

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleInnerMargin:I

    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBodyTopMargin:I

    return-void
.end method

.method public onMessageListItemClick()V
    .locals 2

    const-string v0, "Mms/RestorePreviewMessageListItem"

    const-string v1, "onMessageListItemClick called !!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setCheckBox(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void
.end method

.method public setListView(Lcom/android/mms/ui/MessageListView;)V
    .locals 0

    sput-object p1, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->gListview:Lcom/android/mms/ui/MessageListView;

    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mHandler:Landroid/os/Handler;

    return-void
.end method
