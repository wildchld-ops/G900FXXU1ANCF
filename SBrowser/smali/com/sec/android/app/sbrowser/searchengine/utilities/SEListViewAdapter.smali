.class public Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SEListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mCount:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private final mSEListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/LayoutInflater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->mSEListItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->mCount:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->mSEListItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->mSEListItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v9, 0x7f0a022e

    const/4 v8, 0x1

    move-object v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter$ViewHolder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040089

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0a0230

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v5, 0x7f0a022f

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->mSEListItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->getLabel()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter$ViewHolder;->text:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->mSEListItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->getFavIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    instance-of v5, p3, Landroid/widget/ListView;

    if-eqz v5, :cond_0

    check-cast p3, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p3, v5}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter$ViewHolder;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method
