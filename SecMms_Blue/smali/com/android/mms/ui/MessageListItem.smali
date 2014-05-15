.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/LinearLayout;
.source "MessageListItem.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListItem$SendNowListener;,
        Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;,
        Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;,
        Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;,
        Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;
    }
.end annotation


# static fields
.field private static final BG_DATE_BAR:[I = null

.field public static final BG_INBOX:[I = null

.field private static final BG_INBOX_FOCUS:[I = null

.field private static final BG_INBOX_FOCUS_PRESS:[I = null

.field public static final BG_SENT:[I = null

.field public static final BG_SENTFAILED:[I = null

.field private static final BG_SENTFAILED2:[I = null

.field private static final BG_SENTFAILED_FOCUS:[I = null

.field private static final BG_SENTFAILED_FOCUS_PRESS:[I = null

.field private static final BG_SENT_FOCUS:[I = null

.field private static final BG_SENT_FOCUS_PRESS:[I = null

.field private static final BUBBLE_LIST_STYLE:I = 0x1

#the value of this static final field might be set in the static constructor
.field public static final BUBBLE_MIN_HEIGHT_PX:I = 0x0

.field public static final BUBBLE_TEXT_PER_PAGE:I = 0x8c

.field private static final CHAR_TEXTVIEW_NEW_LINE:C = '\n'

.field private static final COLOR_DATE_SEPERATOR:[I = null

.field public static final EXTRA_URLS:Ljava/lang/String; = "com.android.mms.ExtraUrls"

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x3e8

.field public static final MSG_INDICATE_DELAYED:I = 0x2

.field public static final MSG_INDICATE_DRAFT:I = 0x3

.field public static final MSG_INDICATE_FAILED:I = 0x0

.field public static final MSG_INDICATE_NONE:I = -0x1

.field public static final MSG_INDICATE_SCHEDULED:I = 0x1

.field public static final MSG_INDICATE_TRANSLATE:I = 0x4

.field public static final MSG_LIST_CLICK_LINK:I = 0x3

.field public static final MSG_LIST_DELETE_DRAFT_MMS:I = 0xe

.field public static final MSG_LIST_DELETE_DRAFT_SMS:I = 0xf

.field public static final MSG_LIST_EDIT_DRAFT_MMS:I = 0xc

.field public static final MSG_LIST_EDIT_DRAFT_SMS:I = 0xd

.field public static final MSG_LIST_EDIT_MMS:I = 0x1

.field public static final MSG_LIST_EDIT_SMS:I = 0x2

.field private static final SEARCH_BUBBLE_LIST_STYLE:I = 0x0

.field private static final SMS_BUBBLE_MAX_CHARS:I = 0xa0

.field public static final SMS_PRIORITY_HIGH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms/MessageListItem"

#the value of this static final field might be set in the static constructor
.field private static final TAP_TIMEOUT:I = 0x0

.field private static final TEXT_COLOR_FAILED:I = -0xcdcdce

.field private static final VATTACHMENT_SEPERATOR:[I

.field private static isAnimationPlaying:Z

.field private static lastFailedMsgIdAnimationPlayed:J

.field public static mBubbleClicked:Z

.field private static sTextColorLink:I

.field private static sTextColorNormal:I


# instance fields
.field private DEBUG_ONLY:Z

.field private mActiveMoreButton:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mAddressTextView:Landroid/widget/TextView;

.field protected mAttachView:Landroid/widget/ImageView;

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mAvatarViewMe:Landroid/widget/QuickContactBadge;

.field private mBodyBottomMargin:I

.field private mBodyTextView:Landroid/widget/TextView;

.field private mBodyTopMargin:I

.field private mBubbleIconContainer:Landroid/widget/LinearLayout;

.field private mBubbleInnerMargin:I

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mCursor:Landroid/database/Cursor;

.field private mDateSeperator:Landroid/widget/TextView;

.field private mDateSeperatorContainer:Landroid/widget/LinearLayout;

.field private mDateView:Landroid/widget/TextView;

.field private final mDelayedIconClickListener:Landroid/view/View$OnClickListener;

.field private mDeliveryReportIcon:Landroid/widget/ImageView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingContainer:Landroid/widget/LinearLayout;

.field private mDownloding:Z

.field private final mDraftedIconClickListener:Landroid/view/View$OnClickListener;

.field private final mFailedIconClickListener:Landroid/view/View$OnClickListener;

.field protected mGroupView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mIndicateMode:I

.field protected mIndicatorContainer:Landroid/view/View;

.field private mIndicatorIcon:Landroid/widget/Button;

.field protected mIndicatorLockMsg:Landroid/widget/ImageView;

.field protected mIndicatorTextView:Landroid/widget/TextView;

.field private mIsAlignLeft:Z

.field public mItemSearchMode:Z

.field private mLastThreadIndex:J

.field private mLeftLine:Landroid/widget/ImageView;

.field private mListDivider:Landroid/view/View;

.field private mListInnerMargin:I

.field private mListOuterMargin:I

.field private final mLongClickHandler:Landroid/os/Handler;

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mMmsSlideContainer:Landroid/widget/LinearLayout;

.field private mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

.field private mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

.field protected mMsgIndicatorTextView:Landroid/widget/TextView;

.field private mMsgListItemContents:Landroid/widget/LinearLayout;

.field private mMsgListItemLayout:Landroid/widget/LinearLayout;

.field private mMsgListItemRootLayout:Landroid/widget/LinearLayout;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMsgListViewLayout:Landroid/widget/LinearLayout;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field public final mOnSearchListClickListener:Landroid/view/View$OnClickListener;

.field private mPriorityIndicator:Landroid/widget/ImageView;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mReadReportIcon:Landroid/widget/ImageView;

.field private mRightLine:Landroid/widget/ImageView;

.field protected mSafeMMSLogo:Landroid/widget/ImageView;

.field private final mScheduledIconClickListener:Landroid/view/View$OnClickListener;

.field public mSearchString:Ljava/lang/String;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field private mSendNowConfirmDialog:Landroid/app/AlertDialog;

.field private mSendNowDeliveryReport:Z

.field private mSendNowLocked:Z

.field private mSendNowReadReport:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mSenderInfo:Landroid/widget/TextView;

.field private mSentTimeStamp:Ljava/lang/String;

.field private mSubjectContentSeperator:Landroid/view/View;

.field private mSubjectTextView:Landroid/widget/TextView;

.field private mThreadAddress:Landroid/widget/TextView;

.field private mThreadAvatarView:Landroid/widget/QuickContactBadge;

.field private mThreadLayout:Landroid/widget/LinearLayout;

.field private mThreadSnippet:Landroid/widget/TextView;

.field private mTranslateIcon:Landroid/widget/Button;

.field private final mTranslateIconClickListener:Landroid/view/View$OnClickListener;

.field private mTruncateLongMessages:Z

.field protected mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

.field private mVattachmentClickListener:Landroid/view/View$OnClickListener;

.field private onAvataClick:Landroid/view/View$OnClickListener;

.field private onAvataMeClick:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x6

    sput-boolean v3, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_INBOX:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_INBOX_FOCUS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_INBOX_FOCUS_PRESS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->VATTACHMENT_SEPERATOR:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS_PRESS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS_PRESS:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED2:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_DATE_BAR:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->COLOR_DATE_SEPERATOR:[I

    const/high16 v0, 0x422c

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->BUBBLE_MIN_HEIGHT_PX:I

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mms/ui/MessageListItem;->lastFailedMsgIdAnimationPlayed:J

    sput-boolean v3, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    sput v2, Lcom/android/mms/ui/MessageListItem;->sTextColorNormal:I

    sput v2, Lcom/android/mms/ui/MessageListItem;->sTextColorLink:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I

    return-void

    :array_0
    .array-data 0x4
        0x4t 0x1t 0x2t 0x7ft
        0x5t 0x1t 0x2t 0x7ft
        0x6t 0x1t 0x2t 0x7ft
        0x7t 0x1t 0x2t 0x7ft
        0x8t 0x1t 0x2t 0x7ft
        0x4t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x90t 0x1t 0x2t 0x7ft
        0x93t 0x1t 0x2t 0x7ft
        0x96t 0x1t 0x2t 0x7ft
        0x99t 0x1t 0x2t 0x7ft
        0x9ct 0x1t 0x2t 0x7ft
        0x90t 0x1t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0xfft 0x0t 0x2t 0x7ft
        0x0t 0x1t 0x2t 0x7ft
        0x1t 0x1t 0x2t 0x7ft
        0x2t 0x1t 0x2t 0x7ft
        0x3t 0x1t 0x2t 0x7ft
        0xfft 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x18t 0x1t 0x2t 0x7ft
        0x19t 0x1t 0x2t 0x7ft
        0x1at 0x1t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
        0x1ct 0x1t 0x2t 0x7ft
        0x19t 0x1t 0x2t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x24t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
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
        0x13t 0x1t 0x2t 0x7ft
        0x14t 0x1t 0x2t 0x7ft
        0x15t 0x1t 0x2t 0x7ft
        0x16t 0x1t 0x2t 0x7ft
        0x17t 0x1t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0xet 0x1t 0x2t 0x7ft
        0xft 0x1t 0x2t 0x7ft
        0x10t 0x1t 0x2t 0x7ft
        0x11t 0x1t 0x2t 0x7ft
        0x12t 0x1t 0x2t 0x7ft
        0xet 0x1t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x7et 0x1t 0x2t 0x7ft
        0x81t 0x1t 0x2t 0x7ft
        0x84t 0x1t 0x2t 0x7ft
        0x87t 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
        0x7et 0x1t 0x2t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x9t 0x1t 0x2t 0x7ft
        0xat 0x1t 0x2t 0x7ft
        0xbt 0x1t 0x2t 0x7ft
        0xct 0x1t 0x2t 0x7ft
        0xdt 0x1t 0x2t 0x7ft
        0x9t 0x1t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x7dt 0x1t 0x2t 0x7ft
        0x80t 0x1t 0x2t 0x7ft
        0x83t 0x1t 0x2t 0x7ft
        0x86t 0x1t 0x2t 0x7ft
        0x89t 0x1t 0x2t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0x40t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x11t 0x0t 0x9t 0x7ft
        0x11t 0x0t 0x9t 0x7ft
        0x11t 0x0t 0x9t 0x7ft
        0x11t 0x0t 0x9t 0x7ft
        0x12t 0x0t 0x9t 0x7ft
        0x13t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->DEBUG_ONLY:Z

    iput v3, p0, Lcom/android/mms/ui/MessageListItem;->mIndicateMode:I

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSentTimeStamp:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mLastThreadIndex:J

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mListInnerMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleInnerMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTopMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyBottomMargin:I

    new-instance v0, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnSearchListClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVattachmentClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$11;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$12;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$13;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTranslateIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$14;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$15;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDelayedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$16;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$17;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->onAvataClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$18;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->onAvataMeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->initComposerVariable()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->DEBUG_ONLY:Z

    iput v3, p0, Lcom/android/mms/ui/MessageListItem;->mIndicateMode:I

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSentTimeStamp:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mLastThreadIndex:J

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mListInnerMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleInnerMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTopMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyBottomMargin:I

    new-instance v0, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnSearchListClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVattachmentClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$11;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$12;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$13;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTranslateIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$14;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$15;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDelayedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$16;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$17;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->onAvataClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$18;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->onAvataMeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->initComposerVariable()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->presentMms(Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextView(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MessageListItem;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    sget v0, Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I

    return v0
.end method

.method static synthetic access$2100()I
    .locals 1

    sget v0, Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/MessageListItem;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/MessageListItem;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/MessageListItem;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/MessageListItem;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/MessageListItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/mms/ui/MessageListItem;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->urlIncluded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/MessageListItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$3002(Lcom/android/mms/ui/MessageListItem;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSentTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSentTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->deleteDraftMessage()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->editDraftMessage()V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    return p1
.end method

.method private static appendMoreText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)V
    .locals 7

    const/16 v6, 0x21

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c013b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v2, v4

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x205000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p1, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static applyBodyTextViewColor(Landroid/widget/TextView;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, -0xcdcdce

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->getLinkTextColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->getNormalTextColor(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private bindBodyTextView(Lcom/android/mms/ui/MessageItem;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v4, v3, v3}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->getBytesForDisplayFolding()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-static {v4, v2}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    return-void
.end method

.method private bindCmasSmsAddressTextView(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->formatCmasSmsAddress(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x8

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindSubjectTextView(Lcom/android/mms/ui/MessageItem;)V

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->bindCmasSmsAddressTextView(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindVAttachmentList(Lcom/android/mms/ui/MessageItem;)V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/android/mms/ui/MessageListItem;->getPriorityType(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)I

    move-result v0

    const/16 v4, 0x82

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->checkLongText(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->truncateLongMessagePref:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v0

    invoke-direct {p0, p1, v0, p0}, Lcom/android/mms/ui/MessageListItem;->presentMms(Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V

    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    if-eq v0, v1, :cond_a

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_6
    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextView(Lcom/android/mms/ui/MessageItem;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    if-eq v0, v1, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private bindDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void

    :cond_1
    if-nez p7, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0
.end method

.method private bindDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;ZZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    if-nez p8, :cond_0

    :cond_2
    if-nez p7, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0
.end method

.method private bindIndicator(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 13

    const/4 v12, 0x5

    const/16 v11, 0x20

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    if-nez v6, :cond_7

    const-string v4, ""

    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0c002a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamingTimeSchemeForCHN()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    iget-wide v9, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v6, v9, v10}, Lcom/android/mms/ui/MessageUtils;->formatTimeForLocal(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-eqz p2, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x3

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v6, v9, :cond_3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f02001e

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    iget-boolean v9, p1, Lcom/android/mms/ui/MessageItem;->mGroupMessage:Z

    invoke-static {v6, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isQueuedMessage()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v7

    :goto_3
    invoke-static {v9, v6}, Lcom/android/mms/util/NetworkConnectionUtils;->isMsgNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v6, v8}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c009a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isQueuedMessage()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    move v8, v7

    :cond_6
    invoke-static {v6, v8}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :goto_5
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorLockMsg:Landroid/widget/ImageView;

    iget-boolean v7, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v6, v7}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void

    :cond_7
    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v1, ""

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_2

    :cond_c
    move v6, v8

    goto :goto_3

    :cond_d
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v6

    if-eqz v6, :cond_e

    move v6, v7

    :goto_6
    invoke-static {v10, v6}, Lcom/android/mms/util/NetworkConnectionUtils;->isMsgNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v6

    if-nez v6, :cond_f

    move v6, v7

    :goto_7
    invoke-static {v9, v6}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_4

    :cond_e
    move v6, v8

    goto :goto_6

    :cond_f
    move v6, v8

    goto :goto_7

    :cond_10
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v6

    if-nez v6, :cond_11

    move v6, v7

    :goto_8
    invoke-static {v9, v6}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_4

    :cond_11
    move v6, v8

    goto :goto_8

    :cond_12
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v9

    if-nez v9, :cond_13

    :goto_9
    invoke-static {v6, v7}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_5

    :cond_13
    move v7, v8

    goto :goto_9
.end method

.method private bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindSubjectTextView(Lcom/android/mms/ui/MessageItem;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_7_STEP:[F

    aget v0, v4, v6

    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c0089

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%d"

    new-array v8, v6, [Ljava/lang/Object;

    iget v9, p1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    add-int/lit16 v9, v9, 0x3ff

    div-int/lit16 v9, v9, 0x400

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c0011

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v4, v5, v5}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_2
    move v4, v6

    :goto_3
    invoke-static {v7, v4}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    invoke-virtual {v4, v10}, Lcom/android/mms/ui/VAttachmentListView;->setVisibility(I)V

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    :goto_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v6, 0x7f02001a

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-static {p2}, Lcom/android/mms/ui/MessageListItem;->getNormalTextColor(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    :cond_3
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110048

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-ne v4, v6, :cond_5

    sget-object v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE_WVGA:[F

    aget v0, v4, v6

    goto/16 :goto_0

    :cond_5
    sget-object v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE:[F

    aget v0, v4, v6

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    move v4, v5

    goto :goto_3

    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_9
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    :cond_a
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v5, 0x7f020218

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0202a9

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v5, p0, p1}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method private bindSenderTextView(Lcom/android/mms/ui/MessageItem;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedSender()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageListItem;->formatSenderInfo(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedSender(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/android/mms/ui/MessageItem;->mIsGroupMessage:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindSeperators(Lcom/android/mms/ui/MessageItem;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->hasVisibleContent()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    :cond_1
    move v0, v3

    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/VAttachmentListView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    move v2, v3

    :goto_2
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectContentSeperator:Landroid/view/View;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    :goto_3
    invoke-static {v5, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method private bindSubjectTextView(Lcom/android/mms/ui/MessageItem;)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedSubject()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3, v2, v2}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedSubject(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x5

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    invoke-static {v3, v2}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

.method private changeFontSize(I)V
    .locals 4

    const-string v0, "Mms/MessageListItem"

    const-string v1, "changeFontSize"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v2, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private checkBubbleStyleAsMode(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private checkLongText(Lcom/android/mms/ui/MessageItem;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    move-object v1, p1

    const/4 v3, 0x0

    const-string v4, "sms"

    iget-object v5, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v4, v6, v6}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->getBytesForDisplayFolding()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageListItem;->urlIncluded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x1

    :goto_1
    const-string v4, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkLongText:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const-string v4, "mms"

    iget-object v5, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private deleteDraftMessage()V
    .locals 3

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xe

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    if-eqz v4, :cond_3

    :goto_3
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getHighlightMsgID()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getHighlightMsgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageListItem;->setSearchedMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V

    :goto_4
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/MessageListItem;->bindIndicator(Lcom/android/mms/ui/MessageItem;Z)V

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

    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageListItem;->setMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V

    goto :goto_4
.end method

.method private drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
    .end packed-switch
.end method

.method private editDraftMessage()V
    .locals 3

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xc

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private findFirstValidSlide(Lcom/android/mms/ui/MessageItem;)I
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const-string v5, "Mms/MessageListItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vSlideModel not null, count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    add-int/lit8 v1, v0, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string v5, "Mms/MessageListItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstValidSlide="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    goto :goto_0
.end method

.method private formatAddress(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v0, 0x0

    new-array v2, v0, [I

    new-array v3, v0, [I

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-string v5, "Mms/MessageListItem"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/UIUtils;->highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    return-object v4
.end method

.method public static formatBody(Ljava/lang/String;ZZLandroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    if-le v3, v4, :cond_3

    if-nez p2, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p4, p0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    invoke-static {p3, v0}, Lcom/android/mms/ui/MessageListItem;->appendMoreText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static formatCBNumber(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\nCB#: "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-object v0
.end method

.method private formatCmasSmsAddress(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getmCmasMessageTMOMenuTextFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    invoke-static {v1}, Lcom/android/mms/transaction/CmasReceiverService;->getTmoServiceCategory(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    invoke-static {v1}, Lcom/android/mms/transaction/CmasReceiverService;->getServiceCategory(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatContactInfo(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;
    .locals 5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContactInfoInBubble()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v3

    invoke-static {v3}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/ui/MessageItem;->mIncomingGroupMessage:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    return-object v0
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

.method static formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;
    .locals 11

    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v0, ""

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v10

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/android/mms/ui/MessageListItem;->formatContactInfo(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v0, p1, v10}, Lcom/android/mms/ui/MessageListItem;->formatSubject(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0, p1, v10}, Lcom/android/mms/ui/MessageListItem;->formatBody(Ljava/lang/String;ZZLandroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/MessageListItem;->formatCBNumber(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-lez v8, :cond_3

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_3
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {v10}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v2

    invoke-virtual {v10}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v3

    const-string v5, "Mms/MessageListItem"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/UIUtils;->highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    return-object v4
.end method

.method private formatMessage(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_0

    const-string v2, ", "

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CBmessages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    const-string v2, "Pushmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c015f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatSenderInfo(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;
    .locals 4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mIsGroupMessage:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-object v0
.end method

.method private formatSimpleDate(J)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd E"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatSubject(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSubjectConcept4Korea()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0015

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private getBackGroundStyleIndex()I
    .locals 2

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleBackgroundStyle(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public static getBytesForDisplayFolding()I
    .locals 1

    const/16 v0, 0x8c

    return v0
.end method

.method private getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getLinkTextColor(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    sget v1, Lcom/android/mms/ui/MessageListItem;->sTextColorLink:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->sTextColorLink:I

    :cond_0
    sget v0, Lcom/android/mms/ui/MessageListItem;->sTextColorLink:I

    return v0
.end method

.method private static getNormalTextColor(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    sget v1, Lcom/android/mms/ui/MessageListItem;->sTextColorNormal:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020373

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->sTextColorNormal:I

    :cond_0
    sget v0, Lcom/android/mms/ui/MessageListItem;->sTextColorNormal:I

    return v0
.end method

.method private getPriorityType(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)I
    .locals 3

    const/16 v0, 0x80

    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p2, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v0, 0x82

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p2, Lcom/android/mms/ui/MessageItem;->mMMSPriority:I

    goto :goto_0
.end method

.method private hideMmsView()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsSlideView;

    invoke-static {v1, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    return-void
.end method

.method private hideSipExplict()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private inflateDownloadControls()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f0b01c8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b020e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v0, 0x7f0b020f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLinksClickable(Z)V

    return-void
.end method

.method private isDeleteMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUseCustomBg()Z
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_background_color"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget v3, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private presentMms(Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V
    .locals 4

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->findFirstValidSlide(Lcom/android/mms/ui/MessageItem;)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v1, v0, p1}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->initMmsThumbnail(ILcom/android/mms/ui/MessageItem;)V

    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "present "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    invoke-virtual {v1, p3, v2}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->present(Lcom/android/mms/ui/MessageListItem;Z)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V

    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->present(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_1
.end method

.method private setDefaultMessageListItem()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private setFailedMessageBackgroundDefault()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED2:[I

    aget v0, v2, v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->checkBubbleStyleAsMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setIndicateMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicateMode:I

    return-void
.end method

.method private setIndicatorButton(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0468

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setIndicatorIconClicklistner(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDelayedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setIndicatorTextView(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0468

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_1
    return-void

    :pswitch_0
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_INBOX:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v2, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v2, v1

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v2, :cond_1

    :cond_5
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v2, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setSearchedMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_1
    return-void

    :pswitch_0
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_INBOX_FOCUS_PRESS:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS_PRESS:[I

    aget v0, v2, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS_PRESS:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS_PRESS:[I

    aget v0, v2, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS_PRESS:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS_PRESS:[I

    aget v0, v2, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setTextViewMaxWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextMaxWidth(I)V

    :cond_4
    return-void
.end method

.method private startAnimation()V
    .locals 14

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v13, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v12, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/16 v3, 0x14e

    const/4 v4, 0x0

    invoke-direct {v12, v2, v3, v13, v4}, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;-><init>(Landroid/view/View;III)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v2, v12}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const-wide/16 v2, 0x1d3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    new-instance v2, Lcom/android/mms/animation/easing/SineInOut33;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x40a0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0xa6

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Lcom/android/mms/animation/easing/SineInOut33;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v2, p0, v11, v0}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;Landroid/view/animation/AlphaAnimation;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v12, v2}, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private startViewer()V
    .locals 15

    const/16 v5, 0x82

    const/4 v4, 0x0

    const/4 v14, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v12

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideSipExplict()V

    const-string v0, "Mms/MessageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start viewer, msgid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v3, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-nez v0, :cond_0

    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    iget v2, v3, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-nez v0, :cond_0

    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "isWapPush"

    invoke-virtual {v6, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-eq v0, v5, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    if-ne v0, v14, :cond_4

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isSafeMMS()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0434

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v11, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v0

    if-ne v0, v14, :cond_6

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_startup_flag"

    const/4 v1, 0x4

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "extra_map_url"

    invoke-virtual {v7}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_selected_place"

    invoke-virtual {v7}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGalleryView4SingleImageMMSType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v14, :cond_a

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v1

    if-gt v0, v1, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGalleryView4SingleImageMMSType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_TEXT_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v14, :cond_c

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v1

    if-gt v0, v1, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    :cond_c
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x2000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private stopAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    return-void
.end method

.method private updateAvatarView(Lcom/android/mms/data/ContactList;ZJLjava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v7, :cond_a

    invoke-virtual {p1, v8}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    long-to-int v5, p3

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CBmessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020259

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, p5}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v8}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020265

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isCmasPrefix(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02025b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02025c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02025a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_7
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v7}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v7}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_a
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02025d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private urlIncluded(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    const-string v3, "Mms/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "urlIncluded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/text/Spannable;I)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    const-string v3, "Mms/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "urlIncluded:links.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 23

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    const-string v2, "thread"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemRootLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mListDivider:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSearchString:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/util/UIUtils;->createSearchHightlightPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/mms/ui/MessageListItem;->formatAddress(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->changeFontSize7Step(I)V

    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mRecipientIds:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/MessageListItem;->updateAvatarView(Lcom/android/mms/data/ContactList;ZJLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    const-string v17, ""

    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadSnippet:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnSearchListClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->setDefaultMessageListItem()V

    new-instance v2, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->changeFontSize(I)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadSnippet:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSnippet:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadSnippet:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadSnippet:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemRootLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mListDivider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportBubbleViewPinchZoom()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v2

    const/16 v4, 0xff

    if-eq v2, v4, :cond_18

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v12

    :goto_4
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getBackGroundStyleIndex()I

    move-result v22

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->isUseCustomBg()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mLeftLine:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/mms/ui/MessageListItem;->BG_DATE_BAR:[I

    aget v4, v4, v22

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRightLine:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/mms/ui/MessageListItem;->BG_DATE_BAR:[I

    aget v4, v4, v22

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v5}, Lcom/android/mms/ui/MessageListItem;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/mms/ui/MessageListItem;->formatSimpleDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0b01cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    const v2, 0x7f0b01d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    :cond_5
    const v2, 0x7f0b01cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorLockMsg:Landroid/widget/ImageView;

    const v2, 0x7f0b01d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    :goto_7
    if-eqz v14, :cond_6

    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    if-eqz v15, :cond_7

    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/TranslateManager;->isTranslatableMms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_9
    :goto_9
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    sget-wide v6, Lcom/android/mms/transaction/SmsReceiverService;->lastFailedMsdId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    sget-wide v6, Lcom/android/mms/ui/MessageListItem;->lastFailedMsgIdAnimationPlayed:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    sput-wide v4, Lcom/android/mms/ui/MessageListItem;->lastFailedMsgIdAnimationPlayed:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->startAnimation()V

    :cond_a
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicateMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicatorButton(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicateMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicatorTextView(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SKT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_25

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->isSafeMMS()Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    :goto_b
    const/16 v18, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiwindow()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v18

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a003f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setTextViewMaxWidth(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextMaxWidth(I)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/VAttachmentListView;->setItemClickable(Z)V

    :cond_10
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v12}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setBodyTextSize(IF)V

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->bindSenderTextView(Lcom/android/mms/ui/MessageItem;)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    const-string v2, "CBmessages"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v4, 0x7

    if-eq v2, v4, :cond_3a

    :cond_11
    const-string v2, "wpm"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    if-eqz v8, :cond_13

    const/4 v2, 0x0

    invoke-static {v8, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v11

    if-eqz v11, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v2, "Mms/MessageListItem"

    const-string v4, "Contact avatar display"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f02025a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :cond_12
    if-eqz v11, :cond_36

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v2

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :cond_13
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02028a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v9}, Landroid/widget/QuickContactBadge;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    :goto_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3d

    const v2, 0x7f0b01d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    const v2, 0x7f0b01cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    :goto_11
    if-eqz v16, :cond_15

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_17
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    packed-switch v2, :pswitch_data_0

    invoke-direct/range {p0 .. p3}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->checkBubbleStyleAsMode(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTopMargin:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyBottomMargin:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mListInnerMargin:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->bindSeperators(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_3

    :cond_18
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v12

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/android/mms/ui/MessageListItem;->COLOR_DATE_SEPERATOR:[I

    aget v5, v5, v22

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_6

    :cond_1c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_1d

    const v2, 0x7f0b01d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    const v2, 0x7f0b01cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    :cond_1d
    const v2, 0x7f0b01d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorLockMsg:Landroid/widget/ImageView;

    const v2, 0x7f0b01cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    goto/16 :goto_7

    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_9

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_9

    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    sget-wide v6, Lcom/android/mms/ui/MessageListItem;->lastFailedMsgIdAnimationPlayed:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_23

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v4, "sms"

    if-ne v2, v4, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    sget-wide v6, Lcom/android/mms/transaction/SmsReceiverService;->lastFailedMsdId:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_22

    sget-wide v4, Lcom/android/mms/transaction/SmsReceiverService;->lastFailedMsdId:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_a

    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    goto/16 :goto_a

    :cond_23
    sget-boolean v2, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    if-nez v2, :cond_a

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    goto/16 :goto_a

    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    goto/16 :goto_a

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a003d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v10, v2

    if-eqz v18, :cond_28

    invoke-virtual/range {v18 .. v18}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0041

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v10, v2

    :cond_28
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mms/ui/MessageListItem;->setTextViewMaxWidth(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v2, v10}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextMaxWidth(I)V

    goto/16 :goto_c

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicateMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicatorIconClicklistner(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a003c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v10, v2

    if-eqz v18, :cond_2a

    invoke-virtual/range {v18 .. v18}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0040

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v10, v2

    :cond_2a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mms/ui/MessageListItem;->setTextViewMaxWidth(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v2

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mTranslateIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2b
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v2, :cond_32

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_2c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2d

    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->addLinks(I)V

    :cond_2d
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/VAttachmentListView;->setItemClickable(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a003e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setTextViewMaxWidth(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextMaxWidth(I)V

    goto/16 :goto_d

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_31
    const-string v2, "SearchFineer"

    const-string v4, "bind() : add Listener() for mBubbleLayout"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemRootLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemRootLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnSearchListClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_32
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->addLinks(I)V

    goto/16 :goto_15

    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->addLinks(I)V

    goto/16 :goto_15

    :cond_34
    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v2, "Mms/MessageListItem"

    const-string v4, "Contact default avatar display"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_f

    :cond_36
    const-string v19, ""

    if-eqz v11, :cond_37

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v19

    :cond_37
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v4}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_f

    :cond_38
    if-eqz v11, :cond_39

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_f

    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_f

    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto/16 :goto_10

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    sget-object v2, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3c

    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02028a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v9}, Landroid/widget/QuickContactBadge;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    :cond_3c
    sget-object v9, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

    goto :goto_16

    :cond_3d
    const v2, 0x7f0b01cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    const v2, 0x7f0b01d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    goto/16 :goto_11

    :pswitch_0
    invoke-direct/range {p0 .. p3}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    goto/16 :goto_12

    :cond_3e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mListInnerMargin:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_13

    :cond_3f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTopMargin:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyBottomMargin:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_40

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleInnerMargin:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_13

    :cond_40
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleInnerMargin:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_13

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method

.method public bindVAttachmentList(Lcom/android/mms/ui/MessageItem;)V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/VAttachmentListView;->clear()V

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, v2, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mVattachmentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1, v3}, Lcom/android/mms/ui/VAttachmentListView;->add(Lcom/android/mms/model/AttachmentModel;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public changeFontSize7Step(I)V
    .locals 4

    const-string v0, "Mms/MessageListItem"

    const-string v1, "changeFontSize7Step"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v2, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationComposer;->onComposeMessageFlicking(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public drawTitleOnly(Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0x8

    const v1, 0x7f0b029b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02032b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mListDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAnimationTarget()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getBubbleLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCheckBox()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getCheckBoxView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public getThreadLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public hasFailedIconFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initComposerVariable()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0104

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    goto :goto_0
.end method

.method public isAlignLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    return v0
.end method

.method public isCombineFwdMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiCombineAndForwardMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMultiSelectMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public moveFocusToBubble()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->hasFailedIconFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->restoreMsgBackgroundForFailed()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x7f0b01b9

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemRootLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01bc

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01c1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01ba

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01bf

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01c0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    const v1, 0x7f0b01bb

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const v1, 0x7f0b01c3

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const v1, 0x7f0b01c4

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    const v1, 0x7f0b008f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const v1, 0x7f0b01c7

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->DEBUG_ONLY:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_0
    const v1, 0x7f0b01c2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    const v1, 0x7f0b005e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v1, 0x7f0b01ca

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    const v1, 0x7f0b01d1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorTextView:Landroid/widget/TextView;

    const v1, 0x7f0b01ce

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    const v1, 0x7f0b01ac

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0b01b6

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mLeftLine:Landroid/widget/ImageView;

    const v1, 0x7f0b01b7

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    const v1, 0x7f0b01b8

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRightLine:Landroid/widget/ImageView;

    const v1, 0x7f0b01b5

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01c6

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideContainer:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    const v1, 0x7f0b01c9

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/VAttachmentListView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    const v1, 0x7f0b01c5

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectContentSeperator:Landroid/view/View;

    const v1, 0x7f0b01bd

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const v1, 0x7f0b01d5

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0441

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0442

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->onAvataClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->onAvataMeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v4}, Landroid/widget/QuickContactBadge;->setImportantForAccessibility(I)V

    const v1, 0x7f0b01d6

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    sget-boolean v1, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    :cond_1
    const v1, 0x7f0b01cf

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    const v1, 0x7f0b01d0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0b01be

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    :cond_2
    const v1, 0x7f0b029c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b001c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    const v1, 0x7f0b029d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    const v1, 0x7f0b029e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mListDivider:Landroid/view/View;

    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThreadSnippet:Landroid/widget/TextView;

    const v1, 0x7f0b010d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mListInnerMargin:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleInnerMargin:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTopMargin:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyBottomMargin:I

    return-void
.end method

.method public onMessageListItemClick()V
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiCombineAndForwardMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->performClick()Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->editDraftMessage()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    goto :goto_0

    :cond_6
    const-string v0, "Mms/MessageListItem"

    const-string v1, "******SMS Click********"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSearchListItemClick()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "highlight"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "select_id"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "message_type"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FromSearchActivity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public performFailedIconClick()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x2

    const-string v2, "mms"

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public restoreMsgBackgroundForFailed()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v2, v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->checkBubbleStyleAsMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const v3, 0x7f0200e1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    instance-of v0, p1, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0104

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    goto :goto_0
.end method

.method public setCheckBox(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public setFocusOnFailedIcon()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->setFailedMessageBackgroundDefault()V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const v2, 0x7f0200e0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLastIndex(J)V
    .locals 3

    const-wide/16 v1, 0x1

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    sub-long v0, p1, v1

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mLastThreadIndex:J

    :cond_0
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-void
.end method
