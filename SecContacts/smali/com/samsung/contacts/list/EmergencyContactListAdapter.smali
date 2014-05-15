.class public Lcom/samsung/contacts/list/EmergencyContactListAdapter;
.super Lcom/android/contacts/common/list/DefaultContactListAdapter;
.source "EmergencyContactListAdapter.java"


# instance fields
.field private mEmergencyContactsCount:I

.field private mFavoritesCount:I

.field private mFrequentsCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mEmergencyContactsCount:I

    iput v0, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mFavoritesCount:I

    iput v0, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mFrequentsCount:I

    return-void
.end method

.method private configureProjection(Landroid/content/CursorLoader;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/CursorLoader;->getProjection()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "link_count"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "link_count"

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v2, "has_phone_number"

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/CursorLoader;->getSelection()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/CursorLoader;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "has_phone_number=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    const-string v1, " AND has_phone_number=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    iget v0, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mFrequentsCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0029

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mFrequentsCount:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->setCustomIndexer(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mFavoritesCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0e002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mFavoritesCount:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->setCustomIndexer(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mEmergencyContactsCount:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0e039f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mEmergencyContactsCount:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->setCustomIndexer(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->setLoadEmergency(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    invoke-direct {p0, p1}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->configureProjection(Landroid/content/CursorLoader;)V

    invoke-direct {p0, p1}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->configureSelection(Landroid/content/CursorLoader;)V

    return-void

    :cond_1
    instance-of v0, p1, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->setLoadEmergency(Z)V

    goto :goto_0
.end method

.method public getEmergencyContactId(I)J
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method protected getProfilePostion()I
    .locals 3

    iget v1, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mEmergencyContactsCount:I

    iget v2, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mFavoritesCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mFrequentsCount:I

    add-int v0, v1, v2

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isEmergencyContact(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mEmergencyContactsCount:I

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCustomIndexer(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/list/ContactsSectionIndexer;->setCustomHeader(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setEmergencyContactsCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mEmergencyContactsCount:I

    return-void
.end method

.method public setFavoritesCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mFavoritesCount:I

    return-void
.end method

.method public setFrequentsCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->mFrequentsCount:I

    return-void
.end method
