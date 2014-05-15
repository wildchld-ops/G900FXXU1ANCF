.class public Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrowsingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field controller:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

.field public countselectall:I

.field private holder:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

.field private mItems:[Z

.field private values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[ZLcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->values:[Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->mItems:[Z

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->controller:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;)[Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->mItems:[Z

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->mItems:[Z

    array-length v0, v0

    return v0
.end method

.method public getCountselectall()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->values:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    move-object v1, p2

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    invoke-direct {v2, p0, v5}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->holder:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    if-nez v1, :cond_0

    const v2, 0x7f040029

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->holder:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    const v2, 0x7f0a010a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;->tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->holder:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    const v2, 0x7f0a010b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, v3, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;->cb:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->holder:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;->cb:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->holder:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->holder:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;->tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->values:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->holder:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;->cb:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->mItems:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->holder:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;->cb:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->holder:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;->tv:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->holder:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;->cb:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v3, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->holder:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;->cb:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setClickable(Z)V

    return-object v1

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->holder:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$Holder;

    goto :goto_0
.end method

.method public setCountselectall(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    return-void
.end method
