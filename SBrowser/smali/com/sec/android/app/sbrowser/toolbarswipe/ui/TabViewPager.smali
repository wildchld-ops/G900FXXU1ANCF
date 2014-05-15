.class public Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "TabViewPager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TabViewPager"


# instance fields
.field private mScroller:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ScrollerCustomDuration;

.field private mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->mScroller:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ScrollerCustomDuration;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->postInitViewPager()V

    return-void
.end method

.method private postInitViewPager()V
    .locals 6

    :try_start_0
    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string v4, "mScroller"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string v4, "sInterpolator"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v4, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ScrollerCustomDuration;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-direct {v4, v5, v3}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ScrollerCustomDuration;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->mScroller:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ScrollerCustomDuration;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->mScroller:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ScrollerCustomDuration;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "TabViewPager"

    const-string v4, "TAB_SWIPE Exception in postInitViewPager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshViewPager()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->forceRefreshViewPager()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->getToolbarHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, "TabViewPager"

    const-string v1, "TAB_SWIPE Clicked outside of toolbar, not consuming"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->refreshViewPager()V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public setScrollDurationFactor(D)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->mScroller:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ScrollerCustomDuration;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ScrollerCustomDuration;->setScrollDurationFactor(D)V

    return-void
.end method

.method public setSwipeHandler(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    return-void
.end method
