.class public Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;
.super Ljava/lang/Object;
.source "SmartFaceListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
    }
.end annotation


# static fields
.field private static final DETECT_IN_PROGRESS:I = 0x0

.field private static final GUIDE_DIRECTION_CLOSE:I = 0x8

.field private static final GUIDE_DIRECTION_DOWN:I = 0x0

.field private static final GUIDE_DIRECTION_LEFT:I = 0x2

.field private static final GUIDE_DIRECTION_LEFT_DOWN:I = 0x1

.field private static final GUIDE_DIRECTION_LEFT_UP:I = 0x3

.field private static final GUIDE_DIRECTION_OK:I = 0x9

.field private static final GUIDE_DIRECTION_RIGHT:I = 0x6

.field private static final GUIDE_DIRECTION_RIGHT_DOWN:I = 0x7

.field private static final GUIDE_DIRECTION_RIGHT_UP:I = 0x5

.field private static final GUIDE_DIRECTION_UP:I = 0x4

.field private static final LONG_DURATION:I = 0x5

.field private static final LOW_DURATION:I = 0x2

.field private static final MID_DURATION:I = 0x4

.field private static final NO_DETECTION:I = 0x2

.field private static final SHAKING:I = 0x3

.field private static final SMART_SCROLL_ANI:I = 0x1f4

.field private static final SMART_SCROLL_DOWN:I = 0x2

.field private static final SMART_SCROLL_GUIDE:I = 0x3

.field private static final SMART_SCROLL_GUIDE_CLEAR:I = 0x4

.field private static final SMART_SCROLL_INIT:I = 0x5

.field private static final SMART_SCROLL_LEFT:I = 0x3

.field private static final SMART_SCROLL_MOVE:I = 0x1

.field private static final SMART_SCROLL_MOVE_STOP:I = 0x2

.field private static final SMART_SCROLL_NONE:I = 0x0

.field private static final SMART_SCROLL_RESUME:I = 0x6

.field private static final SMART_SCROLL_RIGHT:I = 0x4

.field private static final SMART_SCROLL_SPEED_FAST:I = 0x32

.field private static final SMART_SCROLL_START:I = 0x7

.field private static final SMART_SCROLL_UP:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final TRACKING:I = 0x1


# instance fields
.field private mCheckDoSmartScroll:Z

.field private mCheckEventCount:I

.field private mCheckFirstShaking:Z

.field private mCheckSendResetEvent:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentScrollX:I

.field private mCurrentScrollY:I

.field private mDoScrollMove:Z

.field private mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

.field private mGuideAniCount:I

.field private mGuideDirectionStatus:I

.field private final mPrivateEventHandler:Landroid/os/Handler;

.field private mProgressStatus:I

.field private mRemainBlockScroll:I

.field private mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

.field private mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

.field private mSmartRecognitionStartTime:I

.field private mSmartScrollBlockAmountX:F

.field private mSmartScrollBlockAmountY:F

.field private mSmartScrollBlockSpeedFastX:I

.field private mSmartScrollBlockSpeedFastY:I

.field private mSmartScrollBlockSpeedNormalX:I

.field private mSmartScrollBlockSpeedNormalY:I

.field private mSmartScrollDirection:I

.field private mSmartScrollGazeTimeX:F

.field private mSmartScrollGazeTimeY:F

.field private mSmartScrollMode:Z

.field private mSmartScrollOn:Z

.field private mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

.field private mSmartScrollSpeed:I

.field private mSmartScrollSpeedFastX:I

.field private mSmartScrollSpeedFastY:I

.field private mSmartScrollSpeedNormalX:I

.field private mSmartScrollSpeedNormalY:I

.field private mSmartScrollTimeBetweenBlocksX:I

.field private mSmartScrollTimeBetweenBlocksY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SmartFaceListener"

    sput-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0xe

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    iput-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iput-boolean v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollMode:Z

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedNormalX:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedFastX:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedNormalY:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedFastY:I

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockAmountX:F

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockAmountY:F

    const/16 v0, 0x10

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollTimeBetweenBlocksX:I

    const/16 v0, 0x10

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollTimeBetweenBlocksY:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedNormalX:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedFastX:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedNormalY:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedFastY:I

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollGazeTimeX:F

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollGazeTimeY:F

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollDirection:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeed:I

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartRecognitionStartTime:I

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckEventCount:I

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideDirectionStatus:I

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mProgressStatus:I

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideAniCount:I

    iput-boolean v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckFirstShaking:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollOn:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckDoSmartScroll:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckSendResetEvent:Z

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCurrentScrollX:I

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCurrentScrollY:I

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mRemainBlockScroll:I

    iput-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mDoScrollMove:Z

    new-instance v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;-><init>(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iput-object p2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mContext:Landroid/content/Context;

    new-instance v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    return-object v0
.end method

.method static synthetic access$200(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->checkSmartScrollStatus(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;I)I
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckEventCount:I

    return p1
.end method

.method static synthetic access$400(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->checkSmartScrollDirection(II)V

    return-void
.end method

.method static synthetic access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    return-object v0
.end method

.method static synthetic access$602(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;)Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    return-object p1
.end method

.method static synthetic access$700(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->doSmartScroll()V

    return-void
.end method

.method static synthetic access$800(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mProgressStatus:I

    return v0
.end method

.method static synthetic access$900(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideAniCount:I

    return v0
.end method

.method static synthetic access$902(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;I)I
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideAniCount:I

    return p1
.end method

.method static synthetic access$908(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)I
    .locals 2

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideAniCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideAniCount:I

    return v0
.end method

.method private checkSmartScrollDirection(II)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-boolean v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSmartScrollDirection:deltaX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deltaY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_5

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollMode:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedFastY:I

    invoke-direct {p0, v3, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedFastY:I

    invoke-direct {p0, v3, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedNormalY:I

    invoke-direct {p0, v3, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedNormalY:I

    invoke-direct {p0, v3, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollMode:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedNormalY:I

    invoke-direct {p0, v5, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedNormalY:I

    invoke-direct {p0, v5, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollMode:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedFastY:I

    invoke-direct {p0, v5, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedFastY:I

    invoke-direct {p0, v5, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_a

    packed-switch p1, :pswitch_data_1

    :pswitch_5
    goto :goto_0

    :pswitch_6
    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollMode:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedFastX:I

    invoke-direct {p0, v6, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedFastX:I

    invoke-direct {p0, v6, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :pswitch_7
    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollMode:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedNormalX:I

    invoke-direct {p0, v6, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :cond_7
    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedNormalX:I

    invoke-direct {p0, v6, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :pswitch_8
    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollMode:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedNormalX:I

    invoke-direct {p0, v7, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :cond_8
    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedNormalX:I

    invoke-direct {p0, v7, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :pswitch_9
    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollMode:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedFastX:I

    invoke-direct {p0, v7, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :cond_9
    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedFastX:I

    invoke-direct {p0, v7, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->handleSmartScrolling(II)V

    goto/16 :goto_0

    :cond_a
    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mDoScrollMove:Z

    iput v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollDirection:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->releaseDVFS()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setEnableVSync(Z)V

    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckSendResetEvent:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private checkSmartScrollStatus(II)Z
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSmartScrollDirection processStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " guideDirction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkVisualFeedbackEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    if-ne p1, v0, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_9

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mProgressStatus:I

    if-ne v2, p1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckFirstShaking:Z

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollDirection:I

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setEnableVSync(Z)V

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mDoScrollMove:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckSendResetEvent:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->releaseDVFS()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    invoke-virtual {v0, p1, p2}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->setStatus(II)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    :cond_8
    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mProgressStatus:I

    iput p2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideDirectionStatus:I

    move v0, v1

    goto :goto_0

    :cond_9
    if-nez p1, :cond_10

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mProgressStatus:I

    if-ne v2, p1, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckFirstShaking:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckSendResetEvent:Z

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setEnableVSync(Z)V

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mDoScrollMove:Z

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->releaseDVFS()V

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_c
    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideDirectionStatus:I

    if-eq v2, p2, :cond_f

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    const/16 v2, 0x9

    if-eq p2, v2, :cond_f

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    if-nez v2, :cond_e

    new-instance v2, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;-><init>(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    :cond_e
    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    invoke-virtual {v2, p1, p2}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->setStatus(II)V

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideAniCount:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_f
    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mProgressStatus:I

    iput p2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideDirectionStatus:I

    move v0, v1

    goto/16 :goto_0

    :cond_10
    if-ne p1, v5, :cond_15

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mProgressStatus:I

    if-ne v2, p1, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    iget-boolean v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckFirstShaking:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    if-nez v2, :cond_12

    new-instance v2, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;-><init>(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    :cond_12
    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    invoke-virtual {v2, p1, p2}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->setStatus(II)V

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->show()V

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckFirstShaking:Z

    :cond_13
    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setEnableVSync(Z)V

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->releaseDVFS()V

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_14
    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mDoScrollMove:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckSendResetEvent:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mProgressStatus:I

    iput p2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideDirectionStatus:I

    move v0, v1

    goto/16 :goto_0

    :cond_15
    if-ne p1, v0, :cond_19

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckFirstShaking:Z

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mProgressStatus:I

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_16
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_17
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    if-nez v1, :cond_18

    new-instance v1, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;-><init>(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    :cond_18
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    invoke-virtual {v1, p1, p2}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->setStatus(II)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->show()V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mProgressStatus:I

    iput p2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideDirectionStatus:I

    goto/16 :goto_0

    :cond_19
    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mProgressStatus:I

    iput p2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideDirectionStatus:I

    move v0, v1

    goto/16 :goto_0
.end method

.method private declared-synchronized doSmartScroll()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeed:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    iget v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartRecognitionStartTime:I

    sub-int v2, v4, v5

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollDirection:I

    sget-boolean v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSmartScrollMove smartScrollDuration:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSmartScrollMove mSmartScrollSpeed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq v0, v7, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    :cond_1
    iget v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollGazeTimeY:F

    float-to-int v4, v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    if-eq v0, v8, :cond_4

    if-ne v0, v9, :cond_5

    :cond_4
    :try_start_1
    iget v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollGazeTimeX:F

    float-to-int v4, v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_5
    :try_start_2
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->isEdgeScrolling(I)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-boolean v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v4, :cond_7

    sget-object v4, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    const-string v5, "isEdgeScrolling entered"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    mul-int/lit8 v1, v3, -0x1

    sget-boolean v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v4, :cond_8

    sget-object v4, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSmartScrollMove:checkDirection:SMART_SCROLL_UP:offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mRemainBlockScroll:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mRemainBlockScroll:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-object v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBegin(FF)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(II)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isDisableSmartScroll()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->pauseSmartScroll()V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_c
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->hide()V

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    goto/16 :goto_0

    :pswitch_1
    move v1, v3

    sget-boolean v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v4, :cond_d

    sget-object v4, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSmartScrollMove:checkDirection:SMART_SCROLL_DOWN:offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mRemainBlockScroll:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mRemainBlockScroll:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-object v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v6

    iget-object v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v7}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBegin(FF)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(II)V

    goto/16 :goto_0

    :pswitch_2
    mul-int/lit8 v1, v3, -0x1

    sget-boolean v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v4, :cond_e

    sget-object v4, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSmartScrollMove:checkDirection:SMART_SCROLL_LEFT:offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mRemainBlockScroll:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mRemainBlockScroll:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-object v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBegin(FF)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(II)V

    goto/16 :goto_0

    :pswitch_3
    move v1, v3

    sget-boolean v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v4, :cond_f

    sget-object v4, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSmartScrollMove:checkDirection:SMART_SCROLL_RIGHT:offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mRemainBlockScroll:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mRemainBlockScroll:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-object v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBegin(FF)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleSmartScrolling(II)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollDirection:I

    if-ne v0, p1, :cond_4

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeed:I

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_1
    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollDirection:I

    iput p2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeed:I

    sget-boolean v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSmartScrolling mSbrContentViewCore.getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSmartScrolling mSmartScrollBlockAmountY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockAmountY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockAmountY:F

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mRemainBlockScroll:I

    sget-boolean v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSmartScrolling:mRemainBlockScroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mRemainBlockScroll:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setInitVSync()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setEnableVSync(Z)V

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mDoScrollMove:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->acquireDVFS()V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartRecognitionStartTime:I

    goto/16 :goto_1
.end method

.method private init()V
    .locals 2

    const/16 v1, 0x32

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->getSpeed()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->getSpeed()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedNormalX:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->getSpeed()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedFastX:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->getSpeed()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedNormalY:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->getSpeed()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedFastY:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkAccelerationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedFastX:I

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedFastY:I

    :cond_0
    invoke-static {}, Lcom/sec/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    new-instance v1, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;

    invoke-direct {v1, p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;-><init>(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/smartface/SmartFaceManager;->setListener(Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    :cond_1
    return-void
.end method

.method private isEdgeScrolling(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEdgeScrolling direction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEdgeScrolling getScrollXY().x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getScrollXY()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getScrollXY().y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getScrollXY()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEdgeScrolling getWidth():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEdgeScrolling getContentSize().x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getContentSize().y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p1, v0, :cond_4

    iget-boolean v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckSendResetEvent:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getScrollXY()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_3

    sget-boolean v1, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    const-string v2, "isEdgeScrolling SMART_SCROLL_UP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    const-string v2, "smart-scroll-page-status"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckSendResetEvent:Z

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    iget-boolean v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckSendResetEvent:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getScrollXY()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ne v2, v3, :cond_7

    sget-boolean v1, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    const-string v2, "isEdgeScrolling SMART_SCROLL_DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    const-string v2, "smart-scroll-page-status"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckSendResetEvent:Z

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method private setSmartScrollSettings()V
    .locals 9

    const/4 v0, 0x0

    new-instance v5, Ljava/io/File;

    const-string v7, "/data/UmoveSettings.txt"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollMode:Z

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedNormalX:I

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedFastX:I

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedNormalY:I

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeedFastY:I

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockAmountX:F

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockAmountY:F

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollTimeBetweenBlocksX:I

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollTimeBetweenBlocksY:I

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedNormalX:I

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedFastX:I

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedNormalY:I

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollBlockSpeedFastY:I

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollGazeTimeX:F

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollGazeTimeY:F

    const/4 v0, 0x1

    sget-object v7, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    const-string v8, "success!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v7, 0x0

    :try_start_3
    iput-boolean v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollMode:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    move-object v1, v2

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    sget-object v7, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    const-string v8, "couldn\'t exception"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v7

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v7

    :catch_3
    move-exception v8

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v3

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public delayResumeSmartScroll()V
    .locals 4

    const/4 v3, 0x6

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public doSmartScrollStop()V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollDirection:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollTimeBetweenBlocksY:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollTimeBetweenBlocksX:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getCheckDoBlockSmartScroll()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckDoSmartScroll:Z

    return v0
.end method

.method public getCurrentScrollX()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCurrentScrollX:I

    return v0
.end method

.method public getCurrentScrollY()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCurrentScrollY:I

    return v0
.end method

.method public getRemainBlockScroll()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mRemainBlockScroll:I

    return v0
.end method

.method public isEnableFaceView()Z
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkSmartScrollEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseSmartScroll()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->isEnableFaceView()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseSmartScroll this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mFaceManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollOn:Z

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mDoScrollMove:Z

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckSendResetEvent:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setEnableVSync(Z)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    :cond_5
    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollDirection:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0}, Lcom/sec/android/smartface/SmartFaceManager;->pause()V

    :cond_6
    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    const-string v1, "end called pauseSmartScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public resumeSmartScroll()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->isEnableFaceView()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeSmartScroll this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mFaceManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollOn:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0}, Lcom/sec/android/smartface/SmartFaceManager;->resume()V

    :cond_1
    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    const-string v1, "end called resumeSmartScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public sendStartSmartScroll()V
    .locals 4

    const/4 v3, 0x7

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkVisualFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setCheckDoBlockSmartScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckDoSmartScroll:Z

    return-void
.end method

.method public setCurrentScrollX(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCurrentScrollX:I

    return-void
.end method

.method public setCurrentScrollY(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCurrentScrollY:I

    return-void
.end method

.method public setRemainBlockScroll()V
    .locals 2

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mRemainBlockScroll:I

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollSpeed:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mRemainBlockScroll:I

    return-void
.end method

.method public setStartSmartScroll()V
    .locals 3

    sget-boolean v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStartSmartScroll,mDoScrollMove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mDoScrollMove:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mDoScrollMove:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isDisableSmartScroll()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public startSmartScroll()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->isEnableFaceView()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSmartScroll this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mFaceManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->init()V

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollOn:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/smartface/SmartFaceManager;->start(I)Z

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    const-string v1, "called end startSmartScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public stopSmartScroll()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->isEnableFaceView()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterSmartScroll this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mFaceManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setEnableVSync(Z)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->releaseDVFS()V

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    :cond_3
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->TAG:Ljava/lang/String;

    const-string v1, "called end stopSmartScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    :cond_a
    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartScrollOn:Z

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckFirstShaking:Z

    :cond_b
    return-void
.end method
