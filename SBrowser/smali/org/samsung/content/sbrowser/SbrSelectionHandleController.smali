.class public Lorg/samsung/content/sbrowser/SbrSelectionHandleController;
.super Ljava/lang/Object;
.source "SbrSelectionHandleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;
    }
.end annotation


# static fields
.field private static final DEFAULT_SELECT_AUTOSCROLL_VAL:I = 0x1e

.field protected static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0x1770

.field static final HANDLE_CHAR_LEFT:I = 0x1

.field static final HANDLE_CHAR_RIGHT:I = 0x2

.field static final HANDLE_NONE:I = 0x0

.field private static final SELECT_AUTOSCROLL_DOWN:I = 0x4

.field private static final SELECT_AUTOSCROLL_LEFT:I = 0x1

.field private static final SELECT_AUTOSCROLL_NONE:I = 0x0

.field private static final SELECT_AUTOSCROLL_RIGHT:I = 0x3

.field private static final SELECT_AUTOSCROLL_THRESOLD_H:I = 0x96

.field private static final SELECT_AUTOSCROLL_THRESOLD_V:I = 0xb4

.field private static final SELECT_AUTOSCROLL_UP:I = 0x2

.field private static final SHOW_SELECTION_ZOOMER_DELAY:I = 0x32

.field private static final SHOW_SELECTION_ZOOMER_LONG_PRESS:I = 0x1

.field private static final SHOW_TOOLTIP_AFTER_LONG_PRESS:I = 0x2

.field private static final SHOW_TOOLTIP_DELAY:I = 0x12c

.field public static final STATE_CHECK_REVERSED:I = 0x5

.field public static final STATE_CHECK_UPSIDEDOWN:I = 0xa

.field public static final STATE_FORCE_REVERSED:I = 0x4

.field public static final STATE_FORCE_UPSIDEDOWN:I = 0x8

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_RESET_MASK:I = 0x3

.field public static final STATE_REVERSED:I = 0x1

.field public static final STATE_UPSIDEDOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SelectionHandleConroller"


# instance fields
.field private final HORIZONTAL_TRANSPARENT_RATE:F

.field private currentScrollX:I

.field private currentScrollY:I

.field private mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

.field private mActionPopupShower:Ljava/lang/Runnable;

.field public mCurrentHandle:Lorg/chromium/content/browser/input/HandleView;

.field private mDeferredRunnableScheduled:Z

.field private mDir1:I

.field private mDir2:I

.field private mEndRect:Landroid/graphics/Rect;

.field private mEndX:I

.field private mEndY:I

.field public mFixedHandle:Lorg/chromium/content/browser/input/HandleView;

.field private mHandleCrossing:Z

.field private mIsEditable:Z

.field mLeftHandleId:I

.field private mLeftHandleState:I

.field private mParent:Landroid/view/View;

.field private mPrevEndX:I

.field private mPrevStartX:I

.field private final mPrivateEventHandler:Landroid/os/Handler;

.field mRightHandleId:I

.field private mRightHandleState:I

.field private mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

.field public mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

.field public mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

.field private mStartRect:Landroid/graphics/Rect;

.field private mStartX:I

.field private mStartY:I

.field private mTooltipEndX:I

.field private mTooltipEndY:I

.field private mTooltipStartX:I

.field private mTooltipStartY:I

.field private mWebsearchMode:Z

.field private maxScrollX:I

.field private maxScrollY:I

.field private pos:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/samsung/content/sbrowser/SelectionZoomer;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;Lorg/chromium/content/browser/input/SelectionHandleController;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->maxScrollX:I

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->maxScrollY:I

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollX:I

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollY:I

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mCurrentHandle:Lorg/chromium/content/browser/input/HandleView;

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mPrevStartX:I

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mPrevEndX:I

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mHandleCrossing:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mWebsearchMode:Z

    const v0, 0x3e0f5c29

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->HORIZONTAL_TRANSPARENT_RATE:F

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDeferredRunnableScheduled:Z

    new-instance v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;-><init>(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mPrivateEventHandler:Landroid/os/Handler;

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    iput-object p2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    iput-object p3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    iput-object p4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    return-void
.end method

.method static synthetic access$000(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/input/SelectionHandleController;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipEndY:I

    return v0
.end method

.method static synthetic access$1100(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    return-object v0
.end method

.method static synthetic access$600(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionPopupShower:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipStartX:I

    return v0
.end method

.method static synthetic access$800(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipStartY:I

    return v0
.end method

.method static synthetic access$900(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipEndX:I

    return v0
.end method

.method private computeMaxScrollX()I
    .locals 5

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v3, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollRange()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v3, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v2

    sub-int v3, v0, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private computeMaxScrollY()I
    .locals 5

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v3, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollRange()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v3, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v0

    sub-int v3, v1, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;
    .locals 11

    const v10, 0x3e0f5c29

    const/4 v9, 0x1

    const v8, 0x3f5c28f6

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-ne p2, v9, :cond_5

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v5, v5, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/input/HandleView;->getWidth()I

    move-result v3

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v5, v5, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/input/HandleView;->getHeight()I

    move-result v2

    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v5, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getContentWidthPix()F

    move-result v5

    float-to-int v1, v5

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v5, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getContentHeightPix()F

    move-result v5

    float-to-int v0, v5

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    if-ne v9, p2, :cond_6

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartX:I

    int-to-float v6, v3

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int v6, v5, v6

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v5, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getNativeScrollXForTest()I

    move-result v5

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    sub-int v6, v5, v2

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v5, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getNativeScrollYForTest()I

    move-result v5

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->y:I

    :goto_1
    if-eqz p3, :cond_2

    if-ne v9, p2, :cond_8

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    and-int/lit8 v5, v5, -0x4

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    const-string v5, "R.drawable.tw_text_select_handle_left_top"

    invoke-static {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleId:I

    iget v5, v4, Landroid/graphics/Point;->x:I

    if-gez v5, :cond_1

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    :cond_1
    iget v5, v4, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_2

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    add-int/2addr v5, v2

    if-gt v5, v0, :cond_7

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    :cond_2
    :goto_2
    if-ne v9, p2, :cond_e

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    and-int/lit8 v5, v5, 0x5

    if-eqz v5, :cond_c

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    and-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mHandleCrossing:Z

    if-eqz v5, :cond_b

    :cond_3
    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartX:I

    int-to-float v6, v3

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_4

    const-string v5, "R.drawable.tw_text_select_handle_right"

    invoke-static {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleId:I

    :cond_4
    :goto_3
    return-object v4

    :cond_5
    const/4 v5, 0x2

    if-ne p2, v5, :cond_0

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v5, v5, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/input/HandleView;->getWidth()I

    move-result v3

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v5, v5, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/input/HandleView;->getHeight()I

    move-result v2

    goto/16 :goto_0

    :cond_6
    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndX:I

    int-to-float v6, v3

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int v6, v5, v6

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v5, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getNativeScrollXForTest()I

    move-result v5

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->x:I

    iget v6, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndY:I

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v5, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getNativeScrollYForTest()I

    move-result v5

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :cond_7
    const-string v5, "SelectionHandleController"

    const-string v6, "WebViewClassic is too short. Cannot turn LEFT handle upside-down"

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    and-int/lit8 v5, v5, -0x4

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    const-string v5, "R.drawable.tw_text_select_handle_right"

    invoke-static {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleId:I

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    int-to-float v6, v3

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    int-to-float v6, v1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    :cond_9
    iget v5, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v2

    if-le v5, v0, :cond_2

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndY:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    if-ltz v5, :cond_a

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    goto/16 :goto_2

    :cond_a
    const-string v5, "SelectionHandleController"

    const-string v6, "WebViewClassic is too short. Cannot turn RIGHT handle upside-down"

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartX:I

    int-to-float v6, v3

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->x:I

    if-eqz p3, :cond_4

    const-string v5, "R.drawable.tw_text_select_handle_right_top"

    invoke-static {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleId:I

    goto/16 :goto_3

    :cond_c
    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    and-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_d

    iget-boolean v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mHandleCrossing:Z

    if-eqz v5, :cond_4

    :cond_d
    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_4

    const-string v5, "R.drawable.tw_text_select_handle_left"

    invoke-static {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleId:I

    goto/16 :goto_3

    :cond_e
    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    and-int/lit8 v5, v5, 0x5

    if-eqz v5, :cond_11

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    and-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_f

    iget-boolean v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mHandleCrossing:Z

    if-eqz v5, :cond_10

    :cond_f
    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndX:I

    int-to-float v6, v3

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndY:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_4

    const-string v5, "R.drawable.tw_text_select_handle_left_top"

    invoke-static {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleId:I

    goto/16 :goto_3

    :cond_10
    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndX:I

    int-to-float v6, v3

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->x:I

    if-eqz p3, :cond_4

    const-string v5, "R.drawable.tw_text_select_handle_left"

    invoke-static {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleId:I

    goto/16 :goto_3

    :cond_11
    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    and-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_12

    iget-boolean v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mHandleCrossing:Z

    if-eqz v5, :cond_4

    :cond_12
    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndY:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_4

    const-string v5, "R.drawable.tw_text_select_handle_right_top"

    invoke-static {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleId:I

    goto/16 :goto_3
.end method

.method private getMovementDelta(I)I
    .locals 5

    const/16 v2, 0x1e

    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollX:I

    if-ge v3, v2, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollX:I

    goto :goto_0

    :pswitch_1
    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollY:I

    if-ge v3, v2, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollY:I

    goto :goto_0

    :pswitch_2
    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->maxScrollX:I

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollX:I

    sub-int v0, v3, v4

    if-ge v0, v2, :cond_0

    goto :goto_0

    :pswitch_3
    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->maxScrollY:I

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollY:I

    sub-int v1, v3, v4

    if-ge v1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMovementDirection(IIII)I
    .locals 5

    const/4 v2, 0x0

    sub-int v3, p1, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v3, p2, p4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->computeMaxScrollX()I

    move-result v3

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->maxScrollX:I

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->computeMaxScrollY()I

    move-result v3

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->maxScrollY:I

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v3, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getNativeScrollXForTest()I

    move-result v3

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollX:I

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v3, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getNativeScrollYForTest()I

    move-result v3

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollY:I

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->maxScrollX:I

    if-lez v3, :cond_0

    if-ge p1, p3, :cond_2

    if-lt v0, v1, :cond_2

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollX:I

    if-lez v3, :cond_2

    const/4 v2, 0x1

    :cond_0
    :goto_0
    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->maxScrollY:I

    if-lez v3, :cond_1

    if-ge p2, p4, :cond_3

    if-le v1, v0, :cond_3

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollY:I

    if-lez v3, :cond_3

    const/4 v2, 0x2

    :cond_1
    :goto_1
    return v2

    :cond_2
    if-le p1, p3, :cond_0

    if-lt v0, v1, :cond_0

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->maxScrollX:I

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollX:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    if-le p2, p4, :cond_1

    if-le v1, v0, :cond_1

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->maxScrollY:I

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollY:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_1

    const/4 v2, 0x4

    goto :goto_1
.end method

.method private getParent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public beginHandleFadeIn()V
    .locals 1

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->ensureSelectionHandlesDoNotOverlapKikin()V

    :cond_0
    return-void
.end method

.method public getEmbeddedHeight(Landroid/content/Context;)F
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public getEndY()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndY:I

    return v0
.end method

.method public getHandleCrossing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mHandleCrossing:Z

    return v0
.end method

.method getHandleExtendPoint(Lorg/chromium/content/browser/input/HandleView;II)Landroid/graphics/Point;
    .locals 15

    iget-object v11, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int v9, v11, v12

    iget-object v11, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int v8, v11, v12

    iget-object v11, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v11, v11, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v11}, Lorg/chromium/content/browser/input/HandleView;->getHeight()I

    move-result v7

    iget-object v11, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v11, v11, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v6, 0x1

    :goto_0
    const/4 v11, 0x1

    if-ne v11, v6, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    iget v11, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartX:I

    iget v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    sub-int/2addr v12, v8

    iget v13, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartX:I

    add-int/2addr v13, v9

    iget v14, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    invoke-direct {v2, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    if-nez v2, :cond_3

    const/4 v10, 0x0

    :cond_0
    :goto_2
    return-object v10

    :cond_1
    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    iget v11, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndX:I

    iget v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndY:I

    sub-int/2addr v12, v8

    iget v13, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndX:I

    add-int/2addr v13, v9

    iget v14, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndY:I

    invoke-direct {v2, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_3
    new-instance v10, Landroid/graphics/Point;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v10, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    iget v11, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    and-int/lit8 v11, v11, 0xa

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_3
    iget v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    and-int/lit8 v12, v12, 0xa

    if-nez v12, :cond_5

    const/4 v12, 0x1

    :goto_4
    xor-int v4, v11, v12

    iget-boolean v11, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mHandleCrossing:Z

    if-eqz v11, :cond_6

    if-nez v4, :cond_6

    const/4 v5, 0x1

    :goto_5
    const/4 v11, 0x1

    if-ne v11, v6, :cond_a

    iget v11, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    and-int/lit8 v11, v11, 0xa

    if-nez v11, :cond_8

    if-nez v5, :cond_8

    iget v11, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v11, p3

    if-le v3, v7, :cond_7

    add-int v11, p3, v7

    iput v11, v10, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    if-lez v3, :cond_0

    if-gt v3, v7, :cond_0

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v11, v11, -0x2

    iput v11, v10, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_8
    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p3, v11

    if-le v3, v7, :cond_9

    sub-int v11, p3, v7

    iput v11, v10, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_9
    if-lez v3, :cond_0

    if-gt v3, v7, :cond_0

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v11, v11, -0x2

    iput v11, v10, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_a
    const/4 v11, 0x2

    if-ne v11, v6, :cond_0

    iget v11, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    and-int/lit8 v11, v11, 0xa

    if-nez v11, :cond_c

    if-nez v5, :cond_c

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p3, v11

    if-le v3, v7, :cond_b

    sub-int v11, p3, v7

    iput v11, v10, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    :cond_b
    if-lez v3, :cond_0

    if-gt v3, v7, :cond_0

    sub-int v11, p3, v3

    add-int/lit8 v11, v11, -0x2

    iput v11, v10, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    :cond_c
    iget v11, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v11, p3

    if-le v3, v7, :cond_d

    add-int v11, p3, v7

    iput v11, v10, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    :cond_d
    if-lez v3, :cond_0

    if-gt v3, v7, :cond_0

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v11, v11, -0x2

    iput v11, v10, Landroid/graphics/Point;->y:I

    goto/16 :goto_2
.end method

.method public getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->getParent()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getParent()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectionEndRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionEndX()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipEndX:I

    return v0
.end method

.method public getSelectionEndY()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipEndY:I

    return v0
.end method

.method public getSelectionStartRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionStartX()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipStartX:I

    return v0
.end method

.method public getSelectionStartY()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipStartY:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    return v0
.end method

.method public getWebsearchMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mWebsearchMode:Z

    return v0
.end method

.method public handleTextSelectionAutoScroll(Lorg/chromium/content/browser/input/HandleView;IIII)Z
    .locals 22

    new-instance v15, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v18

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p0 .. p3}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getHandleExtendPoint(Lorg/chromium/content/browser/input/HandleView;II)Landroid/graphics/Point;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/HandleView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/HandleView;->getWidth()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndX:I

    move/from16 v19, v0

    add-int v18, v18, v19

    div-int/lit8 v16, v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndY:I

    move/from16 v19, v0

    add-int v18, v18, v19

    div-int/lit8 v17, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getMovementDirection(IIII)I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getMovementDelta(I)I

    move-result v13

    packed-switch v10, :pswitch_data_0

    const/4 v14, 0x0

    :cond_0
    :goto_0
    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Lorg/chromium/content/browser/ContentView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Lorg/chromium/content/browser/ContentView;->scrollBy(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollX:I

    move/from16 v18, v0

    add-int v18, v18, v11

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollY:I

    move/from16 v18, v0

    add-int v18, v18, v12

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollY:I

    :cond_1
    return v14

    :pswitch_0
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v9

    sub-int v18, v18, v19

    const/16 v19, 0x96

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    sub-int/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/SelectionHandleController;->getFixedHandleX()I

    move-result v7

    sub-int/2addr v7, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/chromium/content/browser/input/SelectionHandleController;->setFixedHandleX(I)V

    const/4 v14, 0x1

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    sub-int v18, v18, v8

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4334

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getEmbeddedHeight(Landroid/content/Context;)F

    move-result v20

    add-float v19, v19, v20

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/SelectionHandleController;->getFixedHandleY()I

    move-result v7

    sub-int/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/chromium/content/browser/input/SelectionHandleController;->setFixedHandleY(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/samsung/content/sbrowser/SelectionZoomer;->show(II)V

    goto/16 :goto_0

    :pswitch_2
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    add-int v19, v19, v9

    sub-int v18, v18, v19

    const/16 v19, 0x96

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    add-int/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/SelectionHandleController;->getFixedHandleX()I

    move-result v7

    sub-int/2addr v7, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/chromium/content/browser/input/SelectionHandleController;->setFixedHandleX(I)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :pswitch_3
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    add-int v19, v19, v8

    sub-int v18, v18, v19

    const/16 v19, 0xb4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/SelectionHandleController;->getFixedHandleY()I

    move-result v7

    sub-int/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/chromium/content/browser/input/SelectionHandleController;->setFixedHandleY(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/samsung/content/sbrowser/SelectionZoomer;->show(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hide()V
    .locals 3

    const/4 v2, 0x7

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->onSelectionDismissed()V

    :cond_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->getParent()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->getParent()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    iget-object v1, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateSelectionEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->getParent()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    iget-object v1, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateSelectionEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->getParent()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    iget-object v1, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateSelectionEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-string v1, "SelectionHandleConroller"

    const-string v2, "onSelectionBoundsChangedEx reset SHOW_TEXT_SELECTION_HANDLES"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public hideSelectionActionPopupWindow()V
    .locals 2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDeferredRunnableScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDeferredRunnableScheduled:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->hide()V

    :cond_1
    return-void
.end method

.method public hideSelectionActionPopupWindowAfterDelay()V
    .locals 4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$1;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$1;-><init>(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionPopupShower:Ljava/lang/Runnable;

    :goto_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionPopupShower:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDeferredRunnableScheduled:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public hideTemporarily()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/HandleView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/HandleView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->hideSelectionActionPopupWindow()V

    :cond_2
    return-void
.end method

.method public initTextSelectionAutoScroll()V
    .locals 1

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->computeMaxScrollX()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->maxScrollX:I

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->computeMaxScrollY()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->maxScrollY:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getNativeScrollXForTest()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollX:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getNativeScrollYForTest()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->currentScrollY:I

    return-void
.end method

.method public isEditable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mIsEditable:Z

    return v0
.end method

.method public isHiddenTemporarily()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTextSelected()Z
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveEndHandleBy(II)V
    .locals 3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->getPositionX()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/HandleView;->getPositionY()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/HandleView;->moveTo(II)V

    return-void
.end method

.method moveStartHandleBy(II)V
    .locals 3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->getPositionX()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/HandleView;->getPositionY()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/HandleView;->moveTo(II)V

    return-void
.end method

.method public onSelectionChanged(IIIIII)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-boolean v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mAllowAutomaticShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p6}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->showHandlesAt(IIIIII)V

    :cond_0
    return-void
.end method

.method public onSelectionChangedWithMagnifier(IIIIIIZZZ)V
    .locals 3

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-boolean v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mAllowAutomaticShowing:Z

    if-eqz v2, :cond_2

    iput-boolean p7, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mIsEditable:Z

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v2, p3, p6}, Lorg/chromium/content/browser/input/SelectionHandleController;->createHandlesIfNeeded(II)V

    add-int v2, p1, p4

    div-int/lit8 v0, v2, 0x2

    add-int v2, p2, p5

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    iget-boolean v2, v2, Lorg/samsung/content/sbrowser/SelectionZoomer;->mbShow:Z

    if-nez v2, :cond_0

    if-nez p7, :cond_0

    if-nez p9, :cond_0

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v2, v0, v1}, Lorg/samsung/content/sbrowser/SelectionZoomer;->show(II)V

    :cond_0
    if-nez p8, :cond_1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    :cond_1
    invoke-virtual/range {p0 .. p6}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->showHandlesAt(IIIIII)V

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v2, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->updateHandleScreenPositions()V

    :cond_2
    return-void
.end method

.method public setCurrentHandle(Lorg/chromium/content/browser/input/HandleView;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mCurrentHandle:Lorg/chromium/content/browser/input/HandleView;

    return-void
.end method

.method public setHandleCrossing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mHandleCrossing:Z

    return-void
.end method

.method public setSelectionPositionParameters(IIIIIIZ)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartX:I

    iput p2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    iput p3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDir1:I

    iput p4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndX:I

    iput p5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndY:I

    iput p6, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDir2:I

    iput-boolean p7, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mIsEditable:Z

    return-void
.end method

.method public setSelectionPositionParameters(Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V
    .locals 2

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartRect:Landroid/graphics/Rect;

    iput p2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDir1:I

    iput-object p3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndRect:Landroid/graphics/Rect;

    iput p4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDir2:I

    iput-boolean p5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mIsEditable:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->getFromDipToPix(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipStartX:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->getFromDipToPix(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipStartY:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->getFromDipToPix(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipEndX:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->getFromDipToPix(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipEndY:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartX:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndX:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndY:I

    return-void
.end method

.method public setWebsearchMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mWebsearchMode:Z

    return-void
.end method

.method public show()V
    .locals 7

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->user_tapped_pressed:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndRect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "SelectionHandleConroller"

    const-string v1, "One or both of the Selection Rects is null"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDir1:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDir2:I

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->createHandlesIfNeeded(II)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->updateHandlesInfo()V

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartX:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDir1:I

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndX:I

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndY:I

    iget v6, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDir2:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->showHandlesAt(IIIIII)V

    goto :goto_0
.end method

.method public showHandlesAt(IIIIII)V
    .locals 5

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v2, p3, p6}, Lorg/chromium/content/browser/input/SelectionHandleController;->createHandlesIfNeeded(II)V

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/HandleView;->getPositionY()I

    move-result v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/HandleView;->getPositionY()I

    move-result v0

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mCurrentHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mPrevStartX:I

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mCurrentHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mPrevEndX:I

    if-eq p4, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->toggleHandleCrossing()V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->updateHandlesInfo()V

    :cond_2
    iput p1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mPrevStartX:I

    iput p4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mPrevEndX:I

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/input/SelectionHandleController;->setStartHandlePosition(FF)V

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    int-to-float v3, p4

    int-to-float v4, p5

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/input/SelectionHandleController;->setEndHandlePosition(FF)V

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/HandleView;->getPositionY()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/HandleView;->getPositionY()I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->isTextSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->showHandlesIfNeeded()V

    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->showHandlesIfNeeded()V

    goto :goto_0
.end method

.method public showSelectionActionPopupWindow(I)V
    .locals 4

    const/4 v2, 0x2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    if-nez v0, :cond_0

    new-instance v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;-><init>(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;Landroid/view/View;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDeferredRunnableScheduled:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mPrivateEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDeferredRunnableScheduled:Z

    :cond_3
    return-void
.end method

.method public showSelectionZoomerIfRequired(ZZ)V
    .locals 6

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-boolean v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mAllowAutomaticShowing:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v2, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isContextMenuIsShown()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDir1:I

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mDir2:I

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/input/SelectionHandleController;->createHandlesIfNeeded(II)V

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartX:I

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndX:I

    add-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndY:I

    add-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    iget-boolean v2, v2, Lorg/samsung/content/sbrowser/SelectionZoomer;->mbShow:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mIsEditable:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mPrivateEventHandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public swapHandles()V
    .locals 3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v0, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    iput-object v2, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iput-object v0, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    return-void
.end method

.method public toggleHandleCrossing()V
    .locals 1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->swapHandles()V

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mHandleCrossing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mHandleCrossing:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public undoHideTemporarily()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v1, :cond_4

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectedTextVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectAllEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->getPositionX()I

    move-result v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/HandleView;->getPositionY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1, v3}, Lorg/chromium/content/browser/input/HandleView;->setVisibility(I)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->getSbrHandleView()Lorg/samsung/content/sbrowser/SbrHandleView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrHandleView;->startFadein()V

    :cond_1
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->isTextSelected()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectedTextVisible()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectAllEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v1, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->isScrollChanged()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v1

    iget-object v1, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v1

    iget-object v1, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->showSelectionActionPopupWindow(I)V

    :cond_3
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectedTextVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->getPositionX()I

    move-result v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/HandleView;->getPositionY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1, v3}, Lorg/chromium/content/browser/input/HandleView;->setVisibility(I)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->getSbrHandleView()Lorg/samsung/content/sbrowser/SbrHandleView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrHandleView;->startFadein()V

    :cond_4
    return-void
.end method

.method public updateHandlePositions()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartX:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndX:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndY:I

    return-void
.end method

.method public updateHandlesInfo()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/input/HandleView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x5

    if-eqz v21, :cond_7

    const/16 v16, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0xa

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mHandleCrossing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    :cond_0
    const/16 v17, 0x0

    :goto_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/ContentViewCore;->getCurrentTopControlOffset()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0xa

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartY:I

    move/from16 v21, v0

    add-int v22, v17, v18

    sub-int v21, v21, v22

    if-gez v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x5

    if-nez v21, :cond_9

    const-string v21, "R.drawable.tw_text_select_handle_left"

    invoke-static/range {v21 .. v21}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleId:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/input/HandleView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/input/HandleView;->getSbrHandleView()Lorg/samsung/content/sbrowser/SbrHandleView;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleState:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v13, v2, v3}, Lorg/samsung/content/sbrowser/SbrHandleView;->updateHandler(ILandroid/graphics/drawable/Drawable;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/input/HandleView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x5

    if-eqz v21, :cond_a

    move v7, v6

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0xa

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mHandleCrossing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    :cond_2
    int-to-float v0, v5

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->getFromDipToPix(F)F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->getFromDipToPix(F)F

    move-result v21

    sub-float v21, v23, v21

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v8, v0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v10

    const/4 v12, 0x0

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    const/4 v9, 0x0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v11

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v12, v21, v5

    invoke-virtual {v10}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isBottomBarVisible(Landroid/content/Context;)Z

    move-result v9

    :cond_3
    if-eqz v9, :cond_4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getBottomBarHeight(Landroid/content/Context;)F

    move-result v21

    sub-float v21, v22, v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0xa

    if-nez v21, :cond_5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v12, v0, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    int-to-float v0, v5

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->getFromDipToPix(F)F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mEndRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->getFromDipToPix(F)F

    move-result v21

    sub-float v21, v23, v21

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x5

    if-nez v21, :cond_c

    const-string v21, "R.drawable.tw_text_select_handle_right_top"

    invoke-static/range {v21 .. v21}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleId:I

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/input/HandleView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/input/HandleView;->getSbrHandleView()Lorg/samsung/content/sbrowser/SbrHandleView;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleState:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4, v7, v8}, Lorg/samsung/content/sbrowser/SbrHandleView;->updateHandler(ILandroid/graphics/drawable/Drawable;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mAllowAutomaticShowing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/ContentViewCore;->updateHandleScreenPositions()V

    :cond_6
    return-void

    :cond_7
    move/from16 v16, v15

    goto/16 :goto_0

    :cond_8
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->getFromDipToPix(F)F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v21 .. v21}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->getFromDipToPix(F)F

    move-result v21

    sub-float v21, v23, v21

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_1

    :cond_9
    const-string v21, "R.drawable.tw_text_select_handle_right"

    invoke-static/range {v21 .. v21}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleId:I

    goto/16 :goto_2

    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_c
    const-string v21, "R.drawable.tw_text_select_handle_left_top"

    invoke-static/range {v21 .. v21}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleId:I

    goto/16 :goto_5
.end method
