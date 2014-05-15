.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;
.super Landroid/widget/LinearLayout;
.source "BookmarkShowView.java"


# instance fields
.field isScrolled:Z

.field private mActivePointerId:I

.field mContextVar:Landroid/content/Context;

.field newDist:F

.field oldDist:F

.field scale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->oldDist:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->newDist:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->scale:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->mActivePointerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->isScrolled:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->oldDist:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->newDist:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->scale:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->mActivePointerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->isScrolled:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public final init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->mContextVar:Landroid/content/Context;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x40a0

    const/high16 v7, 0x3f80

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    if-lt v2, v6, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->mActivePointerId:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->spacing(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->oldDist:F

    goto :goto_0

    :pswitch_2
    if-lt v2, v6, :cond_0

    iget v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->spacing(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->newDist:F

    iget v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->newDist:F

    iget v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->oldDist:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->scale:F

    iget v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->scale:F

    const v4, 0x3f99999a

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->scale:F

    const v4, 0x3f4ccccd

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->isScrolled:Z

    goto :goto_0

    :pswitch_3
    iget v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    if-lt v2, v6, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->isScrolled:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->spacing(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->newDist:F

    iget v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->newDist:F

    iget v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->oldDist:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->scale:F

    const/4 v1, 0x0

    if-eqz v1, :cond_2

    iget v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->scale:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_3

    invoke-virtual {v1, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandAllSpeedFactor(F)V

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandAll()Z

    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->isScrolled:Z

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkShowView;->scale:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_2

    invoke-virtual {v1, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setCollapseAllSpeedFactor(F)V

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseAll()Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
