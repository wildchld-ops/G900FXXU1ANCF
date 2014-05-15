.class public Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;
.super Ljava/lang/Object;
.source "MultiTabOutroUtils.java"


# instance fields
.field an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

.field isAnimating:Z

.field layout:Landroid/widget/LinearLayout;

.field mContext:Landroid/content/Context;

.field mOutroAnimationHandler:Landroid/os/Handler;

.field mOutroAnimationWeakReferenceHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field mPresThumbnail:Landroid/graphics/Bitmap;

.field private mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->isAnimating:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-object v0
.end method


# virtual methods
.method public animateTempImage(Landroid/view/View;Landroid/view/View;I)V
    .locals 11

    const v10, 0x7f09023a

    const v9, 0x7f090229

    const/4 v7, 0x2

    const/4 v6, 0x1

    const v8, 0x7f0a0180

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0a0190

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090238

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090237

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v4

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v4, v5

    float-to-int v3, v4

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v4

    if-ne v4, v6, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v6, v4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getPortraitLayoutID()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v4, v6

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v6

    add-float/2addr v4, v6

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setX(F)V

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v4, v6

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v6

    add-float/2addr v4, v6

    int-to-float v6, v3

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmScrollView()Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setY(F)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->isAccessibilityTalkBackisEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;

    invoke-direct {v4, p0, v0, v1, p3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;III)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mOutroAnimationHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mOutroAnimationWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mOutroAnimationWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_4
    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mOutroAnimationHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mOutroAnimationWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mOutroAnimationWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, v5, p3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setFullScreenBitmap(Ljava/lang/ref/WeakReference;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v4, v5

    float-to-int v3, v4

    goto/16 :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v4

    if-ne v4, v7, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v4, v6

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v6

    add-float/2addr v4, v6

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setX(F)V

    goto/16 :goto_2
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->isAnimating:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->finishActivty()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->destroy()V

    :cond_2
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mOutroAnimationHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mOutroAnimationWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mOutroAnimationWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_3
    return-void
.end method

.method public isAccessibilityTalkBackisEnabled()Z
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
