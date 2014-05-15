.class public Lcom/android/contacts/common/list/AutoScrollListView;
.super Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.source "AutoScrollListView.java"


# instance fields
.field private mRequestedScrollPosition:I

.field private mSmoothScrollRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 11

    const/4 v10, -0x1

    :try_start_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget v7, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    if-ne v7, v10, :cond_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v7, "AutoScrollListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layoutChildren : IllegalStateException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v7, "AutoScrollListView"

    const-string v8, "layoutChildren : StaleDataException"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    iput v10, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getFirstVisiblePosition()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getLastVisiblePosition()I

    move-result v2

    if-lt v4, v1, :cond_2

    if-le v4, v2, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3ea8f5c3

    mul-float/2addr v7, v8

    float-to-int v3, v7

    iget-boolean v7, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mSmoothScrollRequested:Z

    if-nez v7, :cond_3

    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/common/list/AutoScrollListView;->setSelectionFromTop(II)V

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    goto :goto_1

    :cond_3
    sub-int v7, v2, v1

    mul-int/lit8 v6, v7, 0x2

    if-ge v4, v1, :cond_6

    add-int v5, v4, v6

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :cond_4
    if-ge v5, v1, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/list/AutoScrollListView;->setSelection(I)V

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    :cond_5
    :goto_2
    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/common/list/AutoScrollListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_1

    :cond_6
    sub-int v5, v4, v6

    if-gez v5, :cond_7

    const/4 v5, 0x0

    :cond_7
    if-le v5, v2, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/list/AutoScrollListView;->setSelection(I)V

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    goto :goto_2
.end method

.method public requestPositionToScreen(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    iput-boolean p2, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mSmoothScrollRequested:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->requestLayout()V

    return-void
.end method
