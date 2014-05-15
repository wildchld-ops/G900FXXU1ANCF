.class public Lorg/samsung/content/sbrowser/SbrContentView;
.super Lorg/chromium/content/browser/ContentView;
.source "SbrContentView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field isAnimationRunning:Ljava/lang/Boolean;

.field isShowing:Z

.field listener:Landroid/animation/Animator$AnimatorListener;

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

.field mIsDragSameInput:Z

.field mIsPageLoading:Z

.field private mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/samsung/content/sbrowser/SbrContentView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrContentView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentView;-><init>(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mIsDragSameInput:Z

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentView;->isAnimationRunning:Ljava/lang/Boolean;

    new-instance v0, Lorg/samsung/content/sbrowser/SbrContentView$1;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/SbrContentView$1;-><init>(Lorg/samsung/content/sbrowser/SbrContentView;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentView;->listener:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentView;->isShowing:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mIsPageLoading:Z

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private setExtractionResultToSmartClipDataElement(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Ljava/lang/String;)Z
    .locals 32

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v29, 0x0

    const v30, 0xffff

    aput v30, v22, v29

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v7, v0, [I

    const/16 v29, 0x0

    const v30, 0xfffe

    aput v30, v7, v29

    new-instance v23, Ljava/lang/String;

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([III)V

    new-instance v8, Ljava/lang/String;

    const/16 v29, 0x0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v8, v7, v0, v1}, Ljava/lang/String;-><init>([III)V

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getScreenRectOfView()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v12, p1

    check-cast v12, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    new-instance v29, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v30, "url"

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getUrl()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getTitle()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_0

    new-instance v29, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v30, "title"

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getTitle()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    :cond_0
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "appto://com.sec.android.app.sbrowser/url?"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getUrl()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v29, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v30, "app_deep_link"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v14, v0, :cond_a

    aget-object v29, v21, v14

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v0, v10

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_9

    aget-object v29, v21, v14

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    const/16 v29, 0x1

    :goto_1
    return v29

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/chromium/content/browser/ContentViewCore;->getCurrentTopControlOffset()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getBottomBarHeight(Landroid/content/Context;)F

    move-result v29

    move/from16 v0, v29

    float-to-int v5, v0

    if-nez v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderActivity;

    move/from16 v29, v0

    if-nez v29, :cond_2

    const/4 v5, 0x0

    :cond_2
    const/16 v29, 0x0

    aget-object v29, v10, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v29

    mul-float v29, v29, v19

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v27, v29, v30

    const/16 v29, 0x1

    aget-object v29, v10, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v29

    mul-float v29, v29, v19

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v28, v29, v30

    const/16 v29, 0x2

    aget-object v29, v10, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v29

    mul-float v26, v29, v19

    const/16 v29, 0x3

    aget-object v29, v10, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v29

    mul-float v13, v29, v19

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpg-float v29, v27, v29

    if-gez v29, :cond_3

    const/16 v29, 0x0

    aget-object v29, v10, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v29

    mul-float v29, v29, v19

    add-float v26, v26, v29

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v27, v0

    :cond_3
    add-float v29, v27, v26

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getWidth()I

    move-result v30

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getWidth()I

    move-result v29

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v26, v29, v27

    :cond_4
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v29, v29, v25

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpg-float v29, v28, v29

    if-gez v29, :cond_5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v29, v29, v25

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v29, v29, v28

    sub-float v13, v13, v29

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v29, v29, v25

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v28, v0

    :cond_5
    add-float v29, v28, v13

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getHeight()I

    move-result v30

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    add-int v30, v30, v31

    sub-int v30, v30, v5

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getHeight()I

    move-result v29

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    add-int v29, v29, v30

    sub-int v29, v29, v5

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v13, v29, v28

    :cond_6
    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    float-to-int v15, v13

    const/4 v9, 0x0

    array-length v0, v10

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_7

    const/16 v29, 0x4

    aget-object v9, v10, v29

    :cond_7
    invoke-virtual {v12}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->newInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    move-result-object v6

    new-instance v29, Landroid/graphics/Rect;

    add-int v30, v17, v16

    add-int v31, v18, v15

    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->setMetaAreaRect(Landroid/graphics/Rect;)V

    if-eqz v9, :cond_8

    new-instance v29, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v30, "plain_text"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    :cond_8
    invoke-virtual {v12, v6}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_a
    const/16 v29, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public HideUrlBarCmdReq(Lorg/samsung/content/sbrowser/HideUrlBarCmd;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->HideUrlBarCmdReq(Lorg/samsung/content/sbrowser/HideUrlBarCmd;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lorg/chromium/content/browser/ContentView;->destroy()V

    return-void
.end method

.method public extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 11

    const/4 v6, 0x2

    const/4 v5, 0x0

    sget-object v7, Lorg/samsung/content/sbrowser/SbrContentView;->TAG:Ljava/lang/String;

    const-string v8, "extractSmartClipData() called"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartClipFlag()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/chromium/content/browser/ContentView;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    new-instance v4, Landroid/graphics/Rect;

    invoke-interface {p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getScreenPointOfView()Landroid/graphics/Point;

    move-result-object v3

    iget v7, v3, Landroid/graphics/Point;->x:I

    neg-int v7, v7

    iget v8, v3, Landroid/graphics/Point;->y:I

    neg-int v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v7, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSelectionStartX()I

    move-result v7

    iget-object v8, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v8}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSelectionStartY()I

    move-result v8

    iget-object v9, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSelectionEndX()I

    move-result v9

    iget-object v10, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v10}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSelectionEndY()I

    move-result v10

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v7

    float-to-int v2, v7

    neg-int v7, v2

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getExtractionMode()I

    move-result v5

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getTextSelectedString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p1, v5}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->setMetaAreaRect(Landroid/graphics/Rect;)V

    new-instance v5, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v6, "url"

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    new-instance v5, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v6, "text_selection"

    iget-object v7, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getLastSelectedText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v6, "title"

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    :cond_1
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v5

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v5, v7, v8, v9, v10}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->extractSmartClipData(IIII)V

    move v5, v6

    goto/16 :goto_0
.end method

.method protected getScreenPointOfView()Landroid/graphics/Point;
    .locals 3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v2, 0x2

    new-array v0, v2, [I

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method protected getScreenRectOfView()Landroid/graphics/Rect;
    .locals 4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getScreenPointOfView()Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method public goBack()V
    .locals 1

    invoke-super {p0}, Lorg/chromium/content/browser/ContentView;->goBack()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentView;->suppressInterceptionForThisNavigation(Ljava/lang/String;)V

    return-void
.end method

.method public goForward()V
    .locals 1

    invoke-super {p0}, Lorg/chromium/content/browser/ContentView;->goForward()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentView;->suppressInterceptionForThisNavigation(Ljava/lang/String;)V

    return-void
.end method

.method public hideToolBar(I)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mContext:Landroid/content/Context;

    instance-of v4, v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMainToolBarView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getBottomBarUi()Landroid/view/View;

    move-result-object v0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    neg-int v5, v2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentView;->isShowing:Z

    goto :goto_0
.end method

.method public isContainsInputField(Landroid/view/DragEvent;)Z
    .locals 7

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v1, v3

    :cond_0
    iget-object v3, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getEditFieldContentBounds()Landroid/graphics/Rect;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/chromium/content/browser/ContentView;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    invoke-virtual {p1}, Lorg/chromium/content/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentView;->suppressInterceptionForThisNavigation(Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lorg/chromium/content/browser/ContentView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 14

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v12

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v13

    invoke-virtual {v13}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v13

    invoke-virtual {v13}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v11

    invoke-virtual {v11}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v11

    invoke-virtual {v11, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->delegateDragEventToUrlBarView(Landroid/view/DragEvent;)V

    :cond_0
    :goto_0
    return v10

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getMultiInstanceDragAndDropEnabled()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v10, v11

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "sbr_tab_drag_n_drop"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-ne v10, v12, :cond_3

    move v10, v11

    goto :goto_0

    :cond_3
    iput-boolean v10, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mIsDragSameInput:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v11, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mIsDragSameInput:Z

    if-eqz v11, :cond_4

    invoke-virtual {p0, p1}, Lorg/samsung/content/sbrowser/SbrContentView;->isContainsInputField(Landroid/view/DragEvent;)Z

    move-result v11

    iput-boolean v11, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mIsDragSameInput:Z

    :cond_4
    iget-boolean v11, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mIsDragSameInput:Z

    if-nez v11, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v11

    float-to-int v8, v11

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v11

    float-to-int v9, v11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v11

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v12

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v12

    invoke-virtual {v12}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v12

    sub-float/2addr v11, v12

    float-to-int v9, v11

    :cond_5
    iget-object v11, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v11}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v9, v12}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->HandleSelectionDrop(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v11, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v11}, Lorg/chromium/content/browser/ContentViewCore;->setNativeFocussed()V

    goto :goto_0

    :pswitch_4
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v12, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mIsDragSameInput:Z

    if-eqz v12, :cond_6

    invoke-virtual {p0, p1}, Lorg/samsung/content/sbrowser/SbrContentView;->isContainsInputField(Landroid/view/DragEvent;)Z

    move-result v12

    if-eqz v12, :cond_6

    iput-boolean v11, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mIsDragSameInput:Z

    goto :goto_1

    :cond_6
    iput-boolean v11, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mIsDragSameInput:Z

    invoke-virtual {v1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_7

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_7
    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v11

    float-to-int v3, v11

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v11

    float-to-int v4, v11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v11

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v12

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v12

    invoke-virtual {v12}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v12

    sub-float/2addr v11, v12

    float-to-int v4, v11

    :cond_8
    iget-object v11, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v11}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v11

    invoke-virtual {v11, v3, v4, v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->HandleSelectionDrop(IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v10, v11

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/16 v8, 0x2bc

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getIsAutoHideEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v2, v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v3, v4, v5

    cmpg-float v4, v2, v6

    if-gez v4, :cond_2

    neg-float v2, v2

    :cond_2
    cmpg-float v4, v3, v6

    if-gez v4, :cond_3

    neg-float v3, v3

    :cond_3
    cmpl-float v4, v2, v3

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mIsPageLoading:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentView;->isAnimationRunning:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    const/high16 v4, 0x447a

    div-float v4, p4, v4

    float-to-int v1, v4

    const/4 v4, 0x4

    if-le v1, v4, :cond_4

    const/4 v1, 0x4

    :cond_4
    const/4 v4, 0x1

    if-ge v1, v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    const/16 v4, 0x44c

    div-int v0, v4, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v6

    if-gez v4, :cond_8

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentScrollY()I

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentView;->isShowing:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0, v8}, Lorg/samsung/content/sbrowser/SbrContentView;->hideToolBar(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v8}, Lorg/samsung/content/sbrowser/SbrContentView;->showToolBar(I)V

    goto :goto_0

    :cond_7
    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentView;->isShowing:Z

    if-nez v4, :cond_0

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentView;->showToolBar(I)V

    goto :goto_0

    :cond_8
    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentView;->isShowing:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentView;->hideToolBar(I)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/ContentView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onSmartClipDataExtracted(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getExtractionMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    invoke-direct {p0, v1, p1}, Lorg/samsung/content/sbrowser/SbrContentView;->setExtractionResultToSmartClipDataElement(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Ljava/lang/String;)Z

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    invoke-static {p0, v1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    :goto_0
    return-void

    :cond_2
    sget-object v1, Lorg/samsung/content/sbrowser/SbrContentView;->TAG:Ljava/lang/String;

    const-string v2, "SmartClip element is NULL!"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getIsAutoHideEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/content/browser/ContentView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lorg/chromium/content/browser/ContentView;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->supportsAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/chromium/content/browser/ContentView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public reSetInterceptNavigationDelegate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    return-void
.end method

.method public reload()V
    .locals 1

    invoke-super {p0}, Lorg/chromium/content/browser/ContentView;->reload()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentView;->suppressInterceptionForThisNavigation(Ljava/lang/String;)V

    return-void
.end method

.method public setHideUrlBarListener(Lorg/samsung/content/sbrowser/HideUrlBarListener;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setHideUrlBarListener(Lorg/samsung/content/sbrowser/HideUrlBarListener;)V

    :cond_0
    return-void
.end method

.method public setInterceptNavigationDelegate(Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    return-void
.end method

.method public setIsPageLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mIsPageLoading:Z

    return-void
.end method

.method public showToolBar(I)V
    .locals 8

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentView;->isShowing:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMainToolBarView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getBottomBarUi()Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentView;->listener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentView;->isShowing:Z

    goto :goto_0
.end method

.method public suppressInterceptionForThisNavigation(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentView;->mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;->onUrlLoadRequested(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
