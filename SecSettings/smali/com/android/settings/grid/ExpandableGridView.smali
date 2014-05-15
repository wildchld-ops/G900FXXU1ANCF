.class public Lcom/android/settings/grid/ExpandableGridView;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"


# instance fields
.field collapseDesc:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field expandDesc:Ljava/lang/String;

.field expandablelistDesc:Ljava/lang/String;

.field mCategoryClickListener:Landroid/view/View$OnClickListener;

.field private mCategoryContainer:Landroid/view/View;

.field private mCategoryTextView:Landroid/widget/TextView;

.field private mCount:I

.field private mExpandImageView:Landroid/widget/ImageView;

.field private mGridView:Landroid/widget/TableLayout;

.field private mIsExpanded:Z

.field private mNumOfColumn:I

.field private mTableRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TableRow;",
            ">;"
        }
    .end annotation
.end field

.field private title_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mIsExpanded:Z

    iput v3, p0, Lcom/android/settings/grid/ExpandableGridView;->mNumOfColumn:I

    iput v3, p0, Lcom/android/settings/grid/ExpandableGridView;->mCount:I

    new-instance v1, Lcom/android/settings/grid/ExpandableGridView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/grid/ExpandableGridView$1;-><init>(Lcom/android/settings/grid/ExpandableGridView;)V

    iput-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryClickListener:Landroid/view/View$OnClickListener;

    const v1, 0x7f0400a3

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryContainer:Landroid/view/View;

    const v2, 0x7f0b01bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryContainer:Landroid/view/View;

    const v2, 0x7f0b01bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryContainer:Landroid/view/View;

    const v2, 0x7f0b01be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mExpandImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mExpandImageView:Landroid/widget/ImageView;

    const v2, 0x7f0205d5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->expandDesc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->collapseDesc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->expandablelistDesc:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/grid/ExpandableGridView;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/TableLayout;

    invoke-direct {v1, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mTableRows:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/settings/grid/ExpandableGridView;->mNumOfColumn:I

    iput v3, p0, Lcom/android/settings/grid/ExpandableGridView;->mCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/grid/ExpandableGridView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/grid/ExpandableGridView;->mIsExpanded:Z

    return v0
.end method

.method private addViewIntoLastRow(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mTableRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mTableRows:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    invoke-virtual {v0, p1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private addViewIntoNewRow(Landroid/view/View;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0260

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/widget/TableRow;->setPadding(IIII)V

    invoke-virtual {v1, p1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mTableRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/grid/ExpandableGridView;->mCount:I

    iget v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mNumOfColumn:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/grid/ExpandableGridView;->addViewIntoNewRow(Landroid/view/View;Landroid/content/Context;)V

    :goto_0
    iget v0, p0, Lcom/android/settings/grid/ExpandableGridView;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/grid/ExpandableGridView;->mCount:I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/grid/ExpandableGridView;->addViewIntoLastRow(Landroid/view/View;)V

    goto :goto_0
.end method

.method public attachView(Landroid/widget/LinearLayout;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryContainer:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/grid/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public changeMaxOfColumn(Landroid/content/Context;I)V
    .locals 5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/grid/ExpandableGridView;->mTableRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/settings/grid/ExpandableGridView;->mTableRows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    invoke-virtual {v4}, Landroid/widget/TableRow;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/grid/ExpandableGridView;->mTableRows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    invoke-virtual {v4, v1}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/settings/grid/ExpandableGridView;->mTableRows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    invoke-virtual {v4}, Landroid/widget/TableRow;->removeAllViews()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/grid/ExpandableGridView;->mTableRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/settings/grid/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->removeAllViews()V

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/settings/grid/ExpandableGridView;->mCount:I

    iput p2, p0, Lcom/android/settings/grid/ExpandableGridView;->mNumOfColumn:I

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/grid/ExpandableGridView;->addView(Landroid/view/View;Landroid/content/Context;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getHeaderViewCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public loadExpandState(I)V
    .locals 6

    iput p1, p0, Lcom/android/settings/grid/ExpandableGridView;->title_id:I

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->context:Landroid/content/Context;

    const-string v4, "expand_state"

    iget-object v5, p0, Lcom/android/settings/grid/ExpandableGridView;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/grid/ExpandableGridView;->setExpanded(Z)V

    return-void
.end method

.method public saveExpandstate(Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/grid/ExpandableGridView;->title_id:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->context:Landroid/content/Context;

    const-string v4, "expand_state"

    iget-object v5, p0, Lcom/android/settings/grid/ExpandableGridView;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setCategoryText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mExpandImageView:Landroid/widget/ImageView;

    const v2, 0x7f0205d5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->expandablelistDesc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->collapseDesc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/grid/ExpandableGridView;->mIsExpanded:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mExpandImageView:Landroid/widget/ImageView;

    const v2, 0x7f0205d6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->expandablelistDesc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->expandDesc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/grid/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    invoke-virtual {v0, p1}, Landroid/widget/TableLayout;->setVisibility(I)V

    return-void
.end method
