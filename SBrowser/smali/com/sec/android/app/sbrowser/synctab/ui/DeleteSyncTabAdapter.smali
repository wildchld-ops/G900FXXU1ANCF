.class public Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeleteSyncTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;
    }
.end annotation


# instance fields
.field count:I

.field private devicesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;",
            ">;"
        }
    .end annotation
.end field

.field mActionMode:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;

.field private mActivity:Landroid/app/Activity;

.field private mDeleteSyncTabPhoneUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;

.field private selectAllCheckBox:Landroid/widget/CheckBox;

.field private selectAllView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;",
            ">;",
            "Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->count:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mDeleteSyncTabPhoneUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllView:Landroid/view/View;

    const v1, 0x7f0a011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$3;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$4;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActionMode:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActionMode:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActionMode:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllCheckBoxClick()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mDeleteSyncTabPhoneUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;

    return-object v0
.end method

.method private selectAllCheckBoxClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->toggleSelection(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private selectAllClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->toggleSelection(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setselectAllState()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->count:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040036

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    const v3, 0x7f0a011f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0121

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;

    iget-boolean v3, v3, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;->isSelected:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    new-instance v3, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$5;

    invoke-direct {v3, p0, p1, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$5;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;ILandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$6;

    invoke-direct {v3, p0, p1, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$6;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;ILandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$7;

    invoke-direct {v3, p0, p1, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$7;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;ILandroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$8;

    invoke-direct {v3, p0, p1, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$8;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;ILandroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2

    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public handleClick(ILandroid/view/View;)V
    .locals 5

    const v1, 0x7f0a0121

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;->isSelected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->count:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;

    iput-boolean v4, v0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;->isSelected:Z

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->setselectAllState()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActionMode:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c032f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->setTitle(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->count:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;->isSelected:Z

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    return-void
.end method

.method public toggleSelection(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;

    iget-boolean v2, v1, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;->isSelected:Z

    if-eq v2, p1, :cond_0

    iput-boolean p1, v1, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;->isSelected:Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->count:I

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActionMode:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c032f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->setTitle(Ljava/lang/String;)V

    return-void

    :cond_3
    iput v6, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->count:I

    goto :goto_1
.end method
