.class public Lcom/samsung/mms/location/RecentsDBAdapter;
.super Lcom/samsung/mms/location/PlaceDBAdapter;
.source "RecentsDBAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/mms/location/PlaceDBAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected findOldestItem()J
    .locals 13

    const/4 v12, 0x0

    const/4 v3, 0x0

    const-wide/16 v10, -0x1

    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/samsung/mms/location/RecentsDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v12

    const/4 v4, 0x1

    const-string v5, "latitude"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "longitude"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "place_bytes"

    aput-object v5, v2, v4

    const-string v7, "timestamp asc"

    const-string v8, "1"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v10
.end method

.method protected getOrdering()Ljava/lang/String;
    .locals 1

    const-string v0, "timestamp desc"

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "recents"

    return-object v0
.end method

.method protected getTableRowLimit()J
    .locals 2

    const-wide/16 v0, 0x14

    return-wide v0
.end method

.method public insertPlace(Lcom/nbi/map/data/Place;)J
    .locals 10

    const-wide/16 v6, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/mms/location/RecentsDBAdapter;->findPlace(Lcom/nbi/map/data/Place;)J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/samsung/mms/location/RecentsDBAdapter;->getTableRowCount()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/samsung/mms/location/RecentsDBAdapter;->getTableRowLimit()J

    move-result-wide v8

    cmp-long v8, v2, v8

    if-ltz v8, :cond_1

    invoke-virtual {p0}, Lcom/samsung/mms/location/RecentsDBAdapter;->findOldestItem()J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-ltz v8, :cond_0

    invoke-super {p0, v0, v1, p1}, Lcom/samsung/mms/location/PlaceDBAdapter;->updatePlace(JLcom/nbi/map/data/Place;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v6

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/mms/location/PlaceDBAdapter;->insertPlace(Lcom/nbi/map/data/Place;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-super {p0, v4, v5, p1}, Lcom/samsung/mms/location/PlaceDBAdapter;->updatePlace(JLcom/nbi/map/data/Place;)Z

    move-wide v0, v4

    goto :goto_0
.end method
