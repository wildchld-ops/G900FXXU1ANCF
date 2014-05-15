.class public Lcom/samsung/contacts/detail/SelectContactInfoActivity;
.super Landroid/app/ListActivity;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/detail/SelectContactInfoActivity$KindTitleViewEntry;,
        Lcom/samsung/contacts/detail/SelectContactInfoActivity$SeparatorViewEntry;,
        Lcom/samsung/contacts/detail/SelectContactInfoActivity$HeaderViewEntry;,
        Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;,
        Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;,
        Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;,
        Lcom/samsung/contacts/detail/SelectContactInfoActivity$KindTitleViewCache;,
        Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;,
        Lcom/samsung/contacts/detail/SelectContactInfoActivity$SelectAllViewCache;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAllSelectableEntriesPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContactData:Lcom/android/contacts/model/Contact;

.field private final mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisplayName:Ljava/lang/String;

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mLookupUri:Landroid/net/Uri;

.field private mNicknameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRelationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAllChecked:Z

.field private mSelectedCount:I

.field private mSelectedTextView:Landroid/widget/TextView;

.field private mSipEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mWebsiteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mNicknameEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSipEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mEventEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mRelationEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mNoteEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllSelectableEntriesPosition:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$1;-><init>(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/contacts/detail/SelectContactInfoActivity;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactData:Lcom/android/contacts/model/Contact;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->bindData()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectAllChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/detail/SelectContactInfoActivity;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->setMaxLines(Landroid/widget/TextView;I)V

    return-void
.end method

.method private bindData()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildEntries()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->setupFlattenedList()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAdapter:Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;

    invoke-direct {v0, p0, p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;-><init>(Lcom/samsung/contacts/detail/SelectContactInfoActivity;Landroid/app/ListActivity;)V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAdapter:Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAdapter:Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f0802ac

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAdapter:Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private buildEmailEntries(Lcom/android/contacts/model/dataitem/DataItem;Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v0

    iput-boolean v0, p2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->isPrimary:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e047a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->isPrimary:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getStatuses()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iget-wide v2, p2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/util/DataStatus;

    if-eqz v8, :cond_0

    move-object v6, p1

    check-cast v6, Lcom/android/contacts/model/dataitem/EmailDataItem;

    invoke-static {v6}, Lcom/android/contacts/model/dataitem/ImDataItem;->createFromEmail(Lcom/android/contacts/model/dataitem/EmailDataItem;)Lcom/android/contacts/model/dataitem/ImDataItem;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getDirectoryId()J

    move-result-wide v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->fromValues(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;ZJLcom/android/contacts/common/model/dataitem/DataKind;)Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v7, v1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildImActions(Landroid/content/Context;Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;Lcom/android/contacts/model/dataitem/ImDataItem;)V

    iget v0, p3, Lcom/android/contacts/common/model/dataitem/DataKind;->maxLinesForDisplay:I

    iput v0, v7, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e047c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private buildEntries()V
    .locals 15

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_2

    const v0, 0x104000e

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/model/RawContact;

    invoke-virtual {v11}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/dataitem/DataItem;

    invoke-virtual {v1}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v0}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v12

    if-eqz v10, :cond_4

    invoke-virtual {v12}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSimAccount(Lcom/android/contacts/common/model/account/AccountType;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_5
    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {v0, v12, v10}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getDirectoryId()J

    move-result-wide v3

    invoke-static/range {v0 .. v5}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->fromValues(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;ZJLcom/android/contacts/common/model/dataitem/DataKind;)Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;

    move-result-object v6

    iget v0, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->maxLinesForDisplay:I

    iput v0, v6, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    iget-object v0, v6, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    instance-of v0, v1, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    if-eqz v0, :cond_6

    invoke-direct {p0, v1, v6}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildPhoneEntries(Lcom/android/contacts/model/dataitem/DataItem;Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V

    goto :goto_0

    :cond_6
    instance-of v0, v1, Lcom/android/contacts/model/dataitem/EmailDataItem;

    if-eqz v0, :cond_7

    invoke-direct {p0, v1, v6, v5}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildEmailEntries(Lcom/android/contacts/model/dataitem/DataItem;Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_0

    :cond_7
    instance-of v0, v1, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    if-eqz v0, :cond_8

    invoke-direct {p0, v6}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildPostalEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V

    goto :goto_0

    :cond_8
    instance-of v0, v1, Lcom/android/contacts/model/dataitem/ImDataItem;

    if-eqz v0, :cond_9

    invoke-direct {p0, v1, v6}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildImEntries(Lcom/android/contacts/model/dataitem/DataItem;Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V

    goto :goto_0

    :cond_9
    instance-of v0, v1, Lcom/android/contacts/model/dataitem/OrganizationDataItem;

    if-eqz v0, :cond_a

    invoke-direct {p0, v1, v6}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildOrganizationEntries(Lcom/android/contacts/model/dataitem/DataItem;Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V

    goto :goto_0

    :cond_a
    instance-of v0, v1, Lcom/android/contacts/model/dataitem/NicknameDataItem;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getNameRawContactId()J

    move-result-wide v2

    invoke-virtual {v11}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v0, v2, v13

    if-nez v0, :cond_b

    const/4 v9, 0x1

    :goto_1
    invoke-direct {p0, v6, v9}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildNicknameEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;Z)V

    goto/16 :goto_0

    :cond_b
    const/4 v9, 0x0

    goto :goto_1

    :cond_c
    instance-of v0, v1, Lcom/android/contacts/model/dataitem/NoteDataItem;

    if-eqz v0, :cond_d

    invoke-direct {p0, v6}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildNoteEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_0

    :cond_d
    instance-of v0, v1, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    if-eqz v0, :cond_e

    invoke-direct {p0, v6}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildWebsteEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_0

    :cond_e
    instance-of v0, v1, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    if-eqz v0, :cond_f

    invoke-direct {p0, v6}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildSipAddressEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_0

    :cond_f
    instance-of v0, v1, Lcom/android/contacts/model/dataitem/EventDataItem;

    if-eqz v0, :cond_10

    invoke-direct {p0, v6}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildEventDateEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_0

    :cond_10
    instance-of v0, v1, Lcom/android/contacts/model/dataitem/RelationDataItem;

    if-eqz v0, :cond_4

    invoke-direct {p0, v6}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildRelationDateEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_0
.end method

.method private buildEventDateEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e047b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildImActions(Landroid/content/Context;Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;Lcom/android/contacts/model/dataitem/ImDataItem;)V
    .locals 6

    const/4 v3, 0x5

    invoke-virtual {p3}, Lcom/android/contacts/model/dataitem/ImDataItem;->isCreatedFromEmail()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Lcom/android/contacts/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_2

    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1
.end method

.method private buildImEntries(Lcom/android/contacts/model/dataitem/DataItem;Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/contacts/model/dataitem/ImDataItem;

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->buildImActions(Landroid/content/Context;Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;Lcom/android/contacts/model/dataitem/ImDataItem;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildNicknameEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;Z)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getDisplayNameSource()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0481

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildNoteEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e047d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildOrganizationEntries(Lcom/android/contacts/model/dataitem/DataItem;Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 2

    check-cast p1, Lcom/android/contacts/model/dataitem/OrganizationDataItem;

    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/OrganizationDataItem;->getCompany()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0480

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildPhoneEntries(Lcom/android/contacts/model/dataitem/DataItem;Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisablePhoneNumberFormatting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v1

    iput-boolean v1, p2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->isPrimary:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e047e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-boolean v1, p2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->isPrimary:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    const/4 v1, 0x3

    iput v1, p2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->textDirection:I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getFormattedPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private buildPostalEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0483

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildRelationDateEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e047b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mRelationEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildSipAddressEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0482

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSipEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildWebsteEntries(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e047f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private deselectAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAdapter:Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;

    iget-object v2, v3, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/contacts/detail/SelectContactInfoActivity$KindTitleViewEntry;

    invoke-direct {v4, v2}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllSelectableEntriesPosition:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private parseData(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/StringBuilder;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, " "

    iget-object v1, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private performSaveAction()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "namecard_string"

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->parseSendData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->finish()V

    return-void
.end method

.method private selectAll()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllSelectableEntriesPosition:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAdapter:Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08016b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const v2, 0x7f08016c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/contacts/detail/SelectContactInfoActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$2;-><init>(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private setupFlattenedList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllSelectableEntriesPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectAllChecked:Z

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$HeaderViewEntry;

    invoke-direct {v1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$HeaderViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSipEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mRelationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SeparatorViewEntry;

    invoke-direct {v1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private updateSelectionMenu()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectedCount:I

    if-nez v3, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectedCount:I

    if-lez v3, :cond_2

    if-nez v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    iput v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectedCount:I

    iget v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectedCount:I

    iget-object v4, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllSelectableEntriesPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    iput-boolean v5, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectAllChecked:Z

    :goto_0
    iget-object v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e027b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectedTextView:Landroid/widget/TextView;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->invalidateOptionsMenu()V

    :cond_3
    return-void

    :cond_4
    iput-boolean v6, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectAllChecked:Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectedCount:I

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->setupActionBar()V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    const v2, 0x7f030108

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "contactUri"

    iget-object v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void

    :cond_0
    const-string v2, "checkedList"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f11000b

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v3, 0x7f080172

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v3, 0x7f080171

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v3, 0x1

    return v3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    invoke-direct {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->updateSelectionMenu()V

    iget-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAdapter:Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    instance-of v2, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SelectAllViewCache;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SelectAllViewCache;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SelectAllViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectAllChecked:Z

    iget-object v2, v1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SelectAllViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->deselectAll()V

    goto :goto_0

    :cond_4
    iput-boolean v4, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectAllChecked:Z

    iget-object v2, v1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SelectAllViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->selectAll()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->performSaveAction()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080172 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f080172

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectedCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "checkedList"

    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public parseSendData()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v4, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;

    invoke-direct {p0, v1, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->parseData(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
