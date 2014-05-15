.class public Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "InteractionEmergencyMessageFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;,
        Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

.field private mActivity:Landroid/app/Activity;

.field private mAddContactButton:Landroid/view/View;

.field private mAddContactLayout:Landroid/view/View;

.field private mContactsCount:I

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mEmptyView:Landroid/view/View;

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$Listener;

.field private mMaxContactsNumber:I

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

.field private mSelectedContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    iput v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mMaxContactsNumber:I

    iput v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContactsCount:I

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setQuickContactEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setDirectorySearchMode(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setSweepActionEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setFakeQueryModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mMaxContactsNumber:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContactsCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->addSelectAllHeader()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->removeSelectAllHeader()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;)Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionModeCallback:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->updateSelectAllState(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAddContactLayout:Landroid/view/View;

    return-object v0
.end method

.method private addSelectAllHeader()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030107

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v2, 0x7f0802aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    :cond_0
    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    goto :goto_2
.end method

.method private removeSelectAllHeader()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->removeHeaderView(Landroid/view/View;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectAllHeaderView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private updateSelectAllState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->setDisplayPhotos(Z)V

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->setQuickContactEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->setSelectedContactIds(Ljava/util/ArrayList;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v1, "InteractionEmergencyMessageFragment"

    const-string v2, "inflateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0300c5

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0801d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const v1, 0x7f02019c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "InteractionEmergencyMessageFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mEmptyView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0801d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e006c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080227

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAddContactLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAddContactButton:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAddContactButton:Landroid/view/View;

    new-instance v2, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$1;-><init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setAddContactButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionModeCallback:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContactsCount:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionModeCallback:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    invoke-virtual {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->selectAll()V

    :goto_0
    iget v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContactsCount:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContactsCount:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->updateSelectAllState(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionModeCallback:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    invoke-virtual {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionModeCallback:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    invoke-virtual {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->deselectAll()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onItemClick(IJ)V
    .locals 5

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionModeCallback:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionModeCallback:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->onContactSelected(IJ)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.contacts.action.emergencymessagecontactcreateactivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "edit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "_id"

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->startActionMode()V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionModeCallback:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    invoke-virtual {v1, v0, p4, p5}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->onContactSelected(IJ)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v0, "InteractionEmergencyMessageFragment"

    const-string v1, "Data is NULL"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->configureEmptyView(Z)V

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->configureEmptyView(Z)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "selectedContactIds"

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "selectedContactIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setAddContactButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAddContactButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setListener(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mListener:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$Listener;

    return-void
.end method

.method public setMaxContactsNumber(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mMaxContactsNumber:I

    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 5

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const-string v1, "InteractionEmergencyMessageFragment"

    const-string v3, "Data is null"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p2, :cond_1

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContactsCount:I

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mListener:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$Listener;

    if-nez p2, :cond_2

    :goto_2
    invoke-interface {v1, v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$Listener;->onShowCount(I)V

    return-void

    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const-string v1, "InteractionEmergencyMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ready to display : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_2
.end method

.method public startActionMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionModeCallback:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;-><init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$1;)V

    iput-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionModeCallback:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionModeCallback:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method
