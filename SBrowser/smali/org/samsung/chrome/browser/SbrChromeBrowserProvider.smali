.class public Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;
.super Lorg/chromium/chrome/browser/ChromeBrowserProvider;
.source "SbrChromeBrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$FinDoQueryParser;
    }
.end annotation


# static fields
.field private static final ADD_OPERATOR_BOOKMARKS_KEY:Ljava/lang/String; = "add_operator_bookmarks"

.field private static final API_AUTHORITY_SUFFIX:Ljava/lang/String; = ".browser"

.field private static final AUTHORITY_SUFFIX:Ljava/lang/String; = ".ChromeBrowserProvider"

.field private static final AUTHORITY_SUFFIX_CSC:Ljava/lang/String; = ".operatorbookmarks"

.field private static final BOOKMARKS_PATH:Ljava/lang/String; = "bookmarks"

.field private static final BOOKMARKS_PATH_CSC:Ljava/lang/String; = "bookmarks"

.field public static final BOOKMARKS_URI:Landroid/net/Uri; = null

.field public static final BOOKMARKS_URI_CSC:Landroid/net/Uri; = null

.field private static final BOOKMARK_EDITABLE:Ljava/lang/String; = "editable"

.field public static final BOOKMARK_IS_EDITABLE:Ljava/lang/String; = "isEditable"

.field static final CLIENT_API_GET_URL_THUMBNAIL:Ljava/lang/String; = "GET_URL_THUMBNAIL"

.field static final CLIENT_API_IS_VALID_URL:Ljava/lang/String; = "IS_VALID_URL"

.field static final CLIENT_API_RESULT_KEY:Ljava/lang/String; = "result"

.field private static final COMBINED_PATH:Ljava/lang/String; = "combined"

.field private static final FINDO_PATH:Ljava/lang/String; = "search_suggest_regex_query"

.field private static final HISTORY_PATH:Ljava/lang/String; = "history"

.field public static final HISTORY_URI:Landroid/net/Uri; = null

.field static final INVALID_BOOKMARK_ID:J = -0x1L

.field private static final MAX_CONCURRENT_EXECUTORS:I = 0x1

.field private static final MY_DEVICE_BOOKMARK_FOLDER_ID_KEY:Ljava/lang/String; = "my_device_bookmark_folder_id"

.field public static OLD_BOOKMARKS:Ljava/lang/String; = null

.field public static OPERATOR_BOOKMARK_DB:Ljava/lang/String; = null

.field static final OPERATOR_BOOKMARK_EDITABLE:Ljava/lang/String; = "editable"

.field static final OPERATOR_BOOKMARK_IS_FOLDER:Ljava/lang/String; = "isFolder"

.field static final OPERATOR_BOOKMARK_PARENT_ID:Ljava/lang/String; = "parentId"

.field public static final REFRESH_OLD_DATA:Ljava/lang/String; = "refresh_old_data"

.field private static final SUGGEST_PROJECTION_BOOKMARK_FINDO:[Ljava/lang/String; = null

.field private static final SUGGEST_PROJECTION_FINDO:[Ljava/lang/String; = null

.field private static final SUGGEST_PROJECTION_OPERATOR_BOOKMARK:[Ljava/lang/String; = null

.field private static final SUGGEST_PROJECTION_OPERATOR_BOOKMARK_ID:[Ljava/lang/String; = null

.field private static final SUGGEST_PROJECTION_SFINDER:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "sbChromeBrowserProvider"

.field private static final URI_MATCH_BOOKMARKS_CSC:I = 0xd

.field private static final URL_MATCH_BOOKMARK_HISTORY_FINDO_ID:I

.field private static mIsOperatorBookmarksExists:J

.field private static mIsRefreshRequired:J

.field private static mMyDeviceBookmarkFolderId:J


# instance fields
.field private isDeleteOperatorBookmark:Z

.field private isSyncAdapter:Z

.field private mBookmarkTypeSelection:Ljava/lang/String;

.field private mNativeSbrChromeBrowserProvider:I

.field private mOpenHelper:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;

.field private final mSbrLoadNativeLock:Ljava/lang/Object;

.field private mUriMatcher:Landroid/content/UriMatcher;

.field private operatorBookmarkSelection:Ljava/lang/String;

.field private readable_db:Landroid/database/sqlite/SQLiteDatabase;

.field private writable_db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "com.sec.android.app.sbrowser.ChromeBrowserProvider"

    const-string v1, "bookmarks"

    invoke-static {v0, v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v0, "com.sec.android.app.sbrowser.operatorbookmarks"

    const-string v1, "bookmarks"

    invoke-static {v0, v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->BOOKMARKS_URI_CSC:Landroid/net/Uri;

    const-string v0, "com.sec.android.app.sbrowser.browser"

    const-string v1, "history"

    invoke-static {v0, v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->HISTORY_URI:Landroid/net/Uri;

    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mMyDeviceBookmarkFolderId:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mIsOperatorBookmarksExists:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mIsRefreshRequired:J

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "url"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "bookmark"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "favicon"

    aput-object v2, v0, v1

    sput-object v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->SUGGEST_PROJECTION_FINDO:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ID AS _id"

    aput-object v1, v0, v3

    const-string v1, "TITLE AS title"

    aput-object v1, v0, v4

    const-string v1, "URL AS url"

    aput-object v1, v0, v5

    const-string v1, "MODIFIED AS date"

    aput-object v1, v0, v6

    const-string v1, "(CASE WHEN folder IS 0 THEN 1 ELSE 1 END) as bookmark"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FAVICON AS favicon"

    aput-object v2, v0, v1

    sput-object v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->SUGGEST_PROJECTION_BOOKMARK_FINDO:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "url"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "bookmark"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SUGGEST_COLUMN_GROUP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "intent_extra_target_type"

    aput-object v2, v0, v1

    sput-object v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->SUGGEST_PROJECTION_SFINDER:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "TITLE AS title"

    aput-object v1, v0, v3

    const-string v1, "URL AS url"

    aput-object v1, v0, v4

    sput-object v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->SUGGEST_PROJECTION_OPERATOR_BOOKMARK:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "BOOKMARK_ID"

    aput-object v1, v0, v3

    const-string v1, "_ID"

    aput-object v1, v0, v4

    sput-object v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->SUGGEST_PROJECTION_OPERATOR_BOOKMARK_ID:[Ljava/lang/String;

    const-string v0, "operatorbookmarks.db"

    sput-object v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->OPERATOR_BOOKMARK_DB:Ljava/lang/String;

    const-string v0, "Bookmarks"

    sput-object v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->OLD_BOOKMARKS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mSbrLoadNativeLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isSyncAdapter:Z

    const-string v0, " bookmark_type=1 "

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mBookmarkTypeSelection:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isDeleteOperatorBookmark:Z

    const-string v0, "bookmark_type=1 "

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->operatorBookmarkSelection:Ljava/lang/String;

    iput-object v2, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->readable_db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v2, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->writable_db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method static synthetic access$000(Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->addCarrierBookmarks(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    sget-wide v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mIsOperatorBookmarksExists:J

    return-wide v0
.end method

.method static synthetic access$102(J)J
    .locals 0

    sput-wide p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mIsOperatorBookmarksExists:J

    return-wide p0
.end method

.method static synthetic access$200(Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;)V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureNativeChromeDestroyedOnUIThread()V

    return-void
.end method

.method private addCarrierBookmarks(Landroid/content/Context;)V
    .locals 27

    const-string v24, "sbChromeBrowserProvider"

    const-string v25, "addCarrierBookmarks called 1."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    invoke-direct/range {v23 .. v23}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;-><init>()V

    const-wide/16 v3, 0x1

    if-eqz v23, :cond_0

    const-string v24, "sbChromeBrowserProvider"

    const-string v25, "addCarrierBookmarks called."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "Settings.Browser."

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string v24, "Bookmark"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    if-eqz v14, :cond_4

    const/16 v21, 0x0

    :goto_0
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isDeleteOperatorBookmark:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isDeleteOperatorBookmark:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    const-string v24, "BookmarkName"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    const-string v24, "URL"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    const-string v24, "Editable"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-eqz v12, :cond_2

    if-eqz v10, :cond_2

    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    const-string v24, "_id"

    const-wide/16 v25, 0x1

    add-long v5, v3, v25

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v24, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "url"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_3

    const-string v24, "no"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "editable"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->addOperatorBookmarks(Landroid/content/ContentValues;)J

    move-wide v3, v5

    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v24, "editable"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_4
    const-string v24, "eManual"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isDeleteOperatorBookmark:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isDeleteOperatorBookmark:Z

    goto/16 :goto_1

    :cond_5
    const-string v24, "URL"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f0c02da

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    const-string v24, "_id"

    const-wide/16 v25, 0x1

    add-long v5, v3, v25

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v24, "title"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "editable"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_Web_EnableDeleteAllBookmarks"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    const-string v24, "EDITABLE"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->addOperatorBookmarks(Landroid/content/ContentValues;)J

    move-wide v3, v5

    goto/16 :goto_1
.end method

.method private addOperatorBookmarks(Landroid/content/ContentValues;)J
    .locals 13

    const/4 v12, 0x0

    const/4 v10, 0x0

    const-string v8, "sbChromeBrowserProvider"

    const-string v9, "addOperatorBookmarks called. "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    const-wide/16 v4, -0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v12, p1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->checkBookmarkForDuplicate(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_0

    move-wide v6, v4

    :goto_0
    return-wide v6

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "url"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    move-wide v6, v4

    goto :goto_0

    :cond_1
    const-string v8, "URL"

    const-string v9, "url"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "SURL"

    const-string v9, "url"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/SURL;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "TITLE"

    const-string v9, "title"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "EDITABLE"

    const-string v9, "editable"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "FOLDER"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "DIRTY"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "bookmark_type"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "editable"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    const-string v8, "DEVICE_ID"

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getUniqueDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "DEVICE_NAME"

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getWritableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_3

    move-wide v6, v4

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v12, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    move-wide v6, v4

    goto/16 :goto_0
.end method

.method static argKey(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private checkBookmarkForDuplicate(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    const-string v2, "URL"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "URL"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " URL=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getURLValueFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-string v2, "url"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "url"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " url=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getURLValueFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private ensureNativeChromeDestroyedOnUIThread()V
    .locals 1

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isNativeSideInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mNativeSbrChromeBrowserProvider:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mNativeSbrChromeBrowserProvider:I

    :cond_0
    return-void
.end method

.method private ensureNativeSbrChromeLoaded()Z
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureUriMatcherInitialized()V

    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mSbrLoadNativeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mNativeSbrChromeBrowserProvider:I

    if-eqz v3, :cond_0

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$2;

    invoke-direct {v1, p0, v0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$2;-><init>(Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized ensureUriMatcherInitialized()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ChromeBrowserProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "search_suggest_regex_query"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".operatorbookmarks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "bookmarks"

    const/16 v3, 0xd

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getBookmarkHistorySuggestionsFinDo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 22

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    const/16 v20, 0x0

    const/4 v11, 0x0

    const-string v3, "stime"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v3, "etime"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v3, "("

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_5

    if-eqz v20, :cond_5

    if-eqz v11, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, " date >= ?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, " AND date <= ?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    :cond_0
    :goto_0
    const-string v3, ")"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".browser"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "bookmarks"

    invoke-static {v3, v5}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-nez p2, :cond_9

    if-nez v20, :cond_9

    if-nez v11, :cond_9

    sget-object v5, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->SUGGEST_PROJECTION_FINDO:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    :goto_1
    sget-object v3, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->SUGGEST_PROJECTION_BOOKMARK_FINDO:[Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->readBookmarkDB([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/16 v19, 0x0

    if-nez v10, :cond_1

    if-eqz v12, :cond_2

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mergeCursor(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v19

    :cond_2
    const/16 v18, 0x0

    new-instance v18, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    if-eqz v19, :cond_3

    const-string v3, "sbChromeBrowserProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBookmarkHistorySuggestionsFinDo returns - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v18, :cond_4

    new-instance v18, Landroid/database/MatrixCursor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_4
    return-object v18

    :cond_5
    if-eqz p2, :cond_0

    const/4 v3, 0x0

    aget-object v15, p2, v3

    new-instance v14, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$FinDoQueryParser;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$FinDoQueryParser;-><init>(Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;)V

    invoke-virtual {v14, v15}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$FinDoQueryParser;->regexParser(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x0

    iget-object v3, v14, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$FinDoQueryParser;->resultList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v16, v3, 0x2

    const-string v3, "("

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v17, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, " title LIKE ?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    const/4 v13, 0x1

    :goto_2
    add-int/lit8 v3, v16, 0x1

    if-ge v13, v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v5, v13, 0x2

    aget-object v5, v17, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v5, v13, 0x2

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v17, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " title LIKE ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    const-string v3, ")  OR "

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v17, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, " url LIKE ?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    const/4 v13, 0x1

    :goto_3
    add-int/lit8 v3, v16, 0x1

    if-ge v13, v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v5, v13, 0x2

    aget-object v5, v17, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v5, v13, 0x2

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v17, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " url LIKE ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_7
    const-string v3, ")"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v20, :cond_8

    if-eqz v11, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, " AND date >= ?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, " AND date <= ?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND bookmark=0 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v5, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->SUGGEST_PROJECTION_FINDO:[Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_1
.end method

.method public static getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10

    const-string v8, "android-google"

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'search_client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-object v8

    :cond_3
    :try_start_1
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ms-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getCombinedUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".browser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "combined"

    invoke-static {v0, v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getHistoryUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".browser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "history"

    invoke-static {v0, v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getURLThumbnail(Ljava/lang/String;)[B
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mNativeSbrChromeBrowserProvider:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->nativeGetURLThumbnail(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getURLValueFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 12

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getReadableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v10, -0x1

    :cond_0
    :goto_0
    return-wide v10

    :cond_1
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_ID"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "URL"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "TITLE"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "FAVICON"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "CREATED"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "bookmark_type"

    aput-object v3, v2, v1

    const/4 v8, 0x0

    const-wide/16 v10, -0x1

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "bookmark_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const-string v1, "_ID"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    int-to-long v10, v1

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_2
    throw v1

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private getValuesFromURI(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "caller_is_syncadapter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isSyncAdapter:Z

    :cond_0
    return-void
.end method

.method private static isInUiThread()Z
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t run in the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "sbChromeBrowserProvider"

    const-string v1, "SbrChromeBrowserProvider methods cannot be called from the UI thread."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOldOperatorBookmarkDBExists()Z
    .locals 3

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->OPERATOR_BOOKMARK_DB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidUrl(Ljava/lang/String;)J
    .locals 2

    iget v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mNativeSbrChromeBrowserProvider:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->nativeIsValidURL(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private mergeCursor(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12

    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v8, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->SUGGEST_PROJECTION_SFINDER:[Ljava/lang/String;

    invoke-direct {v6, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c01d3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c004c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_2

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200d8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v7, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x4

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    aput-object v3, v8, v9

    const/4 v9, 0x6

    aput-object v2, v8, v9

    const/4 v9, 0x7

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x4

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x5

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    aput-object v2, v8, v9

    const/4 v9, 0x7

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    if-eqz p2, :cond_3

    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x3

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x4

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x5

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    aput-object v5, v8, v9

    const/4 v9, 0x7

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v6
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeGetURLThumbnail(ILjava/lang/String;)[B
.end method

.method private native nativeInit()I
.end method

.method private native nativeIsValidURL(ILjava/lang/String;)J
.end method

.method private onHistoryDataChanged()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getHistoryUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private queryOperatorBookmarks([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getReadableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez p1, :cond_0

    sget-object v2, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->SUGGEST_PROJECTION_OPERATOR_BOOKMARK:[Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    const/4 v8, 0x0

    :goto_1
    return-object v8

    :cond_0
    move-object v2, p1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->operatorBookmarkSelection:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->operatorBookmarkSelection:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1
.end method

.method private readBookmarkDB([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getReadableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v5

    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v2, "BOOKMARKS"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    new-instance v8, Landroid/database/MatrixCursor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v8, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_1
    move-object v5, v8

    goto :goto_0
.end method

.method private removeAllOperatorBookmarks()I
    .locals 5

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getWritableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->operatorBookmarkSelection:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private removeOperatorBookmark(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getWritableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->operatorBookmarkSelection:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isInUiThread()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureNativeSbrChromeLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IS_VALID_URL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "result"

    invoke-static {v3}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isValidUrl(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_4
    const-string v1, "GET_URL_THUMBNAIL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "result"

    invoke-static {v3}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getURLThumbnail(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isInUiThread()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureNativeChromeLoaded()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureNativeSbrChromeLoaded()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isDeleteOperatorBookmark:Z

    if-nez p2, :cond_3

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->removeAllOperatorBookmarks()I

    move-result v1

    :goto_1
    iput-boolean v2, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isDeleteOperatorBookmark:Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p3}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->removeOperatorBookmark(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method protected ensureNativeSbrChromeLoadedOnUIThread()Z
    .locals 1

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isSbrNativeSideInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->nativeInit()I

    move-result v0

    iput v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mNativeSbrChromeBrowserProvider:I

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isSbrNativeSideInitialized()Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$3;

    invoke-direct {v0, p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$3;-><init>(Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->finalize()V

    throw v0
.end method

.method getReadableDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->readable_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mOpenHelper:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->readable_db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->readable_db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureUriMatcherInitialized()V

    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWritableDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->writable_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mOpenHelper:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->writable_db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->writable_db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isInUiThread()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureNativeChromeLoaded()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureNativeSbrChromeLoaded()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :pswitch_0
    const-string v4, "sbChromeBrowserProvider"

    const-string v5, "ADD CSC BOOKMARKS from CSC APP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->addOperatorBookmarks(Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method protected isOldBookmarksExists()Z
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/app_chrome/Default/Bookmarks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isSbrNativeSideInitialized()Z
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mNativeSbrChromeBrowserProvider:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 7

    const-wide/16 v5, -0x1

    const-string v3, "sbChromeBrowserProvider"

    const-string v4, "onCreate called."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->onCreate()Z

    new-instance v3, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mOpenHelper:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "my_device_bookmark_folder_id"

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mMyDeviceBookmarkFolderId:J

    const-string v3, "add_operator_bookmarks"

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mIsOperatorBookmarksExists:J

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    sget-wide v3, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mIsOperatorBookmarksExists:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isOldOperatorBookmarkDBExists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$1;

    invoke-direct {v3, p0, v2}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$1;-><init>(Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;Landroid/content/SharedPreferences;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;->isDataBackupRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "sbChromeBrowserProvider"

    const-string v4, "copy  old data : "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;->historybackup()V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;->bookmarkBackup()V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/fotaupdate/BackUpHistoryAndBookmark;->removeOldData()V

    const-wide/16 v3, 0x1

    sput-wide v3, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mIsRefreshRequired:J

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "refresh_old_data"

    sget-wide v5, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mIsRefreshRequired:J

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "sbChromeBrowserProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Data Backup Failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isInUiThread()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureNativeChromeLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureNativeSbrChromeLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    invoke-super/range {p0 .. p5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p3, p4, p5, p1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getBookmarkHistorySuggestionsFinDo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->queryOperatorBookmarks([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->isInUiThread()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureNativeChromeLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureNativeSbrChromeLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
