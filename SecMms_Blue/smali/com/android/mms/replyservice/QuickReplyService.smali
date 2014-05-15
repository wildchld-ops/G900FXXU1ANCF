.class public Lcom/android/mms/replyservice/QuickReplyService;
.super Lcom/android/mms/replyservice/MiniModeService;
.source "QuickReplyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/replyservice/QuickReplyService$eventReceiver;
    }
.end annotation


# static fields
.field private static final ANIMATION_BOTTOM_PANEL_DURATION:I = 0x1f4

#the value of this static final field might be set in the static constructor
.field private static final ANIMATION_PANEL_Y_END:F = 0.0f

.field private static final ANIMATION_PANEL_Y_START:F = 0.0f

.field private static final ANIMATION_POPUP_DURATION:I = 0x258

.field private static final ANIMATION_POPUP_Y_END:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final ANIMATION_POPUP_Y_START:F = 0.0f

.field private static final COLUMN_INDEX_MMS_SUBJECT:I = 0x0

.field private static final COLUMN_INDEX_MMS_SUBJECT_CS:I = 0x1

.field private static final COLUMN_INDEX_SMS_BODY:I = 0x0

.field private static final DELAYED_MESSAGE:I = 0x2

.field private static final DIALOG_HEIGHT:I = 0xb0

#the value of this static final field might be set in the static constructor
.field private static final DIALOG_SCROLLVIEW_HEIGHT_PX:F = 0.0f

.field public static final DISMISS_POPUP:Ljava/lang/String; = "com.samsung.intent.action.dismiss"

.field private static final MMS_PROJECTION:[Ljava/lang/String; = null

.field private static final POPUP_BUTTON_PANEL_HEIGHT:I = 0x32

.field private static final PRIORITY_NORMAL:I = 0x1

.field public static final QUICK_REPLY_MESSAGE_ADDRESS:Ljava/lang/String; = "message_address"

.field public static final QUICK_REPLY_MESSAGE_ID_EXTRA:Ljava/lang/String; = "message_id"

.field public static final QUICK_REPLY_MESSAGE_TYPE_EXTRA:Ljava/lang/String; = "message_type"

.field public static final QUICK_REPLY_THREAD_ID_EXTRA:Ljava/lang/String; = "thread_id"

.field private static final SCROLLVIEW_HEIGHT:I = 0x33

.field private static final SMS_MAX_CHARS_GSM7BITS:I = 0xa0

.field private static final SMS_MAX_CHARS_UNICODE:I = 0x46

.field private static final SMS_PROJECTION:[Ljava/lang/String; = null

.field protected static final TAG:Ljava/lang/String; = "Mms/QuickReplyService"

.field private static final TOAST_TOP_MARGIN:I

.field public static final URI:[Ljava/lang/String;

.field private static final VIEW_BUTTON_LEFT_PADDING_IF_ALONE:I

.field private static sPduPersister:Lcom/google/android/mms/pdu/PduPersister;


# instance fields
.field private mAttachmentBitmap:Landroid/graphics/Bitmap;

.field private mAvatarView:Landroid/widget/ImageView;

.field mBlockFlickUntilMillis:J

.field private mBottomAnimator:Landroid/view/ViewPropertyAnimator;

.field private mButtonPanel:Landroid/widget/LinearLayout;

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelButtonListener:Landroid/view/View$OnClickListener;

.field private mCenterAnimator:Landroid/view/ViewPropertyAnimator;

.field private mComposerLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDivider1:Landroid/widget/ImageView;

.field private mDivider2:Landroid/widget/ImageView;

.field private mEditText:Landroid/widget/EditText;

.field private mEncodingType:I

.field private mMessageBodyView:Landroid/widget/TextView;

.field private mMessageSubjectView:Landroid/widget/TextView;

.field private mMmsImageView:Landroid/widget/ImageView;

.field private mMsgAddr:Ljava/lang/String;

.field private mMsgBody:Ljava/lang/String;

.field private mMsgId:J

.field private mMsgSubject:Ljava/lang/String;

.field private mMsgType:I

.field private mNegButton:Landroid/widget/Button;

.field private mOffset:F

.field private mPopupBottom:Landroid/view/View;

.field private mPopupCenter:Landroid/view/View;

.field private mPopupTop:Landroid/view/View;

.field private mPosButton:Landroid/widget/Button;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecipientList:Lcom/android/mms/data/ContactList;

.field private mRecipientView:Landroid/widget/TextView;

.field private mRecipients:Ljava/lang/String;

.field private mReplyButton:Landroid/widget/Button;

.field private mReplyButtonListener:Landroid/view/View$OnClickListener;

.field private mReplyClicked:Z

.field private mReplyPopup:Landroid/view/View;

.field private mSendButton:Landroid/widget/Button;

.field private mTextLimitToast:Landroid/widget/Toast;

.field private mThreadId:J

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->SMS_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sub"

    aput-object v1, v0, v2

    const-string v1, "sub_cs"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->MMS_PROJECTION:[Ljava/lang/String;

    const/high16 v0, 0x4330

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/android/mms/replyservice/QuickReplyService;->ANIMATION_POPUP_Y_START:F

    const/high16 v0, 0x4248

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/android/mms/replyservice/QuickReplyService;->ANIMATION_PANEL_Y_END:F

    const/high16 v0, 0x424c

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/mms/replyservice/QuickReplyService;->DIALOG_SCROLLVIEW_HEIGHT_PX:F

    const/high16 v0, 0x4308

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/replyservice/QuickReplyService;->VIEW_BUTTON_LEFT_PADDING_IF_ALONE:I

    const/high16 v0, 0x4110

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/replyservice/QuickReplyService;->TOAST_TOP_MARGIN:I

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "wap-push-messages"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/android/mms/util/DummyFramework$Cmas;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "directDisplayMessage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->URI:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;-><init>()V

    iput-wide v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    iput v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    iput-wide v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    iput-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipientList:Lcom/android/mms/data/ContactList;

    iput-wide v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mBlockFlickUntilMillis:J

    iput-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mTextLimitToast:Landroid/widget/Toast;

    iput-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mToast:Landroid/widget/Toast;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F

    iput-boolean v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyClicked:Z

    new-instance v0, Lcom/android/mms/replyservice/QuickReplyService$eventReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/replyservice/QuickReplyService$eventReceiver;-><init>(Lcom/android/mms/replyservice/QuickReplyService;Lcom/android/mms/replyservice/QuickReplyService$1;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/replyservice/QuickReplyService$5;

    invoke-direct {v0, p0}, Lcom/android/mms/replyservice/QuickReplyService$5;-><init>(Lcom/android/mms/replyservice/QuickReplyService;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/replyservice/QuickReplyService$6;

    invoke-direct {v0, p0}, Lcom/android/mms/replyservice/QuickReplyService$6;-><init>(Lcom/android/mms/replyservice/QuickReplyService;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/replyservice/QuickReplyService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/replyservice/QuickReplyService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/mms/replyservice/QuickReplyService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/mms/replyservice/QuickReplyService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->getDelayedDeliveryTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/mms/replyservice/QuickReplyService;Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/replyservice/QuickReplyService;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/replyservice/QuickReplyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->sendMarkAsReadIntent()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/replyservice/QuickReplyService;)Lcom/android/mms/data/ContactList;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/replyservice/QuickReplyService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/replyservice/QuickReplyService;->launchMessage(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/mms/replyservice/QuickReplyService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyClicked:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/replyservice/QuickReplyService;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/replyservice/QuickReplyService;->setPopupSlideAnimation(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/replyservice/QuickReplyService;)F
    .locals 1

    iget v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/mms/replyservice/QuickReplyService;F)F
    .locals 0

    iput p1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F

    return p1
.end method

.method static synthetic access$2100()F
    .locals 1

    sget v0, Lcom/android/mms/replyservice/QuickReplyService;->DIALOG_SCROLLVIEW_HEIGHT_PX:F

    return v0
.end method

.method static synthetic access$2200(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCenterAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/mms/replyservice/QuickReplyService;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCenterAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mBottomAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/mms/replyservice/QuickReplyService;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mBottomAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mComposerLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mButtonPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2800()F
    .locals 1

    sget v0, Lcom/android/mms/replyservice/QuickReplyService;->ANIMATION_PANEL_Y_END:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mSendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/replyservice/QuickReplyService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/replyservice/QuickReplyService;->showExceedTextLimitToast(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/replyservice/QuickReplyService;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mEncodingType:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/replyservice/QuickReplyService;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mEncodingType:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/replyservice/QuickReplyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->showInputModeToast()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/replyservice/QuickReplyService;)Lcom/android/mms/data/Conversation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method private static addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    const/high16 v0, 0x3400

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "noti"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method private getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const-string v2, ""

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0c00f8

    invoke-virtual {p0, v3}, Lcom/android/mms/replyservice/QuickReplyService;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0c015f

    invoke-virtual {p0, v3}, Lcom/android/mms/replyservice/QuickReplyService;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getDelayedDeliveryTime()J
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getDelaySendingLength(Landroid/content/Context;)I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v3, v0

    return-wide v3
.end method

.method private static getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "Mms/QuickReplyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImage OOM occured e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Mms/QuickReplyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getMmsUri(J)Landroid/net/Uri;
    .locals 2

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getMsgUribyType(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    sget-object v1, Lcom/android/mms/replyservice/QuickReplyService;->URI:[Ljava/lang/String;

    aget-object v0, v1, v2

    if-eq p1, v2, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/mms/replyservice/QuickReplyService;->URI:[Ljava/lang/String;

    aget-object v0, v1, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-ne p1, v3, :cond_3

    sget-object v1, Lcom/android/mms/replyservice/QuickReplyService;->URI:[Ljava/lang/String;

    aget-object v0, v1, v3

    goto :goto_0

    :cond_3
    if-nez p1, :cond_1

    sget-object v1, Lcom/android/mms/replyservice/QuickReplyService;->URI:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method private static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1

    sget-object v0, Lcom/android/mms/replyservice/QuickReplyService;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    sput-object v0, Lcom/android/mms/replyservice/QuickReplyService;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    :cond_0
    sget-object v0, Lcom/android/mms/replyservice/QuickReplyService;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipientList:Lcom/android/mms/data/ContactList;

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, v5, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipientList:Lcom/android/mms/data/ContactList;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipientList:Lcom/android/mms/data/ContactList;

    return-object v1
.end method

.method private getSlideAttachCount(Lcom/android/mms/model/SlideshowModel;)I
    .locals 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    invoke-virtual {p1, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v6, p1, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p1, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_6
    add-int v0, v2, v4

    move v6, v0

    goto :goto_0
.end method

.method private static getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private initQuickReplyInfos(Landroid/content/Context;JIJ)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Mms/QuickReplyService"

    const-string v2, "initQuickReplyInfos()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p4, v4, :cond_2

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/replyservice/QuickReplyService;->SMS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgBody:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    if-nez p4, :cond_1

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/replyservice/QuickReplyService;->MMS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v6, v0, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSubject:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isCBMessage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CBmessages"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidAddress(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/android/mms/ui/MessageUtils;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private launchMessage(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/mms/replyservice/QuickReplyService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private parsingPdu(Landroid/content/Context;J)V
    .locals 18

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/replyservice/QuickReplyService;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/replyservice/QuickReplyService;->getMmsUri(J)Landroid/net/Uri;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/android/mms/replyservice/QuickReplyService;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v8

    if-eqz v8, :cond_8

    instance-of v12, v8, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v12, :cond_8

    check-cast v8, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/android/mms/replyservice/QuickReplyService;->getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/replyservice/QuickReplyService;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSubject:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0015

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSubject:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v5}, Lcom/android/mms/replyservice/QuickReplyService;->getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/mms/replyservice/QuickReplyService;->getSlideAttachCount(Lcom/android/mms/model/SlideshowModel;)I

    move-result v3

    const-string v10, ""

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/replyservice/QuickReplyService;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_5

    if-nez v6, :cond_3

    if-nez v3, :cond_3

    :cond_1
    :goto_0
    if-nez v6, :cond_7

    move-object v6, v10

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageBodyView:Landroid/widget/TextView;

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v12, 0x1

    if-ne v3, v12, :cond_4

    const v12, 0x7f0c0447

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/replyservice/QuickReplyService;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_4
    const/4 v12, 0x1

    if-le v3, v12, :cond_1

    const v12, 0x7f0c019a

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/mms/replyservice/QuickReplyService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_5
    add-int/lit8 v12, v3, -0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    const v12, 0x7f0c0445

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/replyservice/QuickReplyService;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_6
    add-int/lit8 v12, v3, -0x1

    const/4 v13, 0x1

    if-le v12, v13, :cond_1

    const v12, 0x7f0c0446

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int/lit8 v15, v3, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/mms/replyservice/QuickReplyService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_8
    if-eqz v8, :cond_2

    instance-of v12, v8, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSubject:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0015

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgSubject:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    const-string v12, "Mms/QuickReplyService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MmsException parsingPdu e = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    const v13, 0x7f0c000c

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private sendMarkAsReadIntent()V
    .locals 8

    const/4 v7, 0x1

    iget-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    new-array v3, v7, [I

    const/4 v5, 0x0

    long-to-int v6, v1

    aput v6, v3, v5

    sget-object v5, Lcom/android/mms/replyservice/QuickReplyService;->URI:[Ljava/lang/String;

    aget-object v4, v5, v7

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gtz v5, :cond_1

    const-string v5, "Mms/QuickReplyService"

    const-string v6, "Invalid msgId"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    invoke-direct {p0, v5}, Lcom/android/mms/replyservice/QuickReplyService;->getMsgUribyType(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "Mms/QuickReplyService"

    const-string v6, "sendMarkAsReadIntent()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.accessory.intent.action.UPDATE_NOTIFICATION_ITEM"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "NOTIFICATION_PACKAGE_NAME"

    const-string v6, "com.android.mms"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "NOTIFICATION_ITEM_ID"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v5, "NOTIFICATION_ITEM_URI"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v5, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    if-nez v5, :cond_2

    const-string v5, "CHECK_READ_REPORT"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/mms/replyservice/QuickReplyService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setButtonsGone()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPosButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mDivider1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mDivider2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mNegButton:Landroid/widget/Button;

    sget v1, Lcom/android/mms/replyservice/QuickReplyService;->VIEW_BUTTON_LEFT_PADDING_IF_ALONE:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method

.method private setDialogBackground(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupTop:Landroid/view/View;

    const v1, 0x7f0201ff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;

    const v1, 0x7f020200

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupBottom:Landroid/view/View;

    const v1, 0x7f020201

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private setPopupSlideAnimation(Landroid/view/View;Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    move v1, v0

    :goto_0
    if-eqz p2, :cond_0

    sget v0, Lcom/android/mms/replyservice/QuickReplyService;->ANIMATION_POPUP_Y_START:F

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x258

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/mms/animation/easing/SineInOut80;

    invoke-direct {v4}, Lcom/android/mms/animation/easing/SineInOut80;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p2, :cond_1

    new-instance v3, Lcom/android/mms/replyservice/QuickReplyService$7;

    invoke-direct {v3, p0}, Lcom/android/mms/replyservice/QuickReplyService$7;-><init>(Lcom/android/mms/replyservice/QuickReplyService;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void

    :cond_2
    sget v1, Lcom/android/mms/replyservice/QuickReplyService;->ANIMATION_POPUP_Y_START:F

    goto :goto_0
.end method

.method private setQuickReplyInfo()V
    .locals 6

    const v5, 0x7f0c0138

    const/16 v4, 0x8

    const-string v1, "Mms/QuickReplyService"

    const-string v2, "setQuickReplyInfo()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/replyservice/QuickReplyService;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipients:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipients:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipients:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipientView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipients:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->updateAvatarView()V

    iget v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/replyservice/QuickReplyService;->parsingPdu(Landroid/content/Context;J)V

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMmsImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMmsImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgAddr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mms/replyservice/QuickReplyService;->isCBMessage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipients:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/mms/replyservice/QuickReplyService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgAddr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mms/replyservice/QuickReplyService;->isValidAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->setButtonsGone()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgBody:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageBodyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageBodyView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showExceedTextLimitToast(Z)V
    .locals 8

    const v7, 0x7f0c04bb

    const v6, 0x7f0c0145

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    const/16 v1, 0x46

    :goto_0
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mTextLimitToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/replyservice/QuickReplyService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LGU+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/mms/replyservice/QuickReplyService;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/replyservice/QuickReplyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mTextLimitToast:Landroid/widget/Toast;

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LGU+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mTextLimitToast:Landroid/widget/Toast;

    invoke-virtual {p0, v6}, Lcom/android/mms/replyservice/QuickReplyService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mTextLimitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    const/16 v1, 0xa0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mTextLimitToast:Landroid/widget/Toast;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/android/mms/replyservice/QuickReplyService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showInputModeToast()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    const v3, 0x7f0c04bf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mToast:Landroid/widget/Toast;

    :cond_0
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mToast:Landroid/widget/Toast;

    const/16 v3, 0x30

    sget v4, Lcom/android/mms/replyservice/QuickReplyService;->TOAST_TOP_MARGIN:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Mms/QuickReplyService"

    const-string v3, "showInputModeToast(): ClassCastException, Unable to align to center"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAvatarView()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    long-to-int v3, v4

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CBmessages"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020259

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v4, "Pushmessage"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020265

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02025b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02025c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02025a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    long-to-int v3, v4

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02025d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isFromRecvNoti"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected initCustomLayout()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "Mms/QuickReplyService"

    const-string v4, "initCustomLayout()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b01b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPosButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b01b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b0261

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mNegButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b025f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mDivider1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b0260

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mDivider2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b01f5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mRecipientView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b01f9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageBodyView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b0264

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMessageSubjectView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b020b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMmsImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b01f2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mAvatarView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b025c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b025d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mSendButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b025b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mComposerLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b025e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mButtonPanel:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b0266

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCancelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b0265

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupTop:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b025a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupBottom:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    const v4, 0x7f0b0262

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/mms/replyservice/QuickReplyService;->setDialogBackground(Z)V

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_signature_text"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_key_enable_signature"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;

    const-string v4, "disableEmoticonInput=true"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/mms/replyservice/QuickReplyService$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/mms/replyservice/QuickReplyService$1;-><init>(Lcom/android/mms/replyservice/QuickReplyService;ZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mSendButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/mms/replyservice/QuickReplyService$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/mms/replyservice/QuickReplyService$2;-><init>(Lcom/android/mms/replyservice/QuickReplyService;ZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCancelButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPosButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/mms/replyservice/QuickReplyService$3;

    invoke-direct {v4, p0}, Lcom/android/mms/replyservice/QuickReplyService$3;-><init>(Lcom/android/mms/replyservice/QuickReplyService;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mNegButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/mms/replyservice/QuickReplyService$4;

    invoke-direct {v4, p0}, Lcom/android/mms/replyservice/QuickReplyService$4;-><init>(Lcom/android/mms/replyservice/QuickReplyService;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-super {p0, p1}, Lcom/android/mms/replyservice/MiniModeService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mBottomAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mBottomAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCenterAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mCenterAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyClicked:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mButtonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mComposerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget v0, Lcom/android/mms/replyservice/QuickReplyService;->DIALOG_SCROLLVIEW_HEIGHT_PX:F

    iput v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mComposerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mButtonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupBottom:Landroid/view/View;

    iget v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void

    :cond_5
    iput v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupBottom:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyClicked:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mButtonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mButtonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mComposerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    const/4 v2, -0x1

    invoke-super {p0}, Lcom/android/mms/replyservice/MiniModeService;->onCreate()V

    const-string v0, "Mms/QuickReplyService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    const v1, 0x7f040078

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/replyservice/QuickReplyService;->setContentView(IIIII)V

    invoke-virtual {p0}, Lcom/android/mms/replyservice/QuickReplyService;->getMainView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/replyservice/QuickReplyService;->initCustomLayout()V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.intent.action.dismiss"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v6}, Lcom/android/mms/replyservice/QuickReplyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/mms/replyservice/MiniModeService;->onDestroy()V

    const-string v1, "Mms/QuickReplyService"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/replyservice/QuickReplyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/QuickReplyService"

    const-string v2, "mReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x2

    const-wide/16 v5, 0x0

    const-string v1, "Mms/QuickReplyService"

    const-string v2, "onStartCommand()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v1, "Mms/QuickReplyService"

    const-string v2, "intent is null so return!!!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mReplyClicked:Z

    if-nez v1, :cond_0

    const-string v1, "thread_id"

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    const-string v1, "message_type"

    invoke-virtual {p1, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    const-string v1, "message_id"

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    const-string v1, "message_address"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgAddr:Ljava/lang/String;

    const-string v1, "Mms/QuickReplyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mThreadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMsgType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMsgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_2

    iget-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    invoke-static {p0, v1, v2, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    :cond_2
    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_4

    :cond_3
    const-string v1, "Mms/QuickReplyService"

    const-string v2, "invalid intent extras"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/replyservice/QuickReplyService;->stopSelf()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J

    iget v4, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgType:I

    iget-wide v5, p0, Lcom/android/mms/replyservice/QuickReplyService;->mMsgId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/replyservice/QuickReplyService;->initQuickReplyInfos(Landroid/content/Context;JIJ)V

    invoke-direct {p0}, Lcom/android/mms/replyservice/QuickReplyService;->setQuickReplyInfo()V

    invoke-static {}, Lcom/android/mms/accessory/ReadReportActivity;->getInstance()Lcom/android/mms/accessory/ReadReportActivity;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/mms/accessory/ReadReportActivity;->requestToDismissDialog()V

    const-string v0, "Mms/QuickReplyService"

    const-string v1, "requestToDismissDialog"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/replyservice/MiniModeService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto/16 :goto_0
.end method
