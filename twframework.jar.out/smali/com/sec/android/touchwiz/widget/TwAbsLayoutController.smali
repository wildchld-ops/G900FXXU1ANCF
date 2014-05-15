.class public abstract Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
.super Ljava/lang/Object;
.source "TwAbsLayoutController.java"


# static fields
.field static final HEIGHT_MEASURE_SPEC:I = 0xc

.field static final INVALID_POSITION:I = -0x1

.field static final TOP_BUTTOM_OFFSET:I = 0x3c

.field static final WIDTH_MEASURE_SPEC:I = 0xb


# instance fields
.field protected mFirstPosition:I

.field private mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

.field private mLayoutRequester:Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->createLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mLayoutRequester:Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    return-void
.end method

.method public static getChildMeasureSpec(IIII)I
    .locals 11

    const/16 v10, 0xc

    const/16 v9, 0xb

    const/4 v8, -0x1

    const/4 v7, -0x2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    :sswitch_0
    if-ltz p2, :cond_1

    move v1, p2

    const/high16 v0, 0x4000

    goto :goto_0

    :cond_1
    if-ne p2, v8, :cond_2

    move v1, v2

    const/high16 v0, 0x4000

    goto :goto_0

    :cond_2
    if-ne p2, v7, :cond_0

    move v1, v2

    const/high16 v0, -0x8000

    goto :goto_0

    :sswitch_1
    if-ltz p2, :cond_5

    if-ne p3, v9, :cond_4

    move v1, v2

    :cond_3
    :goto_1
    const/high16 v0, 0x4000

    goto :goto_0

    :cond_4
    if-ne p3, v10, :cond_3

    move v1, p2

    goto :goto_1

    :cond_5
    if-ne p2, v8, :cond_6

    move v1, v2

    const/high16 v0, 0x4000

    goto :goto_0

    :cond_6
    if-ne p2, v7, :cond_0

    if-ne p3, v9, :cond_8

    move v1, v2

    :cond_7
    :goto_2
    const/high16 v0, 0x4000

    goto :goto_0

    :cond_8
    if-ne p3, v10, :cond_7

    move v1, p2

    goto :goto_2

    :sswitch_2
    if-ltz p2, :cond_9

    move v1, p2

    const/high16 v0, 0x4000

    goto :goto_0

    :cond_9
    if-ne p2, v8, :cond_a

    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    if-ne p2, v7, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 0

    return p2
.end method

.method public getFirstVisibleViewPosition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    return v0
.end method

.method public final getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mLayoutRequester:Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->getView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    return-object v0
.end method

.method public abstract layoutchildren(II)V
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v5, 0xb

    invoke-static {p2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getChildMeasureSpec(IIII)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x78

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v5, 0xc

    invoke-static {p3, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getChildMeasureSpec(IIII)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public abstract measureChildren(II)[I
.end method

.method public abstract onFling(F)Z
.end method

.method public abstract onOverScroll(II)Z
.end method

.method public abstract onScroll(II)Z
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public refreshCaching()V
    .locals 0

    return-void
.end method

.method protected requestDetachViewsFromParent(IIIZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestDetachViewsFromParent(II)V

    return-void
.end method

.method protected requestDetachViewsFromParent(IIZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestDetachViewsFromParent(Landroid/view/View;)V

    return-void
.end method

.method public requestdetachAllViewsFromParent(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestdetachAllViewsFromParent()V

    return-void
.end method

.method abstract scrollToPosition(IZ)V
.end method
