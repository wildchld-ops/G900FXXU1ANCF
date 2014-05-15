.class public Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeleteTabSpinnerAdapter.java"


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field mContext:Landroid/content/Context;

.field private mCount:I

.field private mSpinner:Landroid/widget/Spinner;

.field syncTabPhoneUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->mCount:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->mSpinner:Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->syncTabPhoneUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->data:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->syncTabPhoneUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0061

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a00be

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c032f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->mCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->mCount:I

    return-void
.end method

.method public setSpinnerobj(Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteTabSpinnerAdapter;->mSpinner:Landroid/widget/Spinner;

    return-void
.end method
