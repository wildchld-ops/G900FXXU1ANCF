.class public Lcom/sec/android/touchwiz/widget/TwTabWidget;
.super Landroid/widget/LinearLayout;
.source "TwTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwTabWidget$1;,
        Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;,
        Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwTabWidget"

.field public static final TW_TABWIDGET_PAGE_INDICATOR_COUNT:I = 0x5


# instance fields
.field private mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mBottomRightStrip:Landroid/graphics/drawable/Drawable;

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawBottomStrips:Z

.field private mRcTemp:Landroid/graphics/Rect;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/high16 v0, 0x201

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mRcTemp:Landroid/graphics/Rect;

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDrawBottomStrips:Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->initTabWidget()V

    sget-object v1, Ltouchwiz/R$styleable;->TwTabWidget:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwTabWidget;)Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private drawDividers(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    if-eq v2, v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mRcTemp:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mRcTemp:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mRcTemp:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mRcTemp:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mRcTemp:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iput v5, v4, Landroid/graphics/Rect;->right:I

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mRcTemp:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mRcTemp:Landroid/graphics/Rect;

    invoke-static {v4, v1, v0, v5, v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mRcTemp:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private initTabWidget()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setOrientation(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setFocusable(Z)V

    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f80

    invoke-direct {v0, v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;-><init>(Lcom/sec/android/touchwiz/widget/TwTabWidget;ILcom/sec/android/touchwiz/widget/TwTabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setPadding(IIII)V

    goto :goto_0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->drawDividers(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDrawBottomStrips:Z

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0
.end method

.method public focusCurrentTab(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setCurrentTab(I)V

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setCurrentTab(I)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 10

    const/high16 v9, 0x4000

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    move v3, v5

    div-int/lit8 v7, v3, 0x5

    add-int/lit8 v2, v7, 0x1

    if-lez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int v7, v2, v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mStripMoved:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public setCurrentTab(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method setDrawBottomStrips(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDrawBottomStrips:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setTabSelectionListener(Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;

    return-void
.end method
