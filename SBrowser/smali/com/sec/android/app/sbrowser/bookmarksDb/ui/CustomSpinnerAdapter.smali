.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomSpinnerAdapter.java"


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mShowUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->data:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->mShowUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->mCount:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->data:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->mShowUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0061

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a00be

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c032f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->mCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->mCount:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CustomSpinnerAdapter;->notifyDataSetChanged()V

    return-void
.end method
