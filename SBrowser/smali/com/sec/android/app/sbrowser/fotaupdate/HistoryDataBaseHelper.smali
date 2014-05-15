.class public Lcom/sec/android/app/sbrowser/fotaupdate/HistoryDataBaseHelper;
.super Lcom/sec/android/app/sbrowser/fotaupdate/HistorySQLiteOpenHelper;
.source "HistoryDataBaseHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/sec/android/app/sbrowser/fotaupdate/HistorySQLiteOpenHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
