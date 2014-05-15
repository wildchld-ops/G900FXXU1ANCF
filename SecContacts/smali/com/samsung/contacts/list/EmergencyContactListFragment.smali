.class public Lcom/samsung/contacts/list/EmergencyContactListFragment;
.super Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.source "EmergencyContactListFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEmergencyContactsCount:I

.field private mEmptyView:Landroid/view/View;

.field private mFavoritesCount:I

.field private mFrequentsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/contacts/list/EmergencyContactListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    iput v0, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mEmergencyContactsCount:I

    iput v0, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mFavoritesCount:I

    iput v0, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mFrequentsCount:I

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    return-void
.end method

.method private callToEmergencyServiceContact(J)V
    .locals 13

    const/4 v4, 0x0

    const/4 v12, 0x1

    const-wide/16 v10, -0x1

    cmp-long v0, p1, v10

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v9, 0x0

    const-string v0, "content://com.android.contacts/emergency/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    const-string v0, "number"

    aput-object v0, v2, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/contacts/sim/list/ListSimManager;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/list/ListSimManager;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0, v9, v4}, Lcom/samsung/contacts/sim/list/ListSimManager;->getCallIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    :try_start_0
    iget-object v0, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from Start Activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private callToNormalContact(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/contacts/common/activity/TransactionSafeActivity;

    invoke-static {v0, p1}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/contacts/common/activity/TransactionSafeActivity;Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureAdapter()V

    iget-object v0, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->setQuickContactEnabled(Z)V

    :cond_0
    return-void
.end method

.method public createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 2

    new-instance v0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->createListAdapter()Lcom/android/contacts/common/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactListAdapter;
    .locals 2

    new-instance v0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->setDisplayPhotos(Z)V

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080048

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080143

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0801d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setLongClickable(Z)V

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;

    iget v1, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mEmergencyContactsCount:I

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->getEmergencyContactId(I)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->callToEmergencyServiceContact(J)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->callToNormalContact(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;

    iget v2, v1, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mEmergencyContactsCount:I

    iput v2, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mEmergencyContactsCount:I

    iget v2, v1, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mFavoritesCount:I

    iput v2, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mFavoritesCount:I

    iget v2, v1, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mFrequentsCount:I

    iput v2, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mFrequentsCount:I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;

    iget v2, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mEmergencyContactsCount:I

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->setEmergencyContactsCount(I)V

    iget v2, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mFavoritesCount:I

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->setFavoritesCount(I)V

    iget v2, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mFrequentsCount:I

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->setFrequentsCount(I)V

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void

    :cond_0
    iput v3, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mEmergencyContactsCount:I

    iput v3, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mFavoritesCount:I

    iput v3, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mFrequentsCount:I

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected setProfileHeader()V
    .locals 0

    return-void
.end method

.method protected setUnavailableVisible(Z)V
    .locals 0

    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showCount(ILandroid/database/Cursor;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/list/EmergencyContactListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
