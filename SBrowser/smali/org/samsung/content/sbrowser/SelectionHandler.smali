.class public Lorg/samsung/content/sbrowser/SelectionHandler;
.super Ljava/lang/Object;
.source "SelectionHandler.java"


# static fields
.field private static final HOVERSCROLL_DELAY:I = 0xa

.field private static final SELECT_CLOSET_WORD:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private final mPrivateEventHandler:Landroid/os/Handler;

.field private mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SelectionScroller"

    sput-object v0, Lorg/samsung/content/sbrowser/SelectionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Lorg/samsung/content/sbrowser/SelectionZoomer;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/samsung/content/sbrowser/SelectionHandler$1;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/SelectionHandler$1;-><init>(Lorg/samsung/content/sbrowser/SelectionHandler;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mPrivateEventHandler:Landroid/os/Handler;

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iput-object p2, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SelectionHandler;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/samsung/content/sbrowser/SelectionHandler;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/SelectionHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public checkLongpressSelection(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollOffset()I

    move-result v6

    add-int v2, v4, v6

    iget-object v6, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v6

    add-int v3, v5, v6

    const/4 v1, 0x0

    iget-object v6, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v6

    check-cast v6, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v6

    check-cast v6, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;

    iget-boolean v1, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isAnchor:Z

    :cond_0
    iget-object v6, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v6

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isLongPressSelection()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    iget-object v6, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v6, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mPrivateEventHandler:Landroid/os/Handler;

    iget-object v8, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0xa

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v6, v7

    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public clearSelectClosestWordMessageQueue()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v4, v5

    :goto_0
    return v4

    :pswitch_0
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v6, v7}, Lorg/samsung/content/sbrowser/SelectionZoomer;->move(II)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/input/SelectionHandleController;->hide()V

    :cond_0
    :goto_1
    move v4, v5

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->selectionChangingDueToLongPressElsewhere()V

    :cond_1
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportWidthPix()F

    move-result v4

    float-to-int v2, v4

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportHeightPix()F

    move-result v4

    float-to-int v1, v4

    const/4 v4, 0x2

    new-array v3, v4, [I

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v4

    check-cast v4, Lorg/chromium/content/browser/ContentView;

    check-cast v4, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4, v3}, Lorg/chromium/content/browser/ContentView;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v6, v1

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v6, v2

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aget v6, v3, v7

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget v5, v3, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SelectionZoomer;->move(II)V

    :goto_2
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/input/SelectionHandleController;->hide()V

    invoke-virtual {p0, p1}, Lorg/samsung/content/sbrowser/SelectionHandler;->checkLongpressSelection(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v4

    if-ne v7, v4, :cond_0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    :cond_4
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->showSelectionHandlesAfterTouchUp()V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setSelectionFromLongPress(Z)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
