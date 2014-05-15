.class public abstract Lcom/samsung/mms/location/PlaceDBAdapter;
.super Ljava/lang/Object;
.source "PlaceDBAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlaceDBAdapter"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected databaseHelper:Lcom/samsung/mms/location/PlacesDatabaseHelper;

.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field protected sqlTableCount:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p1, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->context:Landroid/content/Context;

    new-instance v0, Lcom/samsung/mms/location/PlacesDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/samsung/mms/location/PlacesDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->databaseHelper:Lcom/samsung/mms/location/PlacesDatabaseHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->sqlTableCount:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->sqlTableCount:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->databaseHelper:Lcom/samsung/mms/location/PlacesDatabaseHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->databaseHelper:Lcom/samsung/mms/location/PlacesDatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/mms/location/PlacesDatabaseHelper;->close()V

    :cond_1
    return-void
.end method

.method public deletePlace(J)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findPlace(Lcom/nbi/map/data/Place;)J
    .locals 35

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v19

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v25

    const-wide/high16 v2, 0x3ff0

    sub-double v21, v19, v2

    const-wide/high16 v2, 0x3ff0

    add-double v23, v19, v2

    const-wide/high16 v2, 0x3ff0

    sub-double v27, v25, v2

    const-wide/high16 v2, 0x3ff0

    add-double v29, v25, v2

    const/4 v11, 0x0

    const-wide/16 v33, -0x1

    const-wide/16 v31, -0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "latitude"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "longitude"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "place_bytes"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "( latitude BETWEEN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "( longitude BETWEEN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v27

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v29

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const/4 v14, 0x0

    new-instance v18, Lcom/samsung/mms/location/PlaceFormatter;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/mms/location/PlaceFormatter;->getAddressLine1()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/mms/location/PlaceFormatter;->getAddressLine2()Ljava/lang/String;

    move-result-object v17

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    new-instance v14, Lcom/nbi/map/data/Place;

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/nbi/map/data/Place;-><init>([B)V

    new-instance v15, Lcom/samsung/mms/location/PlaceFormatter;

    invoke-direct {v15, v14}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    invoke-virtual {v15}, Lcom/samsung/mms/location/PlaceFormatter;->getAddressLine1()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15}, Lcom/samsung/mms/location/PlaceFormatter;->getAddressLine2()Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v2

    invoke-virtual {v14}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v2

    invoke-virtual {v14}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    move-wide/from16 v31, v33

    :cond_1
    :goto_0
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v11, 0x0

    return-wide v31

    :cond_3
    :try_start_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    move-wide/from16 v31, v33

    goto :goto_0

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v11, 0x0

    throw v2
.end method

.method public getAllPlaces()Ljava/util/Vector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/nbi/map/data/Place;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "latitude"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "longitude"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "place_bytes"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getOrdering()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v10, Ljava/util/Vector;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/Vector;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/nbi/map/data/Place;

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Place;-><init>([B)V

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    move-object v9, v10

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v8, 0x0

    return-object v9

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v8, 0x0

    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v10

    goto :goto_0
.end method

.method protected abstract getOrdering()Ljava/lang/String;
.end method

.method public getPlace(J)Lcom/nbi/map/data/Place;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "latitude"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "longitude"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "place_bytes"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v11, Lcom/nbi/map/data/Place;

    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/nbi/map/data/Place;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v10, 0x0

    return-object v11

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v10, 0x0

    throw v0
.end method

.method protected abstract getTableName()Ljava/lang/String;
.end method

.method public getTableRowCount()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->sqlTableCount:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->sqlTableCount:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected abstract getTableRowLimit()J
.end method

.method public insertPlace(Lcom/nbi/map/data/Place;)J
    .locals 13

    const-wide/16 v8, -0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableRowCount()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableRowLimit()J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-ltz v10, :cond_1

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->onLimitReached()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-wide v8

    :cond_1
    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Address"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p1, v12}, Lcom/nbi/map/data/Place;->setName(Ljava/lang/String;)V

    :cond_2
    new-instance v10, Lcom/samsung/mms/location/PlaceFormatter;

    invoke-direct {v10, p1}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/mms/location/PlaceFormatter;->getFormattedPlaceArray(Z)[Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v3

    const-string v8, "latitude"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v8, "longitude"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v8, "place_bytes"

    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v8, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v8, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v12, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    goto :goto_0
.end method

.method protected onLimitReached()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public open()Lcom/samsung/mms/location/PlaceDBAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->databaseHelper:Lcom/samsung/mms/location/PlacesDatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/mms/location/PlacesDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->sqlTableCount:Landroid/database/sqlite/SQLiteStatement;

    :cond_1
    return-object p0
.end method

.method public truncate(D)D
    .locals 8

    const-wide v6, 0x412e848000000000L

    const-wide v2, 0x412e848000000000L

    mul-double v4, p1, v6

    double-to-long v0, v4

    long-to-double v4, v0

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public updatePlace(JLcom/nbi/map/data/Place;)Z
    .locals 9

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p3}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v1

    invoke-virtual {p3}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/samsung/mms/location/PlaceDBAdapter;->truncate(D)D

    move-result-wide v3

    const-string v5, "latitude"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v5, "longitude"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v5, "place_bytes"

    invoke-virtual {p3}, Lcom/nbi/map/data/Place;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v5, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceDBAdapter;->getTableName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
