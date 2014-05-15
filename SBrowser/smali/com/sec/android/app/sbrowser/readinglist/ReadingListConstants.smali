.class public Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants;
.super Ljava/lang/Object;
.source "ReadingListConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$Scrap;,
        Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;
    }
.end annotation


# static fields
.field public static SQL_CREATE_TABLE_READINGLIST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS READINGLIST(_id INTEGER PRIMARY KEY AUTOINCREMENT,path TEXT NOT NULL,dir_path TEXT NOT NULL,title TEXT,description TEXT,favicon BLOB,url TEXT NOT NULL,account_name TEXT,account_type TEXT,device_id TEXT,device_name TEXT,created INTEGER DEFAULT 0,modified INTEGER DEFAULT 0,is_deleted INTEGER DEFAULT 0,is_dirty INTEGER DEFAULT 0,is_read INTEGER DEFAULT 0,image_style INTEGER DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT,isReadingItem INTEGER DEFAULT 0);"

    sput-object v0, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants;->SQL_CREATE_TABLE_READINGLIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
