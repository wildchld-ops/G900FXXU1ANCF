.class Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;
.super Landroid/widget/ListPopupWindow;
.source "SuggestionListPopupWindow.java"


# static fields
.field private static final INDEX_VALUE_ONE:I = 0x1

.field private static final INDEX_VALUE_TWO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SuggetionListPopupWindow"


# instance fields
.field private mAnchorPosition:[I

.field private mContext:Landroid/content/Context;

.field private mListItemCount:I

.field private mPreviousAnchorYPosition:I

.field private mPreviousAppSize:Landroid/graphics/Rect;

.field private mSuggestionHeight:I

.field private mTempAppSize:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x101006b

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mAnchorPosition:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mPreviousAppSize:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mTempAppSize:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mSuggestionHeight:I

    return-void
.end method

.method private getDecorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invalidateSuggestionViews()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public show()V
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mListItemCount:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->setInputMethodMode(I)V

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mListItemCount:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mPreviousAppSize:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mAnchorPosition:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mAnchorPosition:[I

    aget v3, v3, v6

    iput v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mPreviousAnchorYPosition:I

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_2
    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mListItemCount:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mTempAppSize:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mAnchorPosition:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mPreviousAnchorYPosition:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mAnchorPosition:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mTempAppSize:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mPreviousAppSize:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mTempAppSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mAnchorPosition:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v0, v3, v4

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mListItemCount:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->mSuggestionHeight:I

    mul-int v2, v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    if-ge v3, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-lt v3, v0, :cond_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v3, "SuggetionListPopupWindow"

    const-string v4, "show : getListView is null "

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v3, "SuggetionListPopupWindow"

    const-string v4, "show : getListView is null "

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
