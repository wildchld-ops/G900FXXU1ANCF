.class public Lcom/android/mms/util/HandleComposerAttachment;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"


# static fields
.field private static final AVATAR_SOURCE:Ljava/lang/String; = "/mnt/sdcard/message_avatar_temp.jpg"

.field private static final AVATAR_TARGET:Ljava/lang/String; = "/data/data/com.android.mms/message_avatar_temp.jpg"

.field private static final AVATAR_TARGET_URI:Ljava/lang/String; = "file:///data/data/com.android.mms/message_avatar_temp.jpg"

.field private static final AVATAR_TARGET_URI_FILENAME:Ljava/lang/String; = "message_avatar_temp.jpg"

.field private static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final GET_MYLOCATION:I = 0x0

.field public static final REQUEST_CODE_ADDTEXT_CALENDAR:I = 0x1f

.field public static final REQUEST_CODE_ADDTEXT_CONTACT:I = 0x1d

.field public static final REQUEST_CODE_ADDTEXT_LOCATION:I = 0x23

.field public static final REQUEST_CODE_ADDTEXT_MEMO:I = 0x20

.field public static final REQUEST_CODE_ADDTEXT_NAMECARD:I = 0x1e

.field public static final REQUEST_CODE_ADDTEXT_SCRAPBOOK:I = 0x3b

.field public static final REQUEST_CODE_ADDTEXT_SMEMO:I = 0x25

.field public static final REQUEST_CODE_ADDTEXT_SNOTE:I = 0x26

.field public static final REQUEST_CODE_ADDTEXT_TASK:I = 0x22

.field public static final REQUEST_CODE_ATTACH_LOCATION:I = 0x27

.field public static final REQUEST_CODE_ECM_EXIT_DIALOG:I = 0x11

.field public static final REQUEST_CODE_INSERT_TEXT:I = 0x3

.field public static final REQUEST_CODE_PICK_AVATAR:I = 0x36

.field public static final REQUEST_CODE_PICK_AVATAR_REPLACE:I = 0x37

.field public static final REQUEST_CODE_PICK_CONTACT:I = 0x13

.field public static final REQUEST_CODE_PICK_DRAWINGPAD:I = 0x33

.field public static final REQUEST_CODE_PICK_LOCATION:I = 0x24

.field public static final REQUEST_CODE_PICK_MULTI_PICTURE:I = 0x38

.field public static final REQUEST_CODE_PICK_PENMEMO:I = 0x32

.field public static final REQUEST_CODE_PICK_PICTURE:I = 0xa

.field public static final REQUEST_CODE_PICK_PICTURE_REPLACE:I = 0x29

.field public static final REQUEST_CODE_PICK_SCRAPBOOK:I = 0x3a

.field public static final REQUEST_CODE_PICK_SNOTE:I = 0x35

.field public static final REQUEST_CODE_PICK_SOUND:I = 0xe

.field public static final REQUEST_CODE_PICK_SOUND_REPLACE:I = 0x2d

.field public static final REQUEST_CODE_PICK_VCAL:I = 0x1a

.field public static final REQUEST_CODE_PICK_VCARD:I = 0x14

.field public static final REQUEST_CODE_PICK_VIDEO:I = 0xc

.field public static final REQUEST_CODE_PICK_VIDEO_REPLACE:I = 0x2b

.field public static final REQUEST_CODE_PICK_VNOTE:I = 0x1b

.field public static final REQUEST_CODE_PICK_VTODO:I = 0x21

.field public static final REQUEST_CODE_RECORD_SOUND:I = 0xf

.field public static final REQUEST_CODE_RECORD_SOUND_REPLACE:I = 0x2e

.field public static final REQUEST_CODE_REPLACE_LOCATION:I = 0x28

.field public static final REQUEST_CODE_TAKE_PICTURE:I = 0xb

.field public static final REQUEST_CODE_TAKE_PICTURE_REPLACE:I = 0x2a

.field public static final REQUEST_CODE_TAKE_VIDEO:I = 0xd

.field public static final REQUEST_CODE_TAKE_VIDEO_REPLACE:I = 0x2c

.field public static final REQUEST_CODE_TRANS:I = 0x2f

.field public static final REQUEST_CODE_TRANSLATE:I = 0x4

.field public static final REQUEST_REPORT_TYPE_DELIVERY_REPORT:I = 0x1

.field public static final REQUEST_REPORT_TYPE_READ_REPORT:I = 0x2

.field public static final REQUEST_SETTINGS_RESERVE:I = 0x34

.field public static final REQUEST_SETTINGS_TRANSMIT:I = 0x39

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_FILE:Ljava/lang/String; = "file"

.field private static final SMEMO_ADDTEXT_ACTION:Ljava/lang/String; = "intent.smemo.pick"

.field public static final SMEMO_ATTACH_ACTION:Ljava/lang/String; = "android.intent.action.PENMEMO_ATTACH"

.field private static final SNOTE_ATTACH_ACTION:Ljava/lang/String; = "android.intent.action.SNOTE_PICK"

.field private static final TAG:Ljava/lang/String; = "Mms/HandleComposerAttachment"

.field protected static mNativeAccessReturnValue:I


# instance fields
.field private final VIDEO_RESIZE_DEFAULT_RETURE_VALUE:I

.field private final VIDEO_RESIZE_LIB_ERROR_VALUE:I

.field private final VIDEO_RESIZE_MAX_DURATION:I

.field private final VIDEO_RESIZE_OUTPUT_HEIGHT:I

.field private final VIDEO_RESIZE_OUTPUT_WIDTH:I

.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mHasSoundShotDialog:Landroid/app/AlertDialog;

.field mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationProgressDialog:Landroid/app/ProgressDialog;

.field private mMyAddress:Ljava/lang/String;

.field private mMyLocationHandler:Landroid/os/Handler;

.field private mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

.field private mOutFileSizeEstimated:I

.field private mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

.field private mVideoResizeCanceled:Z

.field private mVideoResizeDialog:Landroid/app/AlertDialog;

.field private mVideoResizeEditDialog:Landroid/app/AlertDialog;

.field private mVideoResizeProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea60

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_MAX_DURATION:I

    const/16 v0, 0xb0

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_OUTPUT_WIDTH:I

    const/16 v0, 0x90

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_OUTPUT_HEIGHT:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_DEFAULT_RETURE_VALUE:I

    iput v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_LIB_ERROR_VALUE:I

    iput-boolean v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeCanceled:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$49;

    invoke-direct {v0, p0}, Lcom/android/mms/util/HandleComposerAttachment$49;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationListener:Landroid/location/LocationListener;

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$50;

    invoke-direct {v0, p0}, Lcom/android/mms/util/HandleComposerAttachment$50;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyLocationHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/util/HandleComposerAttachment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeCanceled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/mms/util/HandleComposerAttachment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeCanceled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/util/HandleComposerAttachment;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/util/HandleComposerAttachment;->nativeAccessForShareviaObj(Lcom/samsung/app/share/via/external/ShareviaObj;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/util/HandleComposerAttachment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingProgressDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/HandleComposerAttachment;->videoResizingProgress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/mms/util/HandleComposerAttachment;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/util/HandleComposerAttachment;->getVideoFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/mms/util/HandleComposerAttachment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;ILandroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/util/HandleComposerAttachment;->addPickImage(Ljava/util/ArrayList;ILandroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/util/HandleComposerAttachment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/util/HandleComposerAttachment;->finishGetMyLocation(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyLocationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingDialog(Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingEditDialog(Landroid/net/Uri;JZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/samsung/app/share/via/external/NativeAccess;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    return-object v0
.end method

.method private addLocation([BLjava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 3

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/mms/location/Place;->createPlace([B)Lcom/samsung/mms/location/Place;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/android/mms/util/HandleComposerAttachment;->getLocationUrl(Landroid/content/Context;Lcom/samsung/mms/location/Place;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private addPickImage(Ljava/util/ArrayList;ILandroid/net/Uri;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;I",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$43;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment$43;-><init>(Lcom/android/mms/util/HandleComposerAttachment;ILjava/util/ArrayList;Landroid/net/Uri;Z)V

    const-string v1, "addAttachment"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private createShareviaObj(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/app/share/via/external/ShareviaObj;
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Lcom/samsung/app/share/via/external/ShareviaObj;

    invoke-direct {v1}, Lcom/samsung/app/share/via/external/ShareviaObj;-><init>()V

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaWidth(I)V

    const/16 v2, 0x90

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaHeight(I)V

    invoke-virtual {v1, p2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaInputFilename(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaOutputFilename(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaOutputFileResolution(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaStartTime(I)V

    invoke-virtual {v1, p3}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaEndTime(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViamaxDuration(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViamaxSize(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaVideoCodec(I)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaAudioCodec(I)V

    return-object v1
.end method

.method private finishGetMyLocation(Z)V
    .locals 3

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "finishGetMyLocation"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "finishGetMyLocation() Fragment is detached"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/util/HandleComposerAttachment;->stopLocationListener()V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0170

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getAvailableSlideCount(I)I
    .locals 5

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v4

    sub-int v0, v3, v4

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    if-eqz v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Mms/HandleComposerAttachment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms/HandleComposerAttachment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Mms/HandleComposerAttachment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows. so just return null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    :try_start_1
    invoke-static {p1}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    goto/16 :goto_0

    :cond_4
    if-eqz p1, :cond_5

    :try_start_2
    invoke-static {p1}, Lcom/android/mms/util/HandleComposerAttachment;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getLocationUrl(Landroid/content/Context;Lcom/samsung/mms/location/Place;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "vcard.vcf"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v4}, Lcom/samsung/mms/model/LocationVcardModel;->packlocationData(Lcom/samsung/mms/location/Place;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vcard.vcf"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    const-string v4, "LocationUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createVCardUri() - error writing out the vcardfile. Details: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_2
    throw v4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private getMyLocation()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c016f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationProgressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/util/HandleComposerAttachment;->startLocationListener()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/util/HandleComposerAttachment$48;

    invoke-direct {v1, p0}, Lcom/android/mms/util/HandleComposerAttachment$48;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getNextAvailableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "/sdcard/Videos"

    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v4, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%03d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x3e7

    if-eq v2, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x5f

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%03d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private getOutputFileDurationPossible(Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/app/share/via/external/NativeAccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/app/share/via/external/NativeAccess;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit16 v2, v0, 0x400

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    const/16 v3, 0xb0

    const/16 v4, 0x90

    const/4 v5, 0x5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/share/via/external/NativeAccess;->getInputParamerterAnalysis(Ljava/lang/String;IIII)I

    move-result v0

    return v0
.end method

.method private getVideoFileDurationTime(Ljava/lang/String;)I
    .locals 8

    const/4 v6, -0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v3

    :cond_3
    :goto_1
    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v1

    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_4
    :goto_6
    throw v6

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v6

    move-object v2, v3

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :catch_9
    move-exception v1

    move-object v2, v3

    goto :goto_3

    :catch_a
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method private getVideoFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v9

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    aget-object v0, v2, v9

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getVideoFileSize(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private multiAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 9

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move v2, p4

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c017c

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$45;

    invoke-direct {v5, p0}, Lcom/android/mms/util/HandleComposerAttachment$45;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    new-instance v6, Lcom/android/mms/util/HandleComposerAttachment$46;

    invoke-direct {v6, p0, p2}, Lcom/android/mms/util/HandleComposerAttachment$46;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/Intent;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$47;

    move-object v1, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/util/HandleComposerAttachment$47;-><init>(Lcom/android/mms/util/HandleComposerAttachment;ILjava/util/ArrayList;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/Intent;)V

    const-string v1, "addAttachment"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private nativeAccessForShareviaObj(Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 1

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$35;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/util/HandleComposerAttachment$35;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    invoke-virtual {v0}, Lcom/android/mms/util/HandleComposerAttachment$35;->start()V

    return-void
.end method

.method private resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZZ)I
    .locals 20

    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "onResizeResult()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 v3, -0x1

    const v4, 0x7f0c00bc

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object/from16 v2, p0

    move/from16 v7, p3

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    const/4 v8, -0x1

    :cond_0
    :goto_0
    return v8

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v19

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v18

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    :cond_2
    if-nez v18, :cond_7

    :try_start_0
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "messageUri is NULL : Unknown Parameter!!!"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v16

    const-string v2, "Mms/HandleComposerAttachment"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/MmsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    :cond_3
    :goto_1
    if-nez v8, :cond_4

    move/from16 v14, p3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, v14}, Lcom/android/mms/ui/ComposeMessageFragment;->onAttachmentChanged(Z)V

    :cond_4
    const v9, 0x7f0c00bc

    const/16 v11, 0xa

    move-object/from16 v7, p0

    move-object v10, v6

    move/from16 v12, p3

    move/from16 v13, p2

    invoke-virtual/range {v7 .. v13}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    :cond_5
    :goto_2
    sget-boolean v2, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v17

    if-nez p4, :cond_0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v3, 0x20

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->onProtocolChanged(ZI)V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    invoke-static/range {v18 .. v18}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v8, 0x0

    move/from16 v7, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v8

    const-string v2, "Mms:app"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Mms/HandleComposerAttachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResizeImageResultCallback: dataUri="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v16

    const-string v2, "Mms/HandleComposerAttachment"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    goto/16 :goto_2
.end method

.method private showVideoResizingDialog(Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 14

    invoke-direct {p0, p1}, Lcom/android/mms/util/HandleComposerAttachment;->getVideoFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c042c

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c042b

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c042e

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f0c0432

    new-instance v1, Lcom/android/mms/util/HandleComposerAttachment$39;

    move-object v2, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p6

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/mms/util/HandleComposerAttachment$39;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;Ljava/lang/String;IZZZLjava/lang/String;)V

    invoke-virtual {v11, v13, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$40;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$40;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showVideoResizingEditDialog(Landroid/net/Uri;JZ)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c042c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c042b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c042e

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0c042d

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$41;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment$41;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;JZ)V

    invoke-virtual {v6, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0c004e

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/util/HandleComposerAttachment$42;

    invoke-direct {v1, p0}, Lcom/android/mms/util/HandleComposerAttachment$42;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showVideoResizingProgressDialog()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, -0x1

    const v3, 0x7f0c004e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$36;

    invoke-direct {v4, p0}, Lcom/android/mms/util/HandleComposerAttachment$36;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0c042f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    iget v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$37;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$37;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iput-boolean v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeCanceled:Z

    return-void
.end method

.method private singleAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-string v0, "vcard"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$44;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/util/HandleComposerAttachment$44;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Handler;)V

    const-string v1, "addAttachment"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startLocationListener()V
    .locals 8

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x447a

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "startLocationListener"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "use location service by NETWORK_PROVIDER "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v7, :cond_1

    if-nez v6, :cond_1

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "Can not use location service!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "use location service by GPS_PROVIDER "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopLocationListener()V
    .locals 2

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "stopLocationListener"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method private videoResizingProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    :goto_0
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    sget v3, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    sget v3, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeCanceled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$38;

    invoke-direct {v4, p0}, Lcom/android/mms/util/HandleComposerAttachment$38;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/util/HandleComposerAttachment;->getVideoFileSize(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    div-int/lit16 v4, v2, 0x400

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resizing video size ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public HandleMultiAttachmentFromIntent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v23

    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v11

    :goto_0
    if-nez v24, :cond_1

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v17

    add-int v4, v14, v11

    move/from16 v0, v17

    if-le v4, v0, :cond_2

    sub-int v4, v17, v11

    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c0043

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v0, v14, :cond_5

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/Uri;

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    :cond_3
    const/16 v20, 0x0

    if-eqz v12, :cond_4

    invoke-static {v12}, Lcom/quramsoft/qdio/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;

    move-result-object v20

    :cond_4
    if-eqz v20, :cond_9

    const/4 v13, 0x1

    :cond_5
    if-eqz v13, :cond_a

    move v9, v14

    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0430

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c0431

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c00e6

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$33;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/util/HandleComposerAttachment$33;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v10, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    move-object/from16 v25, v0

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$34;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/util/HandleComposerAttachment$34;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_4
    const-string v4, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v4, "pref_key_signature_text"

    const-string v5, ""

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v4, "pref_key_enable_signature"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v4, "\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "android.intent.extra.SUBJECT"

    const-string v8, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "android.intent.extra.TEXT"

    const-string v8, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->joinContents(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v15, :cond_b

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshSignatureInEditor(Ljava/lang/String;)V

    :cond_7
    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c0042

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v7, v8

    const/4 v8, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto :goto_5
.end method

.method public HandleSingleAttachMentFromIntent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/SharedPreferences;)Z
    .locals 17

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    const-string v12, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v12, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v13}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0c017c

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v13, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v12, v13}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const-string v12, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v8, 0x0

    if-eqz v10, :cond_0

    const-string v12, "image/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/mms/util/HandleComposerAttachment;->getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/quramsoft/qdio/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;

    move-result-object v8

    :cond_0
    if-eqz v8, :cond_4

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0c0430

    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0c0431

    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0c00e6

    new-instance v13, Lcom/android/mms/util/HandleComposerAttachment$30;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/mms/util/HandleComposerAttachment$30;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v4, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    sget-object v13, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    new-instance v13, Lcom/android/mms/util/HandleComposerAttachment$31;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/mms/util/HandleComposerAttachment$31;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    :goto_0
    const-string v12, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    const-string v12, "pref_key_signature_text"

    const-string v13, ""

    move-object/from16 v0, p4

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "pref_key_enable_signature"

    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v12, "\n"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "android.intent.extra.SUBJECT"

    const-string v16, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "android.intent.extra.TEXT"

    const-string v16, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/mms/ui/MessageUtils;->joinContents(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v12

    if-eqz v12, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v12, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshSignatureInEditor(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 v12, 0x1

    return v12

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->show()V

    invoke-direct/range {p0 .. p3}, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public addAudio(Landroid/net/Uri;IZZZ)I
    .locals 8

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x3

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    const v2, 0x7f0c00bb

    const/16 v4, 0xe

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    return v1
.end method

.method public addImage(Landroid/net/Uri;IZZZ)I
    .locals 22

    const-string v5, "Mms:app"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Mms/HandleComposerAttachment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addImage: uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_3

    const-string v5, "content"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "content"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "file"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    const/4 v6, -0x1

    const v7, 0x7f0c00bc

    const/4 v8, 0x0

    const/16 v9, 0xa

    move-object/from16 v5, p0

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    const-string v5, "Mms/HandleComposerAttachment"

    const-string v6, "Cursor is null or invalid uri enter"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v19, -0x1

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return v19

    :cond_3
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x1

    move/from16 v7, p2

    move-object/from16 v9, p1

    move/from16 v10, p5

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v5 .. v12}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v19

    const/4 v5, -0x4

    move/from16 v0, v19

    if-eq v0, v5, :cond_5

    const/4 v5, -0x2

    move/from16 v0, v19

    if-eq v0, v5, :cond_5

    const/4 v5, -0x8

    move/from16 v0, v19

    if-ne v0, v5, :cond_a

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez p4, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/android/mms/util/HandleComposerAttachment$19;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/mms/util/HandleComposerAttachment$19;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v20

    :cond_7
    :try_start_1
    new-instance v16, Lcom/android/mms/ui/UriImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v18, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v14

    if-nez v14, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidthRestrictedMode()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeightRestrictedMode()I

    move-result v6

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v18

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p5

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/util/HandleComposerAttachment;->resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZZ)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5

    :cond_9
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v6

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    goto :goto_1

    :catch_0
    move-exception v15

    const/4 v6, -0x1

    const v7, 0x7f0c00bc

    const/16 v9, 0xa

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto/16 :goto_0

    :cond_a
    const v7, 0x7f0c00bc

    const/16 v9, 0xa

    move-object/from16 v5, p0

    move/from16 v6, v19

    move-object/from16 v8, p1

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v17

    if-nez v21, :cond_2

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->vibrateChangingMms()V

    goto/16 :goto_0
.end method

.method public addMedia(ILandroid/net/Uri;ZZZ)I
    .locals 11

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    const/4 v10, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-nez p5, :cond_0

    if-nez p4, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v9}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    :cond_1
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :cond_2
    return v10

    :pswitch_1
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addImage(Landroid/net/Uri;IZZZ)I

    move-result v10

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addVideo(Landroid/net/Uri;IZZZ)I

    move-result v10

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addAudio(Landroid/net/Uri;IZZZ)I

    move-result v10

    goto :goto_0

    :pswitch_4
    const/4 v6, 0x0

    const/16 v8, 0x14

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    move-result v10

    goto :goto_0

    :pswitch_5
    const/4 v6, 0x0

    const/16 v8, 0x1a

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    move-result v10

    goto :goto_0

    :pswitch_6
    const/4 v6, 0x1

    const/16 v8, 0x1b

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    move-result v10

    goto/16 :goto_0

    :pswitch_7
    const/4 v6, 0x1

    const/16 v8, 0x21

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    move-result v10

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)I
    .locals 7

    const/4 v6, -0x1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$25;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$25;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(ILandroid/net/Uri;ZZZ)I

    move-result v6

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "application/ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x3

    goto :goto_1

    :cond_5
    const-string v0, "text/x-vCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x6

    goto :goto_1

    :cond_6
    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x7

    goto :goto_1

    :cond_7
    const-string v0, "text/x-vNote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    goto :goto_1

    :cond_8
    const-string v0, "text/x-vtodo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0x9

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$26;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$26;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public addRawMedia(Landroid/net/Uri;ZZZI)I
    .locals 13

    const-string v1, "Mms:app"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mms/HandleComposerAttachment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRawMedia: append="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uri="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v12, -0x1

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->checkCRForRawAttachment()V

    :cond_1
    const/16 v1, 0x14

    move/from16 v0, p5

    if-eq v1, v0, :cond_2

    const/16 v1, 0x1a

    move/from16 v0, p5

    if-eq v1, v0, :cond_2

    const/16 v1, 0x1b

    move/from16 v0, p5

    if-eq v1, v0, :cond_2

    const/16 v1, 0x21

    move/from16 v0, p5

    if-ne v1, v0, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v7, 0x0

    move-object v5, p1

    move v6, p2

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I
    :try_end_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    const v6, 0x7f0c0125

    move-object v4, p0

    move-object v7, p1

    move/from16 v8, p5

    move/from16 v9, p4

    move v10, p2

    :try_start_1
    invoke-virtual/range {v4 .. v10}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    if-nez v5, :cond_3

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$23;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$23;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    return v5

    :catch_0
    move-exception v11

    move v5, v12

    :goto_2
    const/4 v5, -0x5

    const v6, 0x7f0c0125

    const/4 v9, 0x0

    move-object v4, p0

    move-object v7, p1

    move/from16 v8, p5

    move v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_1

    :catch_1
    move-exception v11

    goto :goto_2

    :cond_4
    move v5, v12

    goto :goto_0
.end method

.method public addText(Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v6

    if-lez v6, :cond_1

    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-lt v1, v4, :cond_2

    move v3, v4

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v6, v3, -0x1

    if-lez v6, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v6, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    :cond_1
    :goto_2
    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v0, p1, v5}, Lcom/android/mms/util/HandleComposerAttachment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    :goto_3
    const-string v5, "Mms/HandleComposerAttachment"

    const-string v6, "AddText..."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public addVideo(Landroid/net/Uri;IZZZ)I
    .locals 17

    const/4 v14, -0x1

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x2

    move/from16 v3, p2

    move-object/from16 v5, p1

    move/from16 v6, p5

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v14

    if-eqz p5, :cond_0

    if-nez v14, :cond_0

    add-int/lit8 v12, p2, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$20;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/android/mms/util/HandleComposerAttachment$20;-><init>(Lcom/android/mms/util/HandleComposerAttachment;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAutoVideoResize()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x2

    if-ne v14, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/util/HandleComposerAttachment;->getVideoFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/util/HandleComposerAttachment;->getOutputFileDurationPossible(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/util/HandleComposerAttachment;->getVideoFileDurationTime(Ljava/lang/String;)I

    move-result v10

    invoke-static {v15}, Lcom/android/mms/util/HandleComposerAttachment;->getNextAvailableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15, v11}, Lcom/android/mms/util/HandleComposerAttachment;->createShareviaObj(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/app/share/via/external/ShareviaObj;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    invoke-virtual {v1, v9}, Lcom/samsung/app/share/via/external/NativeAccess;->getOutputFileSize(Lcom/samsung/app/share/via/external/ShareviaObj;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    mul-int/lit16 v2, v2, 0x400

    add-int v13, v1, v2

    const-string v1, "Mms/HandleComposerAttachment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "durationPossible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " durationOriginalFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOutFileSizeEstimated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " objectTotalSize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_2

    const/16 v1, 0x5dc

    if-le v10, v1, :cond_2

    if-gt v10, v11, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    if-gt v13, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v1, Lcom/android/mms/util/HandleComposerAttachment$21;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/mms/util/HandleComposerAttachment$21;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    const-wide/16 v2, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return v14

    :cond_2
    if-nez p4, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v1

    add-int/lit16 v1, v1, 0x2800

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v1, Lcom/android/mms/util/HandleComposerAttachment$22;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p5

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/mms/util/HandleComposerAttachment$22;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;ZIZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    const-wide/16 v2, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const v3, 0x7f0c00bd

    const/16 v5, 0xc

    move-object/from16 v1, p0

    move v2, v14

    move-object/from16 v4, p1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_0

    :cond_4
    const v3, 0x7f0c00bd

    const/16 v5, 0xc

    move-object/from16 v1, p0

    move v2, v14

    move-object/from16 v4, p1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_0
.end method

.method public addnamecard()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "additional"

    const-string v2, "namecard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v2, 0x1e

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public checkEmailBeforeMakeToButton(Lcom/android/mms/data/ContactList;)V
    .locals 8

    new-instance v4, Lcom/android/mms/data/ContactList;

    invoke-direct {v4}, Lcom/android/mms/data/ContactList;-><init>()V

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRemoveEmailDialog()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const v7, 0x7f0c0435

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0436

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0c0180

    new-instance v7, Lcom/android/mms/util/HandleComposerAttachment$17;

    invoke-direct {v7, p0, v4}, Lcom/android/mms/util/HandleComposerAttachment$17;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Lcom/android/mms/data/ContactList;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0c017f

    new-instance v7, Lcom/android/mms/util/HandleComposerAttachment$18;

    invoke-direct {v7, p0, p1}, Lcom/android/mms/util/HandleComposerAttachment$18;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Lcom/android/mms/data/ContactList;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_2
    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    goto :goto_2
.end method

.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 15

    move-object/from16 v0, p1

    const-string v6, "content://com.android.contacts/contacts/as_multi_vcard/"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x37

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v10, "%3A"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v4, v8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRawAttachmentCountForContact()I

    move-result v3

    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c00ed

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-le v4, v3, :cond_1

    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v11, Lcom/android/mms/util/HandleComposerAttachment$32;

    invoke-direct {v11, p0, v9}, Lcom/android/mms/util/HandleComposerAttachment$32;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v10, v8, v2

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v3, -0x1

    if-ge v2, v10, :cond_0

    const-string v10, "%3A"

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

.method public handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
    .locals 11

    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v1, 0x78

    invoke-direct {v9, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "handleAddAttachmentError(),error="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",mediaTypeStringId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",reqCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",sendMultiple="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",append="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "Mms/HandleComposerAttachment"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/util/HandleComposerAttachment$24;

    move-object v2, p0

    move v3, p2

    move v4, p1

    move/from16 v5, p5

    move-object v6, p3

    move v7, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/mms/util/HandleComposerAttachment$24;-><init>(Lcom/android/mms/util/HandleComposerAttachment;IIZLandroid/net/Uri;IZ)V

    invoke-virtual {v10, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-le v1, v0, :cond_0

    move v2, v1

    move v1, v0

    move v0, v2

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v1, v0, p2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    goto :goto_0
.end method

.method public launchAppInfo(ILandroid/app/AlertDialog;)V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "attachAppinfo, Fragment already detached. just Finish"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/mms/ui/IconListAdapter;->commandToPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/android/mms/util/PackageInfo;->shouldGoDownload(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/android/mms/util/PackageInfo;->showDownloadDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public processingActivityResult(IILandroid/content/Intent;)V
    .locals 98

    const-string v5, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActivityResult: requestCode="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ", resultCode="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ", has data="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p3, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingForSubActivity:Z

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientFlag:Z

    const/16 v4, 0x2a

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x29

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2c

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2b

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2d

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2e

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x37

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x28

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    :cond_0
    const/4 v13, 0x0

    :cond_1
    const/16 v4, 0xb

    move/from16 v0, p1

    if-eq v0, v4, :cond_4

    const/16 v4, 0x36

    move/from16 v0, p1

    if-eq v0, v4, :cond_4

    if-nez p3, :cond_5

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, -0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_5

    const-string v4, "Mms/HandleComposerAttachment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActivityResult(),fail due to resultCode="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    packed-switch p1, :pswitch_data_0

    :cond_6
    :goto_2
    :pswitch_0
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    if-nez p3, :cond_7

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_MULTI_PICTURE"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v4, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0c017c

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const-string v4, "selectedItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v4, "selectedCount"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    move v9, v13

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v51, 0x0

    :goto_3
    move/from16 v0, v51

    if-ge v0, v7, :cond_8

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/quramsoft/qdio/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;

    move-result-object v73

    if-eqz v73, :cond_9

    const/16 v42, 0x1

    :cond_8
    if-eqz v42, :cond_a

    new-instance v26, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0430

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c0431

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c00e6

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/util/HandleComposerAttachment$1;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v26 .. v26}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/util/HandleComposerAttachment$2;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;ILandroid/net/Uri;Z)V

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v51, v51, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/mms/util/HandleComposerAttachment;->addPickImage(Ljava/util/ArrayList;ILandroid/net/Uri;Z)V

    goto/16 :goto_2

    :pswitch_2
    const-string v4, "message_avatar_temp.jpg"

    const-string v5, "/mnt/sdcard/message_avatar_temp.jpg"

    const-string v10, "/data/data/com.android.mms/message_avatar_temp.jpg"

    invoke-static {v4, v5, v10}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "file:///data/data/com.android.mms/message_avatar_temp.jpg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move v9, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c017c

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lcom/android/mms/util/HandleComposerAttachment$3;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_3
    if-nez p3, :cond_b

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_TAKE_PICTURE"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string v4, "uri-data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    if-nez v40, :cond_c

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "fileString is null so just return"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    invoke-static/range {v40 .. v40}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move v9, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c017c

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lcom/android/mms/util/HandleComposerAttachment$4;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_4
    if-nez p3, :cond_d

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_PICTURE"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    move v9, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c017c

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lcom/android/mms/util/HandleComposerAttachment$5;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_5
    if-nez p3, :cond_e

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_DRAWINGPAD"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    move v9, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c017c

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v50

    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    if-eqz v81, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    :cond_f
    if-nez v50, :cond_10

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lcom/android/mms/util/HandleComposerAttachment$6;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_10
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v5, v0, v1}, Lcom/android/mms/util/HandleComposerAttachment$7;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_6
    if-nez p3, :cond_11

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_TAKE_VIDEO"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v94

    move v9, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c017c

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v5, v0, v1, v9}, Lcom/android/mms/util/HandleComposerAttachment$8;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_7
    if-nez p3, :cond_12

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_SOUND"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    const-string v4, "FILE_URI"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v94

    check-cast v94, Landroid/net/Uri;

    move v9, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c017c

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v5, v0, v1, v9}, Lcom/android/mms/util/HandleComposerAttachment$9;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_8
    if-nez p3, :cond_13

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_RECORD_SOUND"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v94

    move v9, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c017c

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v5, v0, v1, v9}, Lcom/android/mms/util/HandleComposerAttachment$10;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_9
    if-nez p3, :cond_14

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ECM_EXIT_DIALOG"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    const-string v4, "exit_ecm_result"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v67

    if-eqz v67, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(Z)V

    goto/16 :goto_2

    :pswitch_a
    if-nez p3, :cond_15

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_VCARD"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_15
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v37

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v4, "android.intent.action.SEND"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c017c

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v94

    check-cast v94, Landroid/net/Uri;

    const-string v4, "vcard"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v94

    invoke-direct {v5, v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment$11;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_16
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/util/ArrayList;->size()I

    move-result v95

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move/from16 v0, v95

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRawAttachableCountWithToast(I)I

    move-result v45

    const/16 v43, 0x0

    :goto_4
    move/from16 v0, v43

    move/from16 v1, v45

    if-ge v0, v1, :cond_17

    move-object/from16 v0, v96

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Landroid/os/Parcelable;

    move-object/from16 v11, v94

    check-cast v11, Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x14

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    add-int/lit8 v43, v43, 0x1

    goto :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    :cond_18
    :goto_5
    sget-boolean v4, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    goto :goto_5

    :pswitch_b
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment$12;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/Intent;I)V

    const-string v10, "addAttachment_rawItem"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_c
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "REQUEST REQUEST_CODE_PICK_CONTACT"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1a

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_CONTACT"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaxRecipient()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v5, 0x5a

    if-ge v4, v5, :cond_1b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v5, 0x5a

    if-lt v4, v5, :cond_1c

    :cond_1b
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "result"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v83

    if-eqz v83, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c0184

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/mms/ui/ComposeMessageFragment;->restrictContactListener:Z

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-direct {v5, v0, v1}, Lcom/android/mms/util/HandleComposerAttachment$13;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;)V

    const-string v10, "addContact"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_1c
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "result"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v83

    const/4 v4, 0x1

    move-object/from16 v0, v83

    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->checkEmailBeforeMakeToButton(Lcom/android/mms/data/ContactList;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipientErrorFalg()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->setErrorFlagInRecipientEditor(Z)V

    goto/16 :goto_2

    :pswitch_d
    if-nez p3, :cond_1d

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_NAMECARD"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1d
    const-string v4, "namecard_result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_e
    if-nez p3, :cond_1e

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_CALENDAR"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1e
    const-string v4, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_f
    if-nez p3, :cond_1f

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_MEMO"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1f
    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_10
    if-nez p3, :cond_20

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_VNOTE"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_20
    const-string v4, "\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->joinContents(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    move v9, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c017c

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v50

    if-nez v50, :cond_21

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$14;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lcom/android/mms/util/HandleComposerAttachment$14;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_21
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$15;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v5, v0, v1}, Lcom/android/mms/util/HandleComposerAttachment$15;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_11
    if-nez p3, :cond_22

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_TASK"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_22
    const-string v4, "taskstext"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v91

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const-string v5, "email"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    :cond_23
    if-eqz v23, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v29

    if-eqz v29, :cond_6

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/data/Contact;->reload()V

    goto/16 :goto_2

    :pswitch_13
    if-nez p3, :cond_24

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_LOCATION"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_24
    const-string v4, "location"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0c0174

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :pswitch_14
    if-nez p3, :cond_25

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_LOCATION"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_25
    invoke-static {}, Lcom/android/mms/MmsConfig;->getImageResizeQualityFactorWhenAttach()I

    move-result v74

    const/16 v59, 0x0

    const/16 v60, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v56

    check-cast v56, Landroid/net/Uri;

    if-eqz v56, :cond_26

    invoke-virtual/range {v56 .. v56}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v60

    :cond_26
    const/4 v4, 0x1

    move-object/from16 v0, v60

    invoke-static {v0, v4}, Lcom/android/mms/ui/MessageUtils;->getBitmapFromFile(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v59

    if-nez v59, :cond_27

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult REQUEST_CODE_PICK_LOCATION mapImage is null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_27
    const/16 v66, 0x0

    new-instance v66, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v66 .. v66}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v59

    move/from16 v1, v74

    move-object/from16 v2, v66

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v68, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v68 .. v68}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    invoke-virtual/range {v66 .. v66}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    const-string v4, "image/jpg"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v97

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v70

    if-nez v63, :cond_29

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0c014a

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v35

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    :goto_6
    const-string v4, "location"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v4}, Landroid/sec/clipboard/ClipboardExManager;->setThawPaste()V

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0c0174

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v46

    if-nez v97, :cond_2a

    if-eqz v46, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->vibrateChangingMms()V

    goto/16 :goto_2

    :cond_29
    :try_start_1
    invoke-static/range {v63 .. v63}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    const/4 v10, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, v68

    invoke-virtual {v0, v1, v4, v5, v10}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v12

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(ILandroid/net/Uri;ZZZ)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSlideIndex:Ljava/lang/Integer;

    iget-object v5, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSlideIndex:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSlideIndex:Ljava/lang/Integer;

    goto/16 :goto_2

    :pswitch_15
    if-nez p3, :cond_2b

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_REPLACE_LOCATION"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2b
    const-string v4, "extra_selected_place"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v71

    const-string v4, "extra_map_url"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v4, "extra_image_path"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    if-eqz v92, :cond_2c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v92

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v44

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    if-nez v4, :cond_2d

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult mComposer.getWorkingMessage() is null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2c
    const/16 v44, 0x0

    goto :goto_7

    :cond_2d
    if-nez v44, :cond_2e

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult REQUEST_CODE_ATTACH_LOCATION imageUri is null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v97

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v85

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v84

    if-eqz v13, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-eqz v4, :cond_31

    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v14 .. v21}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->removeAllRawAttachment()Z

    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v4

    if-nez v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    :cond_31
    if-nez v71, :cond_32

    if-eqz v61, :cond_6

    :cond_32
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    move-object/from16 v2, v61

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/util/HandleComposerAttachment;->addLocation([BLjava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v54

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v16

    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**The Map image location is***:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v17, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v18, v44

    invoke-virtual/range {v14 .. v21}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v16

    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**The Map location  vcard location is***:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v17, 0xa

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v54

    invoke-virtual/range {v14 .. v21}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    move/from16 v0, v85

    move/from16 v1, v84

    invoke-virtual {v4, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    sget-boolean v4, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v46

    if-nez v97, :cond_6

    if-eqz v46, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->vibrateChangingMms()V

    goto/16 :goto_2

    :pswitch_16
    if-nez p3, :cond_34

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_SMEMO"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_34
    const-string v4, "textbody"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_17
    if-nez p3, :cond_35

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_SNOTE"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_35
    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_18
    if-nez p3, :cond_36

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_SCRAPBOOK"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_36
    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_19
    if-nez p3, :cond_37

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_TRANS"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_37
    const-string v4, "isSubject"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v49

    const-string v4, "transString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    const-string v4, "isSend"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v48

    if-eqz v49, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v4, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    if-eqz v48, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto/16 :goto_2

    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :pswitch_1a
    if-eqz p3, :cond_2

    const-string v4, "RESERVATION_TIME"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v75

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    move-wide/from16 v0, v75

    invoke-virtual {v4, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->setReservationTime(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getReservationTime()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/android/mms/data/WorkingMessage;->setReserveDeliveryTime(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getDeliveryTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v4, v4, v10

    if-lez v4, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    :cond_39
    const-wide/16 v4, 0x0

    cmp-long v4, v75, v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    goto/16 :goto_2

    :pswitch_1b
    if-nez p3, :cond_3a

    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_TRANSLATE"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v72

    const-string v4, "pref_key_signature_text"

    const-string v5, ""

    move-object/from16 v0, v72

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    const-string v4, "pref_key_enable_signature"

    const/4 v5, 0x0

    move-object/from16 v0, v72

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-static/range {v86 .. v86}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual/range {v86 .. v86}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3b

    const/16 v47, 0x1

    :goto_9
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_47

    const-string v4, "source_language"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    const-string v4, "source_text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v88

    const-string v4, "target_language"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v89

    const-string v4, "target_text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v90

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v88 .. v88}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v89

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v90 .. v90}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    const-string v4, "Mms/HandleComposerAttachment"

    move-object/from16 v0, v55

    invoke-static {v4, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v47, :cond_3c

    invoke-virtual/range {v90 .. v90}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v86 .. v86}, Ljava/lang/String;->length()I

    move-result v5

    add-int v77, v4, v5

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    if-eqz v4, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v43, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    move/from16 v0, v43

    if-ge v0, v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const-string v5, ""

    move/from16 v0, v43

    invoke-virtual {v4, v0, v5}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    add-int/lit8 v43, v43, 0x1

    goto :goto_b

    :cond_3b
    const/16 v47, 0x0

    goto/16 :goto_9

    :cond_3c
    invoke-virtual/range {v90 .. v90}, Ljava/lang/String;->length()I

    move-result v77

    goto :goto_a

    :cond_3d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    move/from16 v0, v77

    if-le v0, v4, :cond_43

    const/16 v43, 0x0

    :goto_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    div-int v4, v77, v4

    move/from16 v0, v43

    if-gt v0, v4, :cond_44

    if-eqz v47, :cond_3f

    if-nez v43, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v11

    invoke-virtual/range {v86 .. v86}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v11, v14

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, v90

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v86

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v43

    invoke-virtual {v4, v0, v5}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    invoke-virtual/range {v86 .. v86}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v90

    :cond_3e
    :goto_d
    add-int/lit8 v43, v43, 0x1

    goto :goto_c

    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v4

    if-eqz v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    move/from16 v0, v43

    if-lt v0, v4, :cond_41

    :cond_40
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v4

    move/from16 v0, v43

    if-ge v0, v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Lcom/android/mms/data/WorkingMessage;->addSlide(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    :cond_41
    invoke-virtual/range {v90 .. v90}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v5

    if-ge v4, v5, :cond_42

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move/from16 v0, v43

    move-object/from16 v1, v90

    invoke-virtual {v4, v0, v1}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    goto :goto_d

    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v10

    move-object/from16 v0, v90

    invoke-virtual {v0, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v43

    invoke-virtual {v4, v0, v5}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v90

    goto :goto_d

    :cond_43
    if-eqz v47, :cond_46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->isSignaturePresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v90

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v86

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    :cond_44
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    const/16 v10, 0x1e

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->setTranslateBtnMode(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    goto/16 :goto_2

    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v90

    invoke-virtual {v4, v5, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    goto :goto_e

    :cond_47
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "Translation is failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1c
    if-eqz p3, :cond_2

    const-string v4, "RESERVATION_TIME"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v57

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    move-wide/from16 v0, v57

    invoke-virtual {v4, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->setReservationTime(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getReservationTime()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/android/mms/data/WorkingMessage;->setReserveDeliveryTime(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getDeliveryTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v4, v4, v10

    if-lez v4, :cond_48

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    :cond_48
    const-wide/16 v4, 0x0

    cmp-long v4, v57, v4

    if-nez v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    :cond_49
    const-string v4, "DELIVERY_REPORT"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    const-string v4, "READ_REPORT"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/mms/data/WorkingMessage;->setMessageDeliveryReport(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/mms/data/WorkingMessage;->setMessageReadReport(Z)V

    if-eqz v24, :cond_4a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->SetDeliveryReadReportView(II)V

    :goto_f
    if-eqz v25, :cond_4b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x2

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->SetDeliveryReadReportView(II)V

    goto/16 :goto_2

    :cond_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x1

    const/16 v10, 0x8

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->SetDeliveryReadReportView(II)V

    goto :goto_f

    :cond_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x2

    const/16 v10, 0x8

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->SetDeliveryReadReportView(II)V

    goto/16 :goto_2

    :pswitch_1d
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v38

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v32, 0x0

    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    if-eqz v93, :cond_4f

    const-string v4, "image/"

    move-object/from16 v0, v93

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v31

    check-cast v31, Landroid/net/Uri;

    :cond_4c
    :goto_10
    if-eqz v93, :cond_4d

    const-string v4, "text/plain"

    move-object/from16 v0, v93

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_4d

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    :cond_4d
    if-nez v31, :cond_4e

    if-eqz v33, :cond_6

    :cond_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c017c

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v34

    move-object/from16 v27, v31

    move-object/from16 v28, v33

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$16;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v34

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/mms/util/HandleComposerAttachment$16;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Landroid/net/Uri;Landroid/app/ProgressDialog;)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_4f
    if-eqz v93, :cond_4c

    const-string v4, "video/"

    move-object/from16 v0, v93

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v33

    check-cast v33, Landroid/net/Uri;

    goto :goto_10

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_10
        :pswitch_0
        :pswitch_12
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_b
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_16
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1a
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1c
        :pswitch_1d
        :pswitch_18
    .end packed-switch
.end method

.method public setIntentForVideo(Landroid/content/Intent;Z)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v5

    int-to-long v0, v5

    if-eqz v4, :cond_1

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v5

    int-to-long v2, v5

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v5

    int-to-long v5, v5

    add-long v0, v5, v2

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsModeCaptureVideoMaxSize()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_3

    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "mms"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v5

    int-to-long v0, v5

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c002f

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public startActivityForAddMedia(IZ)V
    .locals 37

    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityForAddMedia,type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",replace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "startActivityforAddMedia fragment detached, just return"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v15, 0x0

    const/16 v30, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v19, 0x0

    :cond_1
    :goto_1
    if-nez v19, :cond_20

    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityForAddMedia, cannot start. reqCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_2

    const/16 v30, 0x37

    :goto_2
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    const-string v3, "output"

    new-instance v4, Ljava/io/File;

    const-string v5, "/mnt/sdcard/message_avatar_temp.jpg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "crop"

    const-string v4, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "scale"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "scaleUpIfNeeded"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "aspectX"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "aspectY"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "outputX"

    const/16 v4, 0x280

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "outputY"

    const/16 v4, 0x1e0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.acrodea.samsung_avatar_maker"

    const-string v4, "com.acrodea.samsung_avatar_maker.AvatarMaker_Select"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const/16 v30, 0x36

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_IMAGE:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.gallery3d"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.cooliris.media"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.android.gallery3d"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    const-string v15, "image/*"

    if-eqz p2, :cond_5

    const/16 v30, 0x29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_4
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageSupportMultiImageAttach()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/util/HandleComposerAttachment;->getAvailableSlideCount(I)I

    move-result v10

    if-nez v10, :cond_6

    const/4 v4, -0x6

    const v5, 0x7f0c00bc

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto/16 :goto_0

    :cond_6
    const/16 v30, 0x38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    const-string v3, "multi-pick"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "pick-max-item"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const/16 v30, 0xa

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_9
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_TAKEPICTURE:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_a

    const/16 v30, 0x2a

    :goto_5
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "return-uri"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_a
    const/16 v30, 0xb

    goto :goto_5

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_VIDEO:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.gallery3d"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.cooliris.media"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.android.gallery3d"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_b
    const-string v15, "video/*"

    if-eqz p2, :cond_d

    const/16 v30, 0x2b

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_7
    if-eqz v19, :cond_c

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment;->setIntentForVideo(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    :cond_d
    const/16 v30, 0xc

    goto :goto_6

    :cond_e
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.OPENABLE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_RECORDVIDEO:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_f

    const/16 v30, 0x2c

    :goto_8
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment;->setIntentForVideo(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    :cond_f
    const/16 v30, 0xd

    goto :goto_8

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_AUDIO:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.app.myfiles"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_10

    const/16 v30, 0x2d

    :goto_9
    new-instance v19, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.myfiles.PICK_DATA"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "FOLDERPATH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Sounds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "CONTENT_TYPE"

    const-string v4, "audio/*"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_10
    const/16 v30, 0xe

    goto :goto_9

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.app.voicenote"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->shouldGoDownload(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.app.voicerecorder"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.app.voicenote"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->showDownloadDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_RECORDAUDIO:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_15

    const/16 v30, 0x2e

    :goto_a
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.provider.MediaStore.RECORD_SOUND"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v33

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const/16 v36, 0x0

    if-eqz v35, :cond_12

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v36

    :cond_12
    invoke-static/range {v35 .. v35}, Lcom/android/mms/util/TelephonyUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v25

    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    mul-int/lit8 v36, v36, 0x3

    :cond_13
    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxContentSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v23

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", textBodySize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v33, :cond_18

    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v27, v0

    const-wide/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v31, v0

    :cond_14
    if-eqz p2, :cond_17

    const-wide/16 v3, 0x0

    cmp-long v3, v31, v3

    if-lez v3, :cond_17

    add-long v3, v27, v31

    cmp-long v3, v3, v23

    if-gez v3, :cond_16

    add-long v21, v27, v31

    :goto_b
    const-string v3, "android.provider.MediaStore.extra.MAX_BYTES"

    move-object/from16 v0, v19

    move-wide/from16 v1, v21

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "mime_type"

    const-string v4, "audio/amr"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_15
    const/16 v30, 0xf

    goto/16 :goto_a

    :cond_16
    move/from16 v0, v36

    int-to-long v3, v0

    sub-long v21, v23, v3

    goto :goto_b

    :cond_17
    move-wide/from16 v21, v27

    goto :goto_b

    :cond_18
    move/from16 v0, v36

    int-to-long v3, v0

    sub-long v21, v23, v3

    goto :goto_b

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_CONTACT:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.android.contacts"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRawAttachmentCountForContact()I

    move-result v18

    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/x-vcard"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "maxRecipientCount"

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v30, 0x14

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_CALENDAR:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v14, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "vnd.android.cursor.item/vnd.samsung.calendar.*"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "multiple_choice"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "choice_limit"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRawAttachmentCount()I

    move-result v4

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/mms/ui/IconWeightListAdapter;->updateWeight(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v4, 0x1a

    invoke-virtual {v3, v14, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v17

    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0120

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c0121

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c004d

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_MEMO:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.samsung.android.app.memo"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->shouldGoDownload(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.samsung.android.app.memo"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->showDownloadDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1a
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.app.memo"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "text/plain"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "PICKALL"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v30, 0x1b

    goto/16 :goto_1

    :pswitch_b
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/x-vtodo"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v30, 0x33

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_LOCATION:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/util/NetworkConnectionUtils;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showNetworkErrorDialog()V

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/mms/ui/IconWeightListAdapter;->updateWeight(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "Verizon"

    invoke-virtual {v12, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v26

    const-string v3, "location_msg_info"

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    move/from16 v29, p2

    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v13, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c032d

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c032c

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c004d

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$27;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v29

    invoke-direct {v4, v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment$27;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/SharedPreferences$Editor;Z)V

    invoke-virtual {v13, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->startLocationMapActivity(Z)V

    goto/16 :goto_0

    :cond_1d
    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "image_location"

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v4, 0x24

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_MYLOCATION:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/util/NetworkConnectionUtils;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showNetworkErrorDialog()V

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/mms/ui/IconWeightListAdapter;->updateWeight(Landroid/content/Context;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/util/HandleComposerAttachment;->getMyLocation()V

    goto/16 :goto_1

    :pswitch_e
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.PENMEMO_ATTACH"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "app_name"

    const-string v4, "com.android.mms"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v30, 0x33

    goto/16 :goto_1

    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/util/HandleComposerAttachment;->getAvailableSlideCount(I)I

    move-result v3

    if-gtz v3, :cond_1f

    const/4 v4, -0x6

    const v5, 0x7f0c00bc

    const/4 v6, 0x0

    const/16 v7, 0x35

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto/16 :goto_0

    :cond_1f
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.SNOTE_PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "SelectMode"

    const-string v4, "single"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ReturnType"

    const-string v4, "Imageonly"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v30, 0x35

    goto/16 :goto_1

    :pswitch_10
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "application/vnd.penmemo.drawingpad"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v30, 0x33

    goto/16 :goto_1

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mUsageFrequencyAccumulator:Lcom/android/mms/util/UsageFrequencyAccumulator;

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_SCRAPBOOK:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v19, Landroid/content/Intent;

    const-string v3, "intent.action.ACTION_GET_SCRAPBOOK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v30, 0x3a

    goto/16 :goto_1

    :cond_20
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportContextAwareness()Z

    move-result v3

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/mms/ui/IconWeightListAdapter;->updateWeight(Landroid/content/Context;I)V

    :cond_21
    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityForAddMedia. reqCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_10
        :pswitch_f
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public startActivityForAddText(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Mms/HandleComposerAttachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivityForAddText, type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "addtext, Fragment already detached. just Finish"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_3

    const-string v2, "Mms/HandleComposerAttachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivityForAddText, cannot start. reqCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "additional"

    const-string v3, "namecard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1e

    goto :goto_1

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "multiple_choice"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x1f

    goto :goto_1

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.app.memo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    goto :goto_1

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/tasks_string"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x22

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showQuickTextDialog()V

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showNetworkErrorDialog()V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image_location"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x23

    goto/16 :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showNetworkErrorDialog()V

    goto/16 :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/util/HandleComposerAttachment;->getMyLocation()V

    goto/16 :goto_1

    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.smemo.pick"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x25

    goto/16 :goto_1

    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SNOTE_GET_CONTENTS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "SelectMode"

    const-string v3, "single"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ReturnType"

    const-string v3, "Textonly"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x26

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/SipHandler;->setOnScreen(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean v6, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v2}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    :cond_5
    const-string v2, "Mms/HandleComposerAttachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivityForAddText. reqCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public startLocationMapActivity(Z)V
    .locals 6

    const/4 v5, 0x1

    move v2, p1

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    if-ne v3, v5, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c031d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c032a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c00e7

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$28;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/util/HandleComposerAttachment$28;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c00e8

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$29;

    invoke-direct {v4, p0}, Lcom/android/mms/util/HandleComposerAttachment$29;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "extra_startup_flag"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v4, 0x28

    invoke-virtual {v3, v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v4, 0x27

    invoke-virtual {v3, v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
