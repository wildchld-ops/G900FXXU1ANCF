.class public Lcom/samsung/contacts/list/EmergencyAndContactsLoader;
.super Lcom/android/contacts/common/list/ProfileAndContactsLoader;
.source "EmergencyAndContactsLoader.java"


# instance fields
.field public mContactsCount:I

.field public mEmergencyContactsCount:I

.field public mFavoritesCount:I

.field private mForceLoadFavorite:Z

.field public mFrequentsCount:I

.field private mLoadEmergency:Z

.field private mProjection:[Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mEmergencyContactsCount:I

    iput v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mFavoritesCount:I

    iput v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mFrequentsCount:I

    iput v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mContactsCount:I

    iput-boolean p2, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mForceLoadFavorite:Z

    return-void
.end method

.method private loadEmergencyContacts()Landroid/database/MatrixCursor;
    .locals 10

    const-string v0, "content://com.android.contacts/emergency"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "default_emergency = 3"

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v8, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mProjection:[Ljava/lang/String;

    array-length v0, v0

    new-array v9, v0, [Ljava/lang/Object;

    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    :goto_1
    array-length v0, v9

    if-ge v7, v0, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mEmergencyContactsCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v8
.end method

.method private loadFavoriteContacts()Landroid/database/MatrixCursor;
    .locals 11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "starred!=0 AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "has_phone_number=1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mProjection:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v8, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mProjection:[Ljava/lang/String;

    array-length v0, v0

    new-array v9, v0, [Ljava/lang/Object;

    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    :goto_1
    array-length v0, v9

    if-ge v7, v0, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mFavoritesCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v8
.end method

.method private loadFrequentContacts()Landroid/database/MatrixCursor;
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_FREQUENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mSortOrder:Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v8, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mProjection:[Ljava/lang/String;

    array-length v0, v0

    new-array v9, v0, [Ljava/lang/Object;

    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    :goto_1
    array-length v0, v9

    if-ge v7, v0, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mFrequentsCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v8
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mEmergencyContactsCount:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mLoadEmergency:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->loadEmergencyContacts()Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mForceLoadFavorite:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mEmergencyContactsCount:I

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->loadFavoriteContacts()Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mFavoritesCount:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->loadFrequentContacts()Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mContactsCount:I

    new-instance v3, Lcom/samsung/contacts/list/EmergencyAndContactsLoader$1;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/Cursor;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/Cursor;

    invoke-direct {v3, p0, v2, v0}, Lcom/samsung/contacts/list/EmergencyAndContactsLoader$1;-><init>(Lcom/samsung/contacts/list/EmergencyAndContactsLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-object v3
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoadEmergency(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mLoadEmergency:Z

    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setProjection([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mProjection:[Ljava/lang/String;

    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setSortOrder(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mSortOrder:Ljava/lang/String;

    return-void
.end method
