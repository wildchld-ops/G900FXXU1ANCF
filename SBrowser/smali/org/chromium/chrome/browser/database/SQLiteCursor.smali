.class public Lorg/chromium/chrome/browser/database/SQLiteCursor;
.super Landroid/database/AbstractCursor;
.source "SQLiteCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteCursor"


# instance fields
.field private final mColumnTypeLock:Ljava/lang/Object;

.field private mColumnTypes:[I

.field private mCount:I

.field private final mGetBlobLock:Ljava/lang/Object;

.field private final mMoveLock:Ljava/lang/Object;

.field private mNativeSQLiteCursor:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mColumnTypeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mMoveLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mGetBlobLock:Ljava/lang/Object;

    iput p1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    return-void
.end method

.method private static create(I)Lorg/chromium/chrome/browser/database/SQLiteCursor;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/database/SQLiteCursor;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;-><init>(I)V

    return-object v0
.end method

.method private fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->putValue(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/database/CursorWindow;->freeLastRow()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getColumnType(I)I
    .locals 5

    iget-object v3, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mColumnTypeLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mColumnTypes:[I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getColumnCount()I

    move-result v0

    new-array v2, v0, [I

    iput-object v2, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mColumnTypes:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mColumnTypes:[I

    iget v4, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    invoke-direct {p0, v4, v1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetColumnType(II)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mColumnTypes:[I

    aget v2, v2, p1

    return v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeGetBlob(II)[B
.end method

.method private native nativeGetColumnNames(I)[Ljava/lang/String;
.end method

.method private native nativeGetColumnType(II)I
.end method

.method private native nativeGetCount(I)I
.end method

.method private native nativeGetDouble(II)D
.end method

.method private native nativeGetInt(II)I
.end method

.method private native nativeGetLong(II)J
.end method

.method private native nativeGetString(II)Ljava/lang/String;
.end method

.method private native nativeIsNull(II)Z
.end method

.method private native nativeMoveTo(II)I
.end method

.method private putValue(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1, p3, p4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, p2, [B

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    if-lez v0, :cond_3

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p1, p2, p3, p4}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v0

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p3, p4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    return-void
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 6

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getCount()I

    move-result v4

    if-le p1, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    :try_start_0
    iget v3, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mPos:I

    add-int/lit8 v4, p1, -0x1

    iput v4, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mPos:I

    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getColumnCount()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getColumnType(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_2
    if-eqz v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget v5, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mPos:I

    invoke-direct {p0, p2, v4, v5, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mPos:I

    invoke-direct {p0, p2, v4, v5, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v1

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getBlob(I)[B

    move-result-object v4

    iget v5, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mPos:I

    invoke-direct {p0, p2, v4, v5, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v1

    goto :goto_2

    :sswitch_3
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mPos:I

    invoke-direct {p0, p2, v4, v5, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v1

    goto :goto_2

    :sswitch_4
    const/4 v4, 0x0

    iget v5, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mPos:I

    invoke-direct {p0, p2, v4, v5, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v1

    goto :goto_2

    :cond_3
    iput v3, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x0 -> :sswitch_4
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
        0x7d4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected finalize()V
    .locals 2

    invoke-super {p0}, Landroid/database/AbstractCursor;->finalize()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SQLiteCursor"

    const-string v1, "Cursor hasn\'t been closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->close()V

    :cond_0
    return-void
.end method

.method public getBlob(I)[B
    .locals 2

    iget-object v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mGetBlobLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetBlob(II)[B

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetColumnNames(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 3

    iget-object v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mMoveLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mCount:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetCount(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mCount:I

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mCount:I

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDouble(I)D
    .locals 2

    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2

    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetDouble(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetInt(II)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetInt(II)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeIsNull(II)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 2

    iget-object v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mMoveLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:I

    invoke-direct {p0, v0, p2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeMoveTo(II)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public supportsUpdates()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
