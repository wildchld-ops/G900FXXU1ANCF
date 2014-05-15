.class public Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;
.super Landroid/content/ContentProvider;
.source "QuickAccessPinnedProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.app.sbrowser.quickaccesspinned"

.field public static final REORDER:Landroid/net/Uri; = null

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final pintab:I = 0x1

.field private static final pintab_ID:I = 0x2

.field static final urlvalue:Ljava/lang/String; = "content://com.sec.android.app.sbrowser.quickaccesspinned/pintab"


# instance fields
.field private final DATABASE_NAME:Ljava/lang/String;

.field private final DATABASE_VERSION:I

.field private final ROW_ADDED:I

.field private final ROW_NOT_ADDED:I

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private itemcount:I

.field private mContext:Landroid/content/Context;

.field private mpinTabDBHelper:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;

.field private tempPicture:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v0, "content://com.sec.android.app.sbrowser.quickaccesspinned/pintab"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.sbrowser.quickaccesspinned/pintab/reorder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->REORDER:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.sbrowser.quickaccesspinned"

    const-string v2, "pintabs"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.sbrowser.quickaccesspinned"

    const-string v2, "pintabs/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->mContext:Landroid/content/Context;

    const-string v0, "pintab.db"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->DATABASE_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->DATABASE_VERSION:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->mpinTabDBHelper:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->tempPicture:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput v2, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->itemcount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->ROW_NOT_ADDED:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->ROW_ADDED:I

    return-void
.end method

.method private MaxCountItem()I
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*) AS count"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->tempPicture:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->tempPicture:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->itemcount:I

    return p1
.end method

.method static synthetic access$208(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->itemcount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->itemcount:I

    return v0
.end method

.method static synthetic access$210(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->itemcount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->itemcount:I

    return v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pintab"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->MaxCountItem()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->itemcount:I

    const-string v4, "position"

    iget v5, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->itemcount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->itemcount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "touchicon"

    new-instance v5, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->tempPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "parent"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "dominant"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "pintab"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v3, p2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->itemcount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->itemcount:I

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_1

    sget-object v4, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;-><init>(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->mpinTabDBHelper:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->mpinTabDBHelper:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->tempPicture:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pintab"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pintab"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reorder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return v0
.end method
