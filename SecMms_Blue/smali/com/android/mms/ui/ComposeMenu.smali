.class public Lcom/android/mms/ui/ComposeMenu;
.super Ljava/lang/Object;
.source "ComposeMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;,
        Lcom/android/mms/ui/ComposeMenu$SendNowListener;,
        Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;
    }
.end annotation


# static fields
.field public static final CONTENT_RESTRICTION:I = -0x5

.field public static final IMAGE_TOO_LARGE:I = -0x4

.field private static final MENU_ACTIONBAR_ATTACH_BUTTON:I = 0x421

.field private static final MENU_ACTIONBAR_DELETE_CANCEL_BUTTON:I = 0x423

.field private static final MENU_ACTIONBAR_DELETE_DONE_BUTTON:I = 0x422

.field private static final MENU_ACTIONBAR_RESERVEMSG:I = 0x428

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x403

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS_MULTIPLE:I = 0x406

.field private static final MENU_ADD_NAMECARD:I = 0x42c

.field private static final MENU_ADD_PRIORITY_SENDER:I = 0x453

.field public static final MENU_ADD_RECIPIENT_MESSAGE:I = 0x43a

.field private static final MENU_ADD_SLIDE:I = 0x41d

.field private static final MENU_ADD_SUBJECT:I = 0x3e8

.field private static final MENU_ATTACHMENT_LIST:I = 0x40b

.field private static final MENU_ATTACH_MENU:I = 0x42e

.field public static final MENU_BLOCK_NUMBER_SETTING:I = 0x427

.field private static final MENU_CALL_RECIPIENT:I = 0x3ee

.field public static final MENU_CALL_RECIPIENT_ICON:I = 0x440

.field private static final MENU_CANCEL_MESSAGE:I = 0x42a

.field private static final MENU_CMAS_FORWARD_MESSAGE:I = 0x44e

.field private static final MENU_CMAS_MORE:I = 0x420

.field private static final MENU_COMBINE_AND_FORWARD:I = 0x448

.field public static final MENU_COMPOSE_NEW:I = 0x43c

.field private static final MENU_CONNECT_URL:I = 0x44d

.field private static final MENU_CONVERSATION_LIST:I = 0x3ef

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0x400

.field private static final MENU_COPY_MESSAGE_TO_SIM:I = 0x407

.field private static final MENU_COPY_TO_SDCARD:I = 0x408

.field private static final MENU_DELETE_MESSAGE:I = 0x3fa

.field public static final MENU_DELETE_MESSAGES_ICON:I = 0x436

.field private static final MENU_DELETE_THREAD:I = 0x3ea

.field private static final MENU_DISCARD:I = 0x3ec

.field private static final MENU_DOWNLOAD_FORCELY:I = 0x434

.field private static final MENU_EDIT_MESSAGE:I = 0x3f6

.field public static final MENU_FONT_SIZE:I = 0x451

.field private static final MENU_FORWARD_MESSAGE:I = 0x3fd

.field private static final MENU_INSERT_SMILEY:I = 0x402

.field private static final MENU_LAYOUT:I = 0x41c

.field private static final MENU_LOCK_MESSAGE:I = 0x404

.field private static final MENU_MESSAGE_SHARE:I = 0x44b

.field private static final MENU_MULTIPLE_COPY_TO_SIM:I = 0x445

.field private static final MENU_MULTI_CANCEL:I = 0x42f

.field private static final MENU_MULTI_LOCK_MESSAGE:I = 0x3eb

.field private static final MENU_MULTI_OK:I = 0x430

.field private static final MENU_PAGE_DURATION:I = 0x410

.field private static final MENU_PHOTORING_CALL_RECIPIENT:I = 0x457

.field public static final MENU_PREFERENCES:I = 0x43e

.field private static final MENU_PREVIEW_SLIDESHOW:I = 0x409

.field private static final MENU_PRIORITY_LEVEL:I = 0x42d

.field private static final MENU_REFRESH_LOCATION:I = 0x455

.field private static final MENU_REMOVE_PRIORITY_SENDER:I = 0x456

.field private static final MENU_REMOVE_SLIDE:I = 0x41e

.field private static final MENU_REMOVE_SUBJECT:I = 0x3f2

.field private static final MENU_REPLY_TO_ALL:I = 0x425

.field private static final MENU_REPLY_TO_SENDER:I = 0x424

.field public static final MENU_REPORT_AS_SPAM:I = 0x450

.field private static final MENU_RESEND_MESSAGE:I = 0x401

.field private static final MENU_SAVE_ADDRESS_TO_CONTACT:I = 0x42b

.field private static final MENU_SAVE_CONV:I = 0x441

.field public static final MENU_SAVE_DRAFT_MESSAGE:I = 0x44b

.field private static final MENU_SAVE_RESTORE_SDCARD:I = 0x442

.field public static final MENU_SAVE_RINGTONE:I = 0x43b

.field private static final MENU_SEARCH:I = 0x3fb

.field public static final MENU_SEARCH_SPLIT:I = 0x43d

.field public static final MENU_SELECT_TEXT:I = 0x439

.field private static final MENU_SEND:I = 0x3ed

.field private static final MENU_SEND_NOW:I = 0x429

.field public static final MENU_SET_AS_RINGTONE:I = 0x44f

.field private static final MENU_TEXT_TEMPLATES:I = 0x3f1

.field private static final MENU_TRANSLATE:I = 0x40c

.field public static final MENU_TRANSLATOR_DIALOG:I = 0x40a

.field public static final MENU_UNBLOCK_NUMBER_SETTING:I = 0x435

.field private static final MENU_UNLOCK_MESSAGE:I = 0x405

.field private static final MENU_VIDEO_CALL_RECIPIENT:I = 0x3f3

.field private static final MENU_VIEW_CONTACT:I = 0x3f4

.field private static final MENU_VIEW_GROUP_MESSAGE_RECIPIENTS:I = 0x454

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0x3f9

.field private static final MENU_VIEW_SLIDESHOW:I = 0x44c

.field public static final MESSAGE_SIZE_EXCEEDED:I = -0x2

.field private static final OFFSET:I = 0x3e8

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/ComposerMenu"

.field public static final UNKNOWN_ERROR:I = -0x1

.field public static final UNSUPPORTED_TYPE:I = -0x3

.field private static mIsSearchMode:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mIsDelayForSearch:Z

.field private mIsFromSearchView:Z

.field private mMaximumSlideElementDuration:I

.field private mNumberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchView:Landroid/widget/SearchView;

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field protected mSendNowConfirmDialog:Landroid/content/DialogInterface;

.field private mSendNowDeliveryReport:Z

.field private mSendNowLocked:Z

.field private mSendNowReadReport:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mSentTimeStamp:Ljava/lang/String;

.field mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

.field private m_lOldMenuTouchTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowDeliveryReport:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowReadReport:Z

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSentTimeStamp:Ljava/lang/String;

    const/16 v0, 0x3e7

    iput v0, p0, Lcom/android/mms/ui/ComposeMenu;->mMaximumSlideElementDuration:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    iput-wide v2, p0, Lcom/android/mms/ui/ComposeMenu;->m_lOldMenuTouchTime:J

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-void
.end method

.method private AddRecipent()V
    .locals 17

    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v14, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v13, "exit_on_sent"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v13, "add_recipient_message"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/ui/ComposeMessageFragment;->showGroupRecipientBanner(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->saveMultiDraft()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    if-ge v6, v13, :cond_1

    invoke-virtual {v3, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v6, v13, :cond_0

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v13, "recipients"

    invoke-virtual {v2, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getReservationTime()J

    move-result-wide v8

    const-string v13, "reservationtime"

    invoke-virtual {v2, v13, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->resetReservedSettings()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v14, "com.android.mms.ui.ReplyMessageActivity"

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v13, "recipients"

    const-string v14, ""

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    new-array v11, v13, [Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v11

    :cond_4
    const/4 v6, 0x0

    :goto_3
    array-length v13, v11

    if-ge v6, v13, :cond_5

    aget-object v13, v11, v6

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getReservationTime()J

    move-result-wide v8

    new-instance v10, Lcom/android/mms/ui/MessageOptions;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v15}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v10, v13, v14, v15, v0}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/ui/ComposeMessageFragment;)V

    const/4 v13, 0x0

    invoke-virtual {v10, v1, v13, v8, v9}, Lcom/android/mms/ui/MessageOptions;->openNewComposer(Ljava/util/ArrayList;ZJ)V

    goto :goto_2
.end method

.method private InsertOrPickContactAddress(Lcom/android/mms/ui/MessageItem;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c0321

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c0322

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0323

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/mms/ui/ComposeMenu$1;

    invoke-direct {v5, p0, v2}, Lcom/android/mms/ui/ComposeMenu$1;-><init>(Lcom/android/mms/ui/ComposeMenu;Lcom/samsung/mms/model/LocationVcardModel;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ComposeMenu;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/ComposeMenu;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ComposeMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSentTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSentTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowDeliveryReport:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowDeliveryReport:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ComposeMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowReadReport:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowReadReport:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    return p1
.end method

.method static synthetic access$1602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMenu;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMenu;->InsertOrPickContactAddress(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeMenu;ILcom/samsung/mms/model/LocationVcardModel;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMenu;->createSaveLocationToContactIntent(ILcom/samsung/mms/model/LocationVcardModel;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ComposeMenu;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/ComposeMenu;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ComposeMenu;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/ComposeMenu;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method private buildAddAddressToContactMenuItem(Landroid/view/Menu;)V
    .locals 10

    const v9, 0x7f0c004b

    const v8, 0x7f02009c

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ne v4, v7, :cond_6

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/16 v5, 0x403

    invoke-interface {p1, v6, v5, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_5
    :goto_1
    return-void

    :cond_6
    if-le v4, v7, :cond_5

    const/16 v5, 0x406

    invoke-interface {p1, v6, v5, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private createSaveLocationToContactIntent(ILcom/samsung/mms/model/LocationVcardModel;)Landroid/content/Intent;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    const-string v4, "Address"

    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "name"

    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v4, "postal_isprimary"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "postal_type"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "postal"

    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getFormattedAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getPhoneList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    const-string v4, "phone_type"

    const/4 v5, 0x7

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    const-string v4, "phone"

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    if-ne p1, v6, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_0
    const-string v4, "phone_type"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :pswitch_1
    const-string v4, "phone_type"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :pswitch_2
    const-string v4, "phone_type"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDrmMimeMenuStringRsrc(J)I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->isDrmRingtoneWithRights(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c037e

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v2, p1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x1

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v9

    iget v9, v9, Lcom/android/mms/ui/MessageItem;->mLayoutType:I

    if-ne v9, v10, :cond_4

    const v9, 0x7f0b01d9

    invoke-virtual {v2, v9}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    :cond_2
    const/4 v9, -0x1

    if-ne v4, v9, :cond_3

    const v9, 0x7f0b008f

    invoke-virtual {v2, v9}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    :cond_3
    if-eq v4, v3, :cond_0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    check-cast v5, Landroid/text/Spanned;

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v5, v1, v0, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    array-length v9, v7

    if-ne v9, v10, :cond_0

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_0

    :cond_4
    const v9, 0x7f0b01e3

    invoke-virtual {v2, v9}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    goto :goto_1
.end method

.method private isAvaliableSelectTextMenu(Lcom/android/mms/ui/MessageItem;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p3}, Lcom/android/mms/ui/ComposeMenu;->getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v4, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    :cond_0
    return-void
.end method

.method public closeSearchView(Z)V
    .locals 3

    const-string v0, "Mms/ComposerMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSearchView invalidate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMenu;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSearchView:Landroid/widget/SearchView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public confirmCmasForwardMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0428

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;-><init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public confirmRegisterAsSpamNumber()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0414

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0416

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/ComposeMenu$11;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMenu$11;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public isSearchMode()Z
    .locals 3

    const-string v0, "Mms/ComposerMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSearchMode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageItem;)V
    .locals 15

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v11

    if-nez v11, :cond_0

    :cond_2
    const v11, 0x7f0c001d

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    new-instance v5, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {v5, p0, v0, v1}, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    const/16 v12, 0x3fa

    const/4 v13, 0x0

    const v14, 0x7f0c0451

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto :goto_0

    :cond_3
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_4
    const/4 v11, 0x1

    const/16 v12, 0x3fa

    const/4 v13, 0x0

    const v14, 0x7f0c0451

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v11, 0x0

    const/16 v12, 0x400

    const/4 v13, 0x0

    const v14, 0x7f0c0452

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    const/16 v12, 0x3fd

    const/4 v13, 0x0

    const v14, 0x7f0c0012

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_5
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_6
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    const/4 v11, 0x1

    const/16 v12, 0x3fa

    const/4 v13, 0x0

    const v14, 0x7f0c0451

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_7

    const/4 v11, 0x0

    const/16 v12, 0x3f9

    const/4 v13, 0x0

    const v14, 0x7f0c000e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    const/16 v12, 0x44e

    const/4 v13, 0x0

    const v14, 0x7f0c0012

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_8
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v11

    if-eqz v11, :cond_2e

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFailed()Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_a
    const/4 v11, 0x1

    const/16 v12, 0x401

    const/4 v13, 0x0

    const v14, 0x7f0c0090

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_b
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/ContactList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_c

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    const/4 v11, 0x1

    const/16 v12, 0x424

    const/4 v13, 0x0

    const v14, 0x7f0c02d5

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_c
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    const/16 v12, 0x429

    const/4 v13, 0x0

    const v14, 0x7f0c02de

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v11, 0x1

    const/16 v12, 0x42a

    const/4 v13, 0x0

    const v14, 0x7f0c02df

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_d
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isNoReservedMessage()Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    const/16 v12, 0x3fa

    const/4 v13, 0x0

    const v14, 0x7f0c0451

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_e
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_10

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v11

    if-eqz v11, :cond_2f

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v11, :cond_2f

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2f

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v6

    if-eqz v6, :cond_f

    new-instance v4, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v12, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "extra_startup_flag"

    const/4 v12, 0x4

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v11, "extra_map_url"

    invoke-virtual {v6}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "extra_selected_place"

    invoke-virtual {v6}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_f
    :goto_2
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_10

    const/4 v11, 0x0

    const/16 v12, 0x44c

    const/4 v13, 0x0

    const v14, 0x7f0c03cc

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-nez v11, :cond_11

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_12

    :cond_11
    const/4 v11, 0x0

    const/16 v12, 0x400

    const/4 v13, 0x0

    const v14, 0x7f0c0452

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_12
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-static/range {p3 .. p3}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-nez v11, :cond_14

    :cond_13
    const/4 v11, 0x1

    const/16 v12, 0x3fd

    const/4 v13, 0x0

    const v14, 0x7f0c0012

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_14
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_15

    move-object/from16 v0, p3

    iget-boolean v11, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v11, :cond_31

    const/4 v11, 0x1

    const/16 v12, 0x405

    const/4 v13, 0x0

    const v14, 0x7f0c0454

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_15
    :goto_4
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/ContactList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v11

    if-nez v11, :cond_16

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v11

    if-eqz v11, :cond_17

    :cond_16
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_17

    const/4 v11, 0x1

    const/16 v12, 0x3f6

    const/4 v13, 0x0

    const v14, 0x7f0c008f

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_17
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplyAll()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_18

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-static {v11, v0, v12}, Lcom/android/mms/ui/MessageUtils;->getReplyAllCount(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)Z

    move-result v11

    if-eqz v11, :cond_18

    const/4 v11, 0x1

    const/16 v12, 0x425

    const/4 v13, 0x0

    const v14, 0x7f0c01a5

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_18
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v11, :cond_32

    const/4 v11, 0x0

    const/16 v12, 0x40b

    const/4 v13, 0x0

    const v14, 0x7f0c011a

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_19
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v11

    if-eqz v11, :cond_1a

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/16 v12, 0xa

    if-ne v11, v12, :cond_1a

    const/4 v11, 0x1

    const/16 v12, 0x42b

    const/4 v13, 0x0

    const v14, 0x7f0c0319

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v11

    if-eqz v11, :cond_1b

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v11

    if-nez v11, :cond_1b

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v11

    if-eqz v11, :cond_1b

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v11

    if-nez v11, :cond_1b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVideoCall()Z

    move-result v11

    if-eqz v11, :cond_1b

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_1b

    const/4 v11, 0x0

    const/16 v12, 0x3f3

    const/4 v13, 0x0

    const v14, 0x7f0c0234

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-static/range {p3 .. p3}, Lcom/android/mms/util/TelephonyUtils;->isEnableLinkUrlService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v11, 0x1

    const/16 v12, 0x44d

    const/4 v13, 0x0

    const v14, 0x7f0c019e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1c
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-eqz v11, :cond_20

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v11

    if-eqz v11, :cond_1f

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_1f

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isNoReservedMessage()Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_1f

    invoke-static/range {p3 .. p3}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1d

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1f

    :cond_1d
    if-nez v2, :cond_1f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-static/range {p3 .. p3}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-nez v11, :cond_1f

    :cond_1e
    const/4 v11, 0x1

    const/16 v12, 0x407

    const/4 v13, 0x0

    const v14, 0x7f0c0019

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v11

    if-eqz v11, :cond_20

    const/4 v11, 0x1

    const/16 v12, 0x441

    const/4 v13, 0x0

    const v14, 0x7f0c03b1

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_20
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v11

    if-eqz v11, :cond_22

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_22

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-static/range {p3 .. p3}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isNoReservedMessage()Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_21

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_22

    :cond_21
    const/4 v11, 0x0

    const/16 v12, 0x408

    const/4 v13, 0x0

    const v14, 0x7f0c026e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_22
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageShare()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-nez v11, :cond_23

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_24

    :cond_23
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_24

    const/4 v11, 0x0

    const/16 v12, 0x44b

    const/4 v13, 0x0

    const v14, 0x7f0c0124

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_24
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v11

    if-eqz v11, :cond_25

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v11

    if-lez v11, :cond_25

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v11

    if-nez v11, :cond_25

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_25

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/data/Contact;

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_25

    const/4 v11, 0x1

    const/16 v12, 0x427

    const/4 v13, 0x0

    const v14, 0x7f0c02af

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_25
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_26

    const/4 v11, 0x0

    const/16 v12, 0x3f9

    const/4 v13, 0x0

    const v14, 0x7f0c000e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_26
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReportAsSpam()Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-eqz v11, :cond_27

    const/4 v11, 0x1

    const/16 v12, 0x450

    const/4 v13, 0x0

    const v14, 0x7f0c0460

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_27
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v11

    if-eqz v11, :cond_28

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-nez v11, :cond_28

    const/4 v11, 0x1

    const/16 v12, 0x434

    const/4 v13, 0x0

    const v14, 0x7f0c0013

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_28
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableSaveRingtone()Z

    move-result v11

    if-eqz v11, :cond_29

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_29

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_29

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v11, v12, v13}, Lcom/android/mms/ui/MessageUtils;->isDrmRingtoneWithRights(Landroid/content/Context;J)Z

    move-result v11

    if-eqz v11, :cond_29

    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-direct {p0, v11, v12}, Lcom/android/mms/ui/ComposeMenu;->getDrmMimeMenuStringRsrc(J)I

    move-result v9

    if-lez v9, :cond_29

    const/4 v11, 0x0

    const/16 v12, 0x43b

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_29
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v11

    if-eqz v11, :cond_2c

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-eqz v11, :cond_2a

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2b

    :cond_2a
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_2c

    invoke-static/range {p3 .. p3}, Lcom/android/mms/ui/TranslateManager;->isTranslatableMms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-eqz v11, :cond_2c

    :cond_2b
    const/4 v11, 0x0

    const/16 v12, 0x40c

    const/4 v13, 0x0

    const v14, 0x7f0c017d

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    sget-object v11, Lcom/android/mms/ui/TranslateManager;->mSupportedLanguages:Ljava/util/ArrayList;

    if-nez v11, :cond_2c

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "caller"

    const-string v12, "msg"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v11, 0x40c

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuSetAsRingtone()Z

    move-result v11

    if-eqz v11, :cond_2d

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_2d

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_2d

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->hasAudioInSlideshow()Z

    move-result v11

    if-eqz v11, :cond_2d

    const/4 v11, 0x0

    const/16 v12, 0x44f

    const/4 v13, 0x0

    const v14, 0x7f0c0449

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_2d
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_2e
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    const/16 v12, 0x401

    const/4 v13, 0x0

    const v14, 0x7f0c0090

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_2f
    new-instance v4, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v12, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v11, 0x2000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v11, "msgId"

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v12

    invoke-virtual {v4, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v11, "thread_id"

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v12

    invoke-virtual {v4, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_30
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    const/4 v11, 0x0

    const/16 v12, 0x400

    const/4 v13, 0x0

    const v14, 0x7f0c0452

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_31
    const/4 v11, 0x1

    const/16 v12, 0x404

    const/4 v13, 0x0

    const v14, 0x7f0c0453

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_32
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_19

    :try_start_0
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    iget-wide v13, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-eqz v8, :cond_19

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_19

    const/4 v11, 0x0

    const/16 v12, 0x40b

    const/4 v13, 0x0

    const v14, 0x7f0c011a

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v3

    const-string v11, "Mms/ComposerMenu"

    invoke-virtual {v3}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->closeOptionsMenu()V

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mIsHardKeyboardOpen:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSipWithHardKeypad()V

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    move/from16 v0, v30

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    :cond_0
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x3400

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "vnd.android-dir/mms-sms"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_2

    :sswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasLocationAttachment()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v15, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c031d

    invoke-virtual {v15, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c032b

    invoke-virtual {v15, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c00e7

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$2;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v15, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c00e8

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$3;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v15, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    const/16 v7, 0xd

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    const/16 v7, 0xd

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->previewSlideshow()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v33

    if-eqz v33, :cond_8

    const-string v3, ""

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v24, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v25

    if-eqz v25, :cond_7

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    :cond_7
    :goto_4
    sget-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :cond_8
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v3}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$4;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    const-wide/16 v7, 0x64

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    goto :goto_4

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    if-lez v19, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getHandleComposerAttachment()Lcom/android/mms/util/HandleComposerAttachment;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/android/mms/util/HandleComposerAttachment;->startActivityForAddText(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/data/Contact;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v14}, Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    :cond_c
    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMenu;->confirmRegisterAsSpamNumber()V

    goto :goto_5

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v13, v7, v8, v4}, Lcom/android/mms/glance/GlanceUtils;->addPrioritySender(Landroid/content/Context;Ljava/lang/String;JZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/prioritysender/PrioritySenderCache;->fillCache()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c04c1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->updatePrioritySenderList()V

    :cond_e
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Lcom/android/mms/glance/GlanceUtils;->deletePrioritySender(Landroid/content/Context;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/prioritysender/PrioritySenderCache;->fillCache()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c04c2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v28, v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->updatePrioritySenderList()V

    :cond_f
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/mms/data/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0418

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->discard()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v30

    const/4 v3, 0x2

    move/from16 v0, v30

    if-ne v0, v3, :cond_11

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->setFromSplitDiscard(Z)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    :cond_12
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->onSearchRequested()Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->removeAnimationForSingleMsg()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    if-nez v3, :cond_13

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v3

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/16 v4, 0x2538

    invoke-static {v3, v7, v8, v4}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraftAndReset(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->enableMultiMode(IZ)Z

    goto :goto_6

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x3

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->enableMultiMode(IZ)Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startQueryMultiLockedMessages()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->enableMultiMode(IZ)Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$5;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/mms/ui/ComposeMenu;->m_lOldMenuTouchTime:J

    sub-long v3, v26, v3

    const-wide/16 v7, 0x3e8

    cmp-long v3, v3, v7

    if-lez v3, :cond_16

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/ComposeMenu;->m_lOldMenuTouchTime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->dialRecipient()V

    :cond_16
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshLocation()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->videoCallRecipient()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isImsRegistered(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->photoringCallRecipient()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showSmileyDialog()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v17

    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v3, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_18

    sget-object v3, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_18
    const/high16 v3, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z

    :cond_19
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showQuickTextDialog()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_18
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setContactIntent(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v4, 0x1d

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showChooseContactDialog()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_1a
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    const/4 v10, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c021a

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v5, Lcom/android/mms/ui/ComposeMenu$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/ui/ComposeMenu$6;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getDuration()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/4 v3, 0x0

    div-int/lit16 v4, v6, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    if-ge v6, v3, :cond_1b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v6

    :cond_1a
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v34, v0

    new-instance v3, Lcom/android/mms/ui/MessagePickerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/ui/ComposeMenu;->mMaximumSlideElementDuration:I

    const/4 v9, -0x1

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    move-object/from16 v0, v34

    iput-object v3, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessagePickerDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$7;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v18

    const-string v3, "Mms/ComposerMenu"

    const-string v4, "NullPointerException !!!"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/ComposeMenu;->mMaximumSlideElementDuration:I

    if-le v6, v3, :cond_1a

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/mms/ui/ComposeMenu;->mMaximumSlideElementDuration:I

    goto :goto_7

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showLayoutSelectorDialog()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    add-int/lit8 v23, v3, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->addSlide(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/16 v7, 0x21

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    sget-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v24

    if-nez v24, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v25

    if-eqz v25, :cond_1e

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshSignatureInEditor(Ljava/lang/String;)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v3

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MmsRichContainer;->removePage(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/16 v7, 0x23

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    :cond_20
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->copytoSIM()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v3

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startMessageTransmitSettingsActivity(Z)V

    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startMessageReservedSettingActivity(Z)V

    goto :goto_8

    :sswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x5

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->enableMultiMode(IZ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->setCombineAndForwardMode(Z)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showPriorityLevel()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_22
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMenu;->AddRecipent()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isWorthSaving()Z

    move-result v3

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c040d

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isValidRecipientEdier()Z

    move-result v3

    if-nez v3, :cond_23

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->noRecipientsInEditor()Z

    move-result v3

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipientEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipientEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0185

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_9
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_25
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraftAndReset(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isExitOnSent()Z

    move-result v3

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$8;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    goto :goto_9

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$9;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto :goto_9

    :sswitch_24
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableComposeWhenLowMemory()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLowMemoryMode()Z

    move-result v3

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c04af

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_a
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->composeNewMessage(Landroid/app/Activity;)V

    goto :goto_a

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startSearchMenu(Landroid/app/Activity;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_26
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/MessagingPreferenceActivity;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateManager()Lcom/android/mms/ui/TranslateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/TranslateManager;->hasSamsungAccount()Z

    move-result v3

    if-nez v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateManager()Lcom/android/mms/ui/TranslateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/TranslateManager;->showSignInSamsungAccount(Landroid/content/Context;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateManager()Lcom/android/mms/ui/TranslateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/TranslateManager;->showTranslateDialog(Landroid/content/Context;)V

    goto :goto_b

    :sswitch_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->changeFontSize()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->viewContactDetailORList()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_3
        0x3ea -> :sswitch_d
        0x3eb -> :sswitch_f
        0x3ec -> :sswitch_a
        0x3ed -> :sswitch_b
        0x3ee -> :sswitch_11
        0x3ef -> :sswitch_10
        0x3f1 -> :sswitch_17
        0x3f2 -> :sswitch_4
        0x3f3 -> :sswitch_13
        0x3f4 -> :sswitch_16
        0x3fb -> :sswitch_c
        0x402 -> :sswitch_15
        0x403 -> :sswitch_18
        0x406 -> :sswitch_19
        0x409 -> :sswitch_2
        0x40a -> :sswitch_27
        0x410 -> :sswitch_1a
        0x41c -> :sswitch_1b
        0x41d -> :sswitch_1c
        0x41e -> :sswitch_1d
        0x427 -> :sswitch_6
        0x428 -> :sswitch_1f
        0x42c -> :sswitch_5
        0x42d -> :sswitch_21
        0x42e -> :sswitch_1
        0x435 -> :sswitch_9
        0x436 -> :sswitch_d
        0x43a -> :sswitch_22
        0x43c -> :sswitch_24
        0x43d -> :sswitch_25
        0x43e -> :sswitch_26
        0x440 -> :sswitch_11
        0x442 -> :sswitch_e
        0x445 -> :sswitch_1e
        0x448 -> :sswitch_20
        0x44b -> :sswitch_23
        0x451 -> :sswitch_28
        0x453 -> :sswitch_7
        0x454 -> :sswitch_29
        0x455 -> :sswitch_12
        0x456 -> :sswitch_8
        0x457 -> :sswitch_14
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 27

    const-string v19, "Mms/ComposerMenu"

    const-string v20, "onPrepareOptionsMenu()"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ConversationComposer;->getConversationListFragment()Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "Mms/ComposerMenu"

    const-string v20, "onPrepareOptionsMenu() Already delete or move mode"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v19

    if-nez v19, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    const/16 v20, 0x455

    const/16 v21, 0x0

    const v22, 0x7f0c0313

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0202a8

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v19

    if-nez v19, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTECallIcon()Z

    move-result v19

    if-eqz v19, :cond_6

    new-instance v10, Lcom/android/mms/VoLTEStateTracker;

    invoke-direct {v10}, Lcom/android/mms/VoLTEStateTracker;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/mms/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v19, 0x0

    const/16 v20, 0x440

    const/16 v21, 0x0

    const v22, 0x7f0c0005

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f020319

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v19

    if-nez v19, :cond_0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v11

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isUnknownAddressMessage()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    const/16 v19, 0x1

    const/16 v20, 0x436

    const/16 v21, 0x0

    const v22, 0x7f0c007a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f020009

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_5
    const/16 v19, 0x0

    const/16 v20, 0x440

    const/16 v21, 0x0

    const v22, 0x7f0c0005

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f02009e

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    :cond_6
    const/16 v19, 0x0

    const/16 v20, 0x440

    const/16 v21, 0x0

    const v22, 0x7f0c0005

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f02009e

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    :cond_7
    const/16 v19, 0x0

    const/16 v20, 0x3ee

    const/16 v21, 0x0

    const v22, 0x7f0c0005

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f02009e

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddSendOptionInComposer()Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSendingMenu()Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v19

    if-nez v19, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->hasOnlySignatureText()Z

    move-result v19

    if-nez v19, :cond_a

    :cond_9
    const/16 v19, 0x1

    const/16 v20, 0x3ed

    const/16 v21, 0x0

    const v22, 0x7f0c0029

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200c8

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v19

    if-nez v19, :cond_b

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v19

    if-nez v19, :cond_b

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v19

    if-eqz v19, :cond_10

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v19

    if-eqz v19, :cond_f

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_e

    const/16 v19, 0x1

    const/16 v20, 0x436

    const/16 v21, 0x0

    const v22, 0x7f0c0092

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f020009

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_2
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v11, v0, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v19

    if-eqz v19, :cond_c

    const/16 v19, 0x1

    const/16 v20, 0x3eb

    const/16 v21, 0x0

    const v22, 0x7f0c0096

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200b4

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v19, 0x1

    const/16 v20, 0x442

    const/16 v21, 0x0

    const v22, 0x7f0c03b0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200c5

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_e
    const/16 v19, 0x1

    const/16 v20, 0x436

    const/16 v21, 0x0

    const v22, 0x7f0c0093

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f020009

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_f
    const/16 v19, 0x1

    const/16 v20, 0x436

    const/16 v21, 0x0

    const v22, 0x7f0c007a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f020009

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x2

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/ContactList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v19

    if-nez v19, :cond_11

    const/16 v19, 0x0

    const/16 v20, 0x454

    const/16 v21, 0x0

    const v22, 0x7f0c01b8

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f02007e

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v19

    if-nez v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v19

    if-nez v19, :cond_12

    const/16 v19, 0x1

    const/16 v20, 0x436

    const/16 v21, 0x0

    const v22, 0x7f0c007a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f020009

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x2

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v19

    if-nez v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v19

    if-nez v19, :cond_13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVideoCall()Z

    move-result v19

    if-eqz v19, :cond_13

    const/16 v19, 0x0

    const/16 v20, 0x3f3

    const/16 v21, 0x0

    const v22, 0x7f0c0234

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200d0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v19

    const-string v20, "LGU+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isLGUUsim()Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v19

    if-nez v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v19

    if-nez v19, :cond_14

    const/16 v19, 0x0

    const/16 v20, 0x457

    const/16 v21, 0x0

    const v22, 0x7f0c0006

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f02009e

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    const-string v20, "com.android.contacts"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_17

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/data/ContactList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v19

    if-eqz v19, :cond_16

    const/16 v19, 0x0

    const/16 v20, 0x3f4

    const/16 v21, 0x0

    const v22, 0x7f0c004a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200a1

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMenu;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v19

    if-nez v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v19

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v19

    if-eqz v19, :cond_18

    const/16 v19, 0x1

    const/16 v20, 0x3f1

    const/16 v21, 0x0

    const v22, 0x7f0c04b4

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f02009b

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAddRecipients()Z

    move-result v19

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v19

    if-nez v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_19

    const/16 v19, 0x1

    const/16 v20, 0x43a

    const/16 v21, 0x0

    const v22, 0x7f0c0377

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f020098

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v19

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v19

    if-nez v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v19

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->isFocused()Z

    move-result v19

    if-eqz v19, :cond_1b

    :cond_1a
    const/16 v19, 0x0

    const/16 v20, 0x402

    const/16 v21, 0x0

    const v22, 0x7f0c00ce

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200b1

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v19

    if-eqz v19, :cond_1c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSubject()Z

    move-result v19

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v19

    if-nez v19, :cond_31

    const/16 v19, 0x1

    const/16 v20, 0x3e8

    const/16 v21, 0x0

    const v22, 0x7f0c0024

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f02009a

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1c
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v19

    if-eqz v19, :cond_1f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v19

    if-eqz v19, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v19

    if-nez v19, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v19

    if-nez v19, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v19

    if-eqz v19, :cond_1f

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-eqz v19, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-eqz v19, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v19

    if-eqz v19, :cond_1f

    :cond_1e
    const/16 v19, 0x0

    const/16 v20, 0x409

    const/16 v21, 0x0

    const v22, 0x7f0c0045

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200b9

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v19

    if-eqz v19, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v19

    if-eqz v19, :cond_20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v19

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    if-eqz v19, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_32

    :cond_20
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v19

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v19

    if-nez v19, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v19

    if-nez v19, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_21

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v19

    if-eqz v19, :cond_38

    const/16 v19, 0x1

    const/16 v20, 0x428

    const/16 v21, 0x0

    const v22, 0x7f0c041c

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200c6

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_21
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v19

    if-eqz v19, :cond_23

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v19

    if-eqz v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v19

    if-eqz v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    if-eqz v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v19

    if-lez v19, :cond_23

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideModel;->getDuration()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    :goto_6
    const/16 v19, 0x0

    div-int/lit16 v0, v15, 0x3e8

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v19

    move/from16 v0, v19

    if-ge v15, v0, :cond_22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v15

    :cond_22
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    const v20, 0x7f0c0046

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    :goto_7
    const/16 v19, 0x1

    const/16 v20, 0x410

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200ab

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_23
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v19

    if-eqz v19, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v19

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v19

    if-eqz v19, :cond_24

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v19

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v19

    if-nez v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3a

    const v14, 0x7f0c0047

    :goto_8
    const/16 v19, 0x1

    const/16 v20, 0x41c

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3, v14}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200b7

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_24
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmEnableAddContactIn1stDepthComposerOption()Z

    move-result v19

    if-eqz v19, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v19

    if-eqz v19, :cond_25

    const/16 v19, 0x1

    const/16 v20, 0x42c

    const/16 v21, 0x0

    const v22, 0x7f0c0361

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f020317

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v19

    if-eqz v19, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v19

    if-lez v19, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v19

    if-nez v19, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_26

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-lez v19, :cond_26

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v19

    if-eqz v19, :cond_26

    const/16 v19, 0x1

    const/16 v20, 0x3ea

    const/16 v21, 0x0

    const v22, 0x7f0c0092

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f020009

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_26
    :goto_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiCopyToSIM()Z

    move-result v19

    if-eqz v19, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v19

    if-nez v19, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v19

    if-lez v19, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_27

    const/16 v19, 0x1

    const/16 v20, 0x445

    const/16 v21, 0x0

    const v22, 0x7f0c0019

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200a5

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnablePrioritySender(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v19

    if-eqz v19, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v19

    if-lez v19, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v19

    if-nez v19, :cond_28

    invoke-virtual {v13}, Lcom/android/mms/data/ContactList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_28

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_28

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_28

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/mms/util/TelephonyUtils;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v12

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/mms/prioritysender/PrioritySenderCache;->isPrioritySender(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_40

    const/16 v19, 0x0

    const/16 v20, 0x456

    const/16 v21, 0x0

    const v22, 0x7f0c0471

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_28
    :goto_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v19

    if-eqz v19, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v19

    if-eqz v19, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v19

    if-lez v19, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v19

    if-nez v19, :cond_29

    invoke-virtual {v13}, Lcom/android/mms/data/ContactList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_29

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_29

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v19

    if-eqz v19, :cond_41

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_29

    const/16 v19, 0x1

    const/16 v20, 0x427

    const/16 v21, 0x0

    const v22, 0x7f0c02af

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f02009d

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_29
    :goto_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v19

    if-eqz v19, :cond_2a

    const/16 v19, 0x1

    const/16 v20, 0x42d

    const/16 v21, 0x0

    const v22, 0x7f0c0455

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200bb

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v19

    if-eqz v19, :cond_2b

    const/16 v19, 0x1

    const/16 v20, 0x44b

    const/16 v21, 0x0

    const v22, 0x7f0c00e4

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f020318

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v19

    if-eqz v19, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v19

    if-eqz v19, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v19

    if-eqz v19, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v19

    if-eqz v19, :cond_2d

    :cond_2c
    const/16 v19, 0x0

    const/16 v20, 0x40a

    const/16 v21, 0x0

    const v22, 0x7f0c017d

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0202da

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-object v19, Lcom/android/mms/ui/TranslateManager;->mSupportedLanguages:Ljava/util/ArrayList;

    if-nez v19, :cond_2d

    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    const-string v19, "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "caller"

    const-string v20, "msg"

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v19, 0x40a

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_2e

    const/16 v19, 0x1

    const/16 v20, 0x3ec

    const/16 v21, 0x0

    const v22, 0x7f0c0025

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200a7

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v19

    if-eqz v19, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v19

    if-nez v19, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->msgItemMmsOnly()Z

    move-result v19

    if-nez v19, :cond_2f

    const/16 v19, 0x1

    const/16 v20, 0x448

    const/16 v21, 0x0

    const v22, 0x7f0c042a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200ae

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v19

    if-eqz v19, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v19

    if-nez v19, :cond_30

    const/16 v19, 0x0

    const/16 v20, 0x451

    const/16 v21, 0x0

    const v22, 0x7f0c03f6

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200ba

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v19

    if-eqz v19, :cond_1c

    const/16 v19, 0x1

    const/16 v20, 0x3f2

    const/16 v21, 0x0

    const v22, 0x7f0c0119

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200c0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    if-eqz v19, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_34

    :cond_33
    const/16 v19, 0x1

    const/16 v20, 0x41d

    const/16 v21, 0x0

    const v22, 0x7f0c0020

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f020099

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v19

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v16

    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_20

    const/16 v19, 0x1

    const/16 v20, 0x41e

    const/16 v21, 0x0

    const v22, 0x7f0c001f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200bf

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v19

    if-eqz v19, :cond_20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v19

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    if-eqz v19, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_37

    :cond_36
    const/16 v19, 0x1

    const/16 v20, 0x41d

    const/16 v21, 0x0

    const v22, 0x7f0c0020

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f020099

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v19

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v16

    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_20

    const/16 v19, 0x1

    const/16 v20, 0x41e

    const/16 v21, 0x0

    const v22, 0x7f0c001f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200bf

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_38
    const/16 v19, 0x1

    const/16 v20, 0x428

    const/16 v21, 0x0

    const v22, 0x7f0c02d8

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200c6

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_5

    :catch_0
    move-exception v8

    const-string v19, "Mms/ComposerMenu"

    const-string v20, "NullPointerException !!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    const v20, 0x7f0c0132

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_7

    :cond_3a
    const v14, 0x7f0c0048

    goto/16 :goto_8

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v19

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v19

    if-eqz v19, :cond_24

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v19

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v19

    if-nez v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3c

    const v14, 0x7f0c0047

    :goto_d
    const/16 v19, 0x1

    const/16 v20, 0x41c

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3, v14}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200b7

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_9

    :cond_3c
    const v14, 0x7f0c0048

    goto :goto_d

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v19

    if-eqz v19, :cond_3e

    const/16 v19, 0x1

    const/16 v20, 0x3ea

    const/16 v21, 0x0

    const v22, 0x7f0c0093

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f020009

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v19

    if-eqz v19, :cond_3f

    const/16 v19, 0x1

    const/16 v20, 0x3eb

    const/16 v21, 0x0

    const v22, 0x7f0c0096

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200b4

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v19

    if-eqz v19, :cond_26

    const/16 v19, 0x1

    const/16 v20, 0x442

    const/16 v21, 0x0

    const v22, 0x7f0c03b0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200c5

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_a

    :cond_40
    invoke-virtual {v12}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getCount()I

    move-result v19

    const/16 v20, 0x19

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_28

    const/16 v19, 0x0

    const/16 v20, 0x453

    const/16 v21, 0x0

    const v22, 0x7f0c0470

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_b

    :cond_41
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_29

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/mms/util/TelephonyUtils;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_42

    const/16 v19, 0x1

    const/16 v20, 0x435

    const/16 v21, 0x0

    const v22, 0x7f0c041b

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200ce

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_c

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v19

    if-nez v19, :cond_29

    const/16 v19, 0x1

    const/16 v20, 0x427

    const/16 v21, 0x0

    const v22, 0x7f0c0414

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x7f0200bd

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_c
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public startSearchMenu()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMenu$10;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMenu$10;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
