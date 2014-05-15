.class Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/AccountFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterListAdapter"
.end annotation


# instance fields
.field private final mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field private mContext:Landroid/content/Context;

.field private final mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListContainer:Landroid/widget/LinearLayout;

.field private mSettingLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    iput-object p1, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->getItem(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/android/contacts/common/list/ContactListFilterView;

    :goto_0
    iget-object v4, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->setSingleAccount(Z)V

    iget-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {v1, v3}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(Z)V

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->setActivated(Z)V

    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mListContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mListContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter$1;-><init>(Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;Lcom/android/contacts/common/list/ContactListFilterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080144

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mSettingLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mSettingLayout:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter$2;-><init>(Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_1
    iget-object v4, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030051

    invoke-virtual {v4, v5, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListFilterView;

    goto :goto_0
.end method
