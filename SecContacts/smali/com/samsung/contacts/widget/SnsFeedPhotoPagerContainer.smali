.class public Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;
.super Landroid/widget/FrameLayout;
.source "SnsFeedPhotoPagerContainer.java"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mTouchSlop:I

.field private mTouchedDownX:I

.field private mTouchedDownY:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-le v5, v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget v5, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mCenterX:I

    iget v6, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mTouchedDownX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mCenterY:I

    iget v7, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mTouchedDownY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mTouchedDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mTouchedDownY:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v5, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mTouchedDownX:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v5, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mTouchedDownY:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mCenterX:I

    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoPagerContainer;->mCenterY:I

    return-void
.end method
