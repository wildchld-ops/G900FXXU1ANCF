.class public Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;
.super Landroid/app/ListFragment;
.source "ContactHistoryViewByListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;,
        Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;,
        Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$Item;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mItemNameInHistory:[I


# instance fields
.field private mAdapter:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

.field private mAllitem:Landroid/widget/LinearLayout;

.field private mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mItemArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field mListener:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;

.field private mSortOptions:[Z

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xedt 0x2t 0xet 0x7ft
        0xeet 0x2t 0xet 0x7ft
        0xeft 0x2t 0xet 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->setAllItemCheckState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->checkOptionsChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private checkOptionsChanged()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    aget-boolean v1, v1, v0

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private linkOptionToListItem(Z)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->updateAllCheckState()V

    :cond_1
    return-void
.end method

.method private setAllItemCheckState(Z)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setItemArrayList()V
    .locals 7

    const v6, 0x7f0e02ee

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mItemArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v1

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_4

    if-nez v2, :cond_0

    sget-object v4, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    aget v4, v4, v0

    const v5, 0x7f0e02ed

    if-eq v4, v5, :cond_2

    :cond_0
    if-nez v1, :cond_1

    sget-object v4, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    aget v4, v4, v0

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    aget v4, v4, v0

    if-ne v4, v6, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$Item;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$Item;-><init>(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$1;)V

    sget-object v4, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    aget v4, v4, v0

    iput v4, v3, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$Item;->itemNameResId:I

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mItemArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private updateAllCheckState()V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x0

    const/4 v2, 0x1

    :cond_0
    iget-object v5, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    :goto_0
    if-ge v4, v1, :cond_0

    or-int v5, v3, v2

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getSortOptions()[Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    return-object v0
.end method

.method public linkListItemToOption()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    sput-object p1, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    :try_start_0
    sget-object v1, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;

    iput-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListener:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnViewByItemsCheckedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v0, 0x7f03004a

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {p0, p3}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030049

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mAllitem:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mAllitem:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$1;-><init>(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const v1, 0x7f08013c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v1, "selectAllChecked"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    const-string v0, "sortOptions"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->setItemArrayList()V

    new-instance v0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03004c

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mItemArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;-><init>(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f080139

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->updateAllCheckState()V

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListener:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;

    invoke-direct {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->checkOptionsChanged()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;->onChangedOptionItems(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "sortOptions"

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string v0, "selectAllChecked"

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "options"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "options"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    invoke-direct {p0, p2}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->linkOptionToListItem(Z)V

    :cond_0
    return-void
.end method
