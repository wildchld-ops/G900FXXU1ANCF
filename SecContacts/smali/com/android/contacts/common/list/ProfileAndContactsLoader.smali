.class public Lcom/android/contacts/common/list/ProfileAndContactsLoader;
.super Landroid/content/CursorLoader;
.source "ProfileAndContactsLoader.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mLoadProfile:Z

.field private mProjection:[Ljava/lang/String;

.field private mSelectionArgsForProfile:[Ljava/lang/String;

.field private mSelectionForProfile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ProfileAndContactsLoader"

    sput-object v0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mSelectionForProfile:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mSelectionArgsForProfile:[Ljava/lang/String;

    return-void
.end method

.method private loadProfile()Landroid/database/MatrixCursor;
    .locals 10

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mSelectionForProfile:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mSelectionArgsForProfile:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    new-instance v8, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

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
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v8
.end method


# virtual methods
.method public cancelLoad()Z
    .locals 2

    sget-object v0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->TAG:Ljava/lang/String;

    const-string v1, "cancelLoad"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/content/CursorLoader;->cancelLoad()Z

    move-result v0

    return v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mLoadProfile:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadProfile()Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/Cursor;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/Cursor;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;-><init>(Lcom/android/contacts/common/list/ProfileAndContactsLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-object v3
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onStopLoading()V
    .locals 2

    sget-object v0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->TAG:Ljava/lang/String;

    const-string v1, "onStopLoading"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLoadProfile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mLoadProfile:Z

    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    return-void
.end method

.method public setSelectionArgsForProfile([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mSelectionArgsForProfile:[Ljava/lang/String;

    return-void
.end method

.method public setSelectionForProfile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mSelectionForProfile:Ljava/lang/String;

    return-void
.end method
