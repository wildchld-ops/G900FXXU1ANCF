.class Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;
.super Landroid/widget/LinearLayout;
.source "TwTabWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;
    }
.end annotation


# instance fields
.field private TWTABIMAGE_SIDE_PADDING:F

.field private mScale:F

.field mScrollToCurrentItem:Ljava/lang/Runnable;

.field private mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

.field private mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

.field private mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwTabHost;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScale:F

    const/high16 v0, 0x4090

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->TWTABIMAGE_SIDE_PADDING:F

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$1;-><init>(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollToCurrentItem:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;-><init>(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScale:F

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabWidget;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    return-object v0
.end method


# virtual methods
.method public addTabWidget(Lcom/sec/android/touchwiz/widget/TwTabWidget;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->TWTABIMAGE_SIDE_PADDING:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScale:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f80

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    neg-int v2, v1

    neg-int v3, v1

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method rescheduleSelectCurrentItem()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollToCurrentItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollToCurrentItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scrollToTab(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->scrollToTab(IZ)V

    return-void
.end method

.method public scrollToTab(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToTabView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChild(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->access$000(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;Landroid/view/View;)V

    goto :goto_0
.end method
