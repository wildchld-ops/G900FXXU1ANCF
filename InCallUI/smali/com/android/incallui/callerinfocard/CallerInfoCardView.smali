.class public Lcom/android/incallui/callerinfocard/CallerInfoCardView;
.super Landroid/widget/RelativeLayout;
.source "CallerInfoCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;,
        Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardItemClickListener;
    }
.end annotation


# instance fields
.field private mCallerInfoCardItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerInfoCardListView:Landroid/widget/ListView;

.field private mCallerInfoCardScrollHeaderView:Landroid/view/View;

.field private mCallerInfoCardScrollView:Landroid/widget/ScrollView;

.field private mCallerInfoCardView:Landroid/view/View;

.field private mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

.field private mCallerInfoCardViewShadow:Landroid/view/View;

.field private final mCollapseMaxHeight:I

.field private mContext:Landroid/content/Context;

.field private final mDividerHeight:I

.field private final mDividerMoreHeight:I

.field private final mDividerOneHeight:I

.field private mItemUpdated:Z

.field private mNotifyDataSetChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCollapseMaxHeight:I

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerHeight:I

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerOneHeight:I

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerMoreHeight:I

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->onQueryCompleted(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private add(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->replace(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDirty(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getCollapseHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setScrollHeaderHeight(I)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getViewExpandHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getChildExpandHeight()I
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getDividerHeight(III)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private getCollapseHeight()I
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getDividerHeight(II)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getDividerHeight(II)I

    move-result v0

    :cond_1
    iget v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCollapseMaxHeight:I

    if-le v0, v3, :cond_2

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCollapseMaxHeight:I

    :cond_2
    return v0
.end method

.method private getDividerHeight(II)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerHeight:I

    add-int/2addr p2, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerOneHeight:I

    add-int/2addr p2, v0

    :goto_0
    return p2

    :cond_0
    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerMoreHeight:I

    add-int/2addr p2, v0

    goto :goto_0
.end method

.method private getDividerHeight(III)I
    .locals 1

    add-int/lit8 v0, p2, -0x1

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerHeight:I

    add-int/2addr p3, v0

    :cond_0
    return p3
.end method

.method private getViewExpandHeight()I
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getDividerHeight(III)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private notifyDataSetChanged(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getUpdated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mItemUpdated:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mNotifyDataSetChanged:Z

    :cond_0
    return-void
.end method

.method private onQueryCompleted(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "CallerInfoCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryCompleted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->add(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->sort()V

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->notifyDataSetChanged(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    const-string v0, "CallerInfoCardView"

    const-string v1, "notifyDataSetChanged()"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    return-void
.end method

.method private replace(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)Z
    .locals 14

    const/16 v13, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v3

    div-int/lit8 v11, v6, 0x64

    if-ne v11, v9, :cond_4

    div-int/lit8 v11, v3, 0x64

    if-ne v11, v9, :cond_4

    if-eq v6, v3, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getUpdateTime()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getUpdateTime()J

    move-result-wide v4

    cmp-long v10, v7, v4

    if-gez v10, :cond_2

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDirty(Z)V

    :cond_1
    :goto_0
    return v9

    :cond_2
    cmp-long v10, v7, v4

    if-nez v10, :cond_1

    if-le v6, v3, :cond_1

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDirty(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDirty(Z)V

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v10, v13}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-ne v6, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDirty(Z)V

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v10, v13}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDirty(Z)V

    goto :goto_0

    :cond_6
    move v9, v10

    goto :goto_0
.end method

.method private scrollToUp()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mItemUpdated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private setScrollHeaderHeight(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollHeaderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->scrollToUp()V

    return-void
.end method

.method private sort()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public accessibility(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->setImportantForAccessibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->clear()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardView:Landroid/view/View;

    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollHeaderView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080060

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewShadow:Landroid/view/View;

    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040014

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardItemClickListener;

    invoke-direct {v1, p0, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardItemClickListener;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getCollapseHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setScrollHeaderHeight(I)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getChildExpandHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->scrollToUp()V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    :goto_0
    iput-boolean v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mNotifyDataSetChanged:Z

    iput-boolean v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mItemUpdated:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getCollapseHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setScrollHeaderHeight(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->allItemsEnabled(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public setVisibility(IZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getCollapseHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setScrollHeaderHeight(I)V

    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    const v2, 0x7f050003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method public update(Landroid/content/Context;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 2

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;)V

    invoke-static {p1, p2, v0, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQuery(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method
