.class public Lorg/chromium/chrome/browser/ChromeBrowserProvider;
.super Landroid/content/ContentProvider;
.source "ChromeBrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;,
        Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;,
        Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;,
        Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;
    }
.end annotation


# static fields
.field private static final API_AUTHORITY_SUFFIX:Ljava/lang/String; = ".browser"

.field private static final AUTHORITY_SUFFIX:Ljava/lang/String; = ".ChromeBrowserProvider"

.field private static final BOOKMARKS_PATH:Ljava/lang/String; = "bookmarks"

.field private static final BOOKMARKS_PATH_EX:Ljava/lang/String; = "bookmarks_ex"

.field private static final BOOKMARK_DEFAULT_PROJECTION:[Ljava/lang/String; = null

.field private static final BOOKMARK_FOLDER_PATH:Ljava/lang/String; = "hierarchy"

.field public static final BOOKMARK_IS_FOLDER_PARAM:Ljava/lang/String; = "isFolder"

.field public static final BOOKMARK_PARENT_ID_PARAM:Ljava/lang/String; = "parentId"

.field public static final BROWSER_CONTRACTS_BOOKMAKRS_API_URI:Landroid/net/Uri; = null

.field public static final BROWSER_CONTRACTS_COMBINED_API_URI:Landroid/net/Uri; = null

.field public static final BROWSER_CONTRACTS_HISTORY_API_URI:Landroid/net/Uri; = null

.field public static final BROWSER_CONTRACTS_SEARCHES_API_URI:Landroid/net/Uri; = null

.field private static final BROWSER_CONTRACT_API_AUTHORITY:Ljava/lang/String; = "com.google.android.apps.chrome.browser-contract"

.field private static final BROWSER_CONTRACT_AUTHORITY:Ljava/lang/String; = "com.android.browser"

.field private static final BROWSER_CONTRACT_HISTORY_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/browser-history"

.field private static final BROWSER_CONTRACT_HISTORY_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/browser-history"

.field static final CLIENT_API_BOOKMARK_NODE_EXISTS:Ljava/lang/String; = "BOOKMARK_NODE_EXISTS"

.field static final CLIENT_API_CREATE_BOOKMARKS_FOLDER_ONCE:Ljava/lang/String; = "CREATE_BOOKMARKS_FOLDER_ONCE"

.field static final CLIENT_API_DELETE_ALL_BOOKMARKS:Ljava/lang/String; = "DELETE_ALL_BOOKMARKS"

.field static final CLIENT_API_ENSURE_NATIVE_CHROME_INITIALIZED:Ljava/lang/String; = "CLIENT_API_ENSURE_NATIVE_CHROME_INITIALIZED"

.field static final CLIENT_API_GET_BOOKMARK_FOLDER_HIERARCHY:Ljava/lang/String; = "GET_BOOKMARK_FOLDER_HIERARCHY"

.field static final CLIENT_API_GET_BOOKMARK_NODE:Ljava/lang/String; = "GET_BOOKMARK_NODE"

.field static final CLIENT_API_GET_DEFAULT_BOOKMARK_FOLDER:Ljava/lang/String; = "GET_DEFAULT_BOOKMARK_FOLDER"

.field static final CLIENT_API_GET_MOBILE_BOOKMARKS_FOLDER_ID:Ljava/lang/String; = "GET_MOBILE_BOOKMARKS_FOLDER_ID"

.field static final CLIENT_API_IS_BOOKMARK_IN_MOBILE_BOOKMARKS_BRANCH:Ljava/lang/String; = "IS_BOOKMARK_IN_MOBILE_BOOKMARKS_BRANCH"

.field static final CLIENT_API_RESULT_KEY:Ljava/lang/String; = "result"

.field private static final COMBINED_PATH:Ljava/lang/String; = "combined"

.field private static final HISTORY_PATH:Ljava/lang/String; = "history"

.field static final INVALID_BOOKMARK_ID:J = -0x1L

.field public static final INVALID_CONTENT_PROVIDER_ID:J = 0x0L

.field private static final LAST_MODIFIED_BOOKMARK_FOLDER_ID_KEY:Ljava/lang/String; = "last_bookmark_folder_id"

.field private static final PERMISSION_READ_WRITE_BOOKMARKS:Ljava/lang/String; = "READ_WRITE_BOOKMARK_FOLDERS"

.field private static final PROXY_AUTHORITY_SUFFIX:Ljava/lang/String; = ".BrowserProviderProxy"

.field private static final SEARCHES_PATH:Ljava/lang/String; = "searches"

.field private static final SEARCHES_PATH_EX:Ljava/lang/String; = "searches_ex"

.field private static final SUGGEST_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ChromeBrowserProvider"

.field private static final URI_MATCH_BOOKMARKS:I = 0x0

.field private static final URI_MATCH_BOOKMARKS_ID:I = 0x1

.field private static final URL_MATCH_API_BOOKMARK:I = 0x2

.field private static final URL_MATCH_API_BOOKMARK_CONTENT:I = 0x8

.field private static final URL_MATCH_API_BOOKMARK_CONTENT_ID:I = 0x9

.field private static final URL_MATCH_API_BOOKMARK_ID:I = 0x3

.field private static final URL_MATCH_API_HISTORY_CONTENT:I = 0x6

.field private static final URL_MATCH_API_HISTORY_CONTENT_ID:I = 0x7

.field private static final URL_MATCH_API_SEARCHES:I = 0x4

.field private static final URL_MATCH_API_SEARCHES_ID:I = 0x5

.field private static final URL_MATCH_BOOKMARK_HISTORY_SUGGESTIONS_ID:I = 0xb

.field private static final URL_MATCH_BOOKMARK_SUGGESTIONS_ID:I = 0xa


# instance fields
.field private final mInitializeUriMatcherLock:Ljava/lang/Object;

.field private mLastModifiedBookmarkFolderId:J

.field private final mLoadNativeLock:Ljava/lang/Object;

.field private mMobileBookmarksFolder:Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

.field private mNativeChromeBrowserProvider:I

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "com.google.android.apps.chrome.browser-contract"

    const-string v1, "bookmarks"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->BROWSER_CONTRACTS_BOOKMAKRS_API_URI:Landroid/net/Uri;

    const-string v0, "com.google.android.apps.chrome.browser-contract"

    const-string v1, "searches"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->BROWSER_CONTRACTS_SEARCHES_API_URI:Landroid/net/Uri;

    const-string v0, "com.google.android.apps.chrome.browser-contract"

    const-string v1, "history"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->BROWSER_CONTRACTS_HISTORY_API_URI:Landroid/net/Uri;

    const-string v0, "com.google.android.apps.chrome.browser-contract"

    const-string v1, "combined"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->BROWSER_CONTRACTS_COMBINED_API_URI:Landroid/net/Uri;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "url"

    aput-object v1, v0, v4

    const-string v1, "visits"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "bookmark"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "created"

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->BOOKMARK_DEFAULT_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

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

    sput-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mInitializeUriMatcherLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mLoadNativeLock:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mLastModifiedBookmarkFolderId:J

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ChromeBrowserProvider;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->ensureNativeChromeDestroyedOnUIThread()V

    return-void
.end method

.method private addBookmark(Landroid/content/ContentValues;)J
    .locals 9

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v0, "isFolder"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isFolder"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_0
    const-wide/16 v5, -0x1

    const-string v0, "parentId"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "parentId"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_1
    iget v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeAddBookmark(ILjava/lang/String;Ljava/lang/String;ZJ)J

    move-result-wide v7

    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_2

    :goto_0
    return-wide v7

    :cond_2
    if-eqz v4, :cond_3

    invoke-direct {p0, v7, v8}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->updateLastModifiedBookmarkFolder(J)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v5, v6}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->updateLastModifiedBookmarkFolder(J)V

    goto :goto_0
.end method

.method private addBookmarkFromAPI(Landroid/content/ContentValues;)J
    .locals 12

    invoke-static {p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->fromContentValues(Landroid/content/ContentValues;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;

    move-result-object v11

    iget-object v0, v11, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have a bookmark URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    iget-object v2, v11, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->url:Ljava/lang/String;

    iget-object v3, v11, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->created:Ljava/lang/Long;

    iget-object v4, v11, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->isBookmark:Ljava/lang/Boolean;

    iget-object v5, v11, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->date:Ljava/lang/Long;

    iget-object v6, v11, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->favicon:[B

    iget-object v7, v11, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->title:Ljava/lang/String;

    iget-object v8, v11, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->visits:Ljava/lang/Integer;

    iget-wide v9, v11, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->parentId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeAddBookmarkFromAPI(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;[BLjava/lang/String;Ljava/lang/Integer;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private addSearchTermFromAPI(Landroid/content/ContentValues;)J
    .locals 4

    invoke-static {p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;->fromContentValues(Landroid/content/ContentValues;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;

    move-result-object v0

    iget-object v1, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;->term:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must have a search term"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    iget-object v2, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;->term:Ljava/lang/String;

    iget-object v3, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;->date:Ljava/lang/Long;

    invoke-direct {p0, v1, v2, v3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeAddSearchTermFromAPI(ILjava/lang/String;Ljava/lang/Long;)J

    move-result-wide v1

    return-wide v1
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

.method private bookmarkNodeExists(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeBookmarkNodeExists(IJ)Z

    move-result v0

    goto :goto_0
.end method

.method private static buildAPIContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
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

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildBookmarkWhereClause(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildBookmarkWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildBookmarkWhereClause(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "bookmark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_1

    const-string v1, " = 1 "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const-string v1, " = 0"

    goto :goto_0
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

.method private static buildHistoryWhereClause(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildHistoryWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildSuggestWhere(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static buildWhereClause(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createBookmarksFolderOnce(Ljava/lang/String;J)J
    .locals 2

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeCreateBookmarksFolderOnce(ILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private ensureNativeChromeDestroyedOnUIThread()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->isNativeSideInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    :cond_0
    return-void
.end method

.method private ensureUriMatcherInitialized()V
    .locals 8

    iget-object v4, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mInitializeUriMatcherLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    if-eqz v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/content/UriMatcher;

    const/4 v5, -0x1

    invoke-direct {v3, v5}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".ChromeBrowserProvider"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "bookmarks"

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "bookmarks/#"

    const/4 v6, 0x1

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".browser"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "bookmarks"

    const/4 v6, 0x2

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "bookmarks/#"

    const/4 v6, 0x3

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "searches"

    const/4 v6, 0x4

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "searches/#"

    const/4 v6, 0x5

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "history"

    const/4 v6, 0x6

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "history/#"

    const/4 v6, 0x7

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "combined"

    const/4 v6, 0x2

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "combined/#"

    const/4 v6, 0x3

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.google.android.apps.chrome.browser-contract"

    const-string v6, "history"

    const/4 v7, 0x6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.google.android.apps.chrome.browser-contract"

    const-string v6, "history/#"

    const/4 v7, 0x7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.google.android.apps.chrome.browser-contract"

    const-string v6, "combined"

    const/4 v7, 0x2

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.google.android.apps.chrome.browser-contract"

    const-string v6, "combined/#"

    const/4 v7, 0x3

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.google.android.apps.chrome.browser-contract"

    const-string v6, "searches"

    const/4 v7, 0x4

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.google.android.apps.chrome.browser-contract"

    const-string v6, "searches/#"

    const/4 v7, 0x5

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.google.android.apps.chrome.browser-contract"

    const-string v6, "bookmarks"

    const/16 v7, 0x8

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.google.android.apps.chrome.browser-contract"

    const-string v6, "bookmarks/#"

    const/16 v7, 0x9

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.android.browser"

    const-string v6, "history"

    const/4 v7, 0x6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.android.browser"

    const-string v6, "history/#"

    const/4 v7, 0x7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.android.browser"

    const-string v6, "combined"

    const/4 v7, 0x2

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.android.browser"

    const-string v6, "combined/#"

    const/4 v7, 0x3

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.android.browser"

    const-string v6, "searches"

    const/4 v7, 0x4

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.android.browser"

    const-string v6, "searches/#"

    const/4 v7, 0x5

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.android.browser"

    const-string v6, "bookmarks"

    const/16 v7, 0x8

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.android.browser"

    const-string v6, "bookmarks/#"

    const/16 v7, 0x9

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "browser"

    const-string v6, "bookmarks"

    const/4 v7, 0x2

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "browser"

    const-string v6, "bookmarks/#"

    const/4 v7, 0x3

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "browser"

    const-string v6, "searches"

    const/4 v7, 0x4

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "browser"

    const-string v6, "searches/#"

    const/4 v7, 0x5

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "bookmarks/search_suggest_query"

    const/16 v6, 0xa

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "search_suggest_query"

    const/16 v6, 0xb

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".BrowserProviderProxy"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "history"

    const/4 v6, 0x6

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "history/#"

    const/4 v6, 0x7

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "combined"

    const/4 v6, 0x2

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "combined/#"

    const/4 v6, 0x3

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "searches"

    const/4 v6, 0x4

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "searches/#"

    const/4 v6, 0x5

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "bookmarks"

    const/16 v6, 0x8

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "bookmarks/#"

    const/16 v6, 0x9

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "bookmarks_ex"

    const/4 v6, 0x2

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "bookmarks_ex/#"

    const/4 v6, 0x3

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "searches_ex"

    const/4 v6, 0x4

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v5, "searches_ex/#"

    const/4 v6, 0x5

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getApiAuthority(Landroid/content/Context;)Ljava/lang/String;
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

    return-object v0
.end method

.method private getBookmarkFolderHierarchy()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeGetAllBookmarkFolders(I)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    return-object v0
.end method

.method public static getBookmarkFolderUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getInternalAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hierarchy"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getBookmarkHistorySuggestions(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v5, p2, v7

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, p2, v7

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildSuggestWhere(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v5, " OR title LIKE ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    const-string v5, " AND bookmark=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    sget-object v5, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p2, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v5, Lorg/chromium/chrome/browser/ChromeBrowserProviderSuggestionsCursor;

    invoke-direct {v5, v1}, Lorg/chromium/chrome/browser/ChromeBrowserProviderSuggestionsCursor;-><init>(Landroid/database/Cursor;)V

    return-object v5

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://www."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://www."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static getBookmarksApiUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getApiAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookmarks"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getInternalAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookmarks"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultBookmarkFolder()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 8

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getLastModifiedBookmarkFolderId()J

    move-result-wide v1

    move-object v0, p0

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getBookmarkNode(JZZZZ)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getMobileBookmarksFolder()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->id()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mLastModifiedBookmarkFolderId:J

    :cond_0
    return-object v7

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getInternalAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ChromeBrowserProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLastModifiedBookmarkFolderId()J
    .locals 5

    const-wide/16 v3, -0x1

    iget-wide v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mLastModifiedBookmarkFolderId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_bookmark_folder_id"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mLastModifiedBookmarkFolderId:J

    :cond_0
    iget-wide v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mLastModifiedBookmarkFolderId:J

    return-wide v1
.end method

.method private getMobileBookmarksFolder()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mMobileBookmarksFolder:Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeGetMobileBookmarksFolder(I)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mMobileBookmarksFolder:Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mMobileBookmarksFolder:Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    return-object v0
.end method

.method private getReadWritePermissionNameForBookmarkFolders()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "READ_WRITE_BOOKMARK_FOLDERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSearchesApiUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getApiAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "searches"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getShortcutToBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IIILandroid/app/Activity;)Landroid/content/Intent;
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/BookmarkUtils;->createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;III)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private isBookmarkInMobileBookmarksBranch(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeIsBookmarkInMobileBookmarksBranch(IJ)Z

    move-result v0

    goto :goto_0
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
    const-string v0, "ChromeBrowserProvider"

    const-string v1, "ChromeBrowserProvider methods cannot be called from the UI thread."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private native nativeAddBookmark(ILjava/lang/String;Ljava/lang/String;ZJ)J
.end method

.method private native nativeAddBookmarkFromAPI(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;[BLjava/lang/String;Ljava/lang/Integer;J)J
.end method

.method private native nativeAddSearchTermFromAPI(ILjava/lang/String;Ljava/lang/Long;)J
.end method

.method private native nativeBookmarkNodeExists(IJ)Z
.end method

.method private native nativeCreateBookmarksFolderOnce(ILjava/lang/String;J)J
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeGetAllBookmarkFolders(I)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
.end method

.method private native nativeGetBookmarkNode(IJZZ)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
.end method

.method private native nativeGetFaviconOrTouchIcon(ILjava/lang/String;)[B
.end method

.method private native nativeGetMobileBookmarksFolder(I)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
.end method

.method private native nativeGetThumbnail(ILjava/lang/String;)[B
.end method

.method private native nativeInit()I
.end method

.method private native nativeIsBookmarkInMobileBookmarksBranch(IJ)Z
.end method

.method private native nativeQueryBookmarkFromAPI(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/database/SQLiteCursor;
.end method

.method private native nativeQuerySearchTermFromAPI(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/database/SQLiteCursor;
.end method

.method private native nativeRemoveAllBookmarks(I)V
.end method

.method private native nativeRemoveBookmark(IJ)I
.end method

.method private native nativeRemoveBookmarkFromAPI(ILjava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeRemoveHistoryFromAPI(ILjava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeRemoveSearchTermFromAPI(ILjava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeUpdateBookmark(IJLjava/lang/String;Ljava/lang/String;J)I
.end method

.method private native nativeUpdateBookmarkFromAPI(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;[BLjava/lang/String;Ljava/lang/Integer;JLjava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeUpdateSearchTermFromAPI(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private onBookmarkChanged()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bookmarks"

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildAPIContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private onSearchTermChanged()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "searches"

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildAPIContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private populateNodeImages(Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->type()Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->URL:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->url()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeGetFaviconOrTouchIcon(ILjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->setFavicon([B)V

    :cond_2
    if-eqz p3, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->url()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeGetThumbnail(ILjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->setThumbnail([B)V

    goto :goto_0
.end method

.method private querySearchTermFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    sget-object v2, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    :goto_0
    iget v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeQuerySearchTermFromAPI(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/database/SQLiteCursor;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v2, p1

    goto :goto_0
.end method

.method private removeBookmarkFromAPI(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeRemoveBookmarkFromAPI(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private removeHistoryFromAPI(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeRemoveHistoryFromAPI(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private removeSearchFromAPI(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeRemoveSearchTermFromAPI(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 14

    invoke-static {p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->fromContentValues(Landroid/content/ContentValues;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;

    move-result-object v13

    iget v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    iget-object v2, v13, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->url:Ljava/lang/String;

    iget-object v3, v13, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->created:Ljava/lang/Long;

    iget-object v4, v13, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->isBookmark:Ljava/lang/Boolean;

    iget-object v5, v13, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->date:Ljava/lang/Long;

    iget-object v6, v13, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->favicon:[B

    iget-object v7, v13, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->title:Ljava/lang/String;

    iget-object v8, v13, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->visits:Ljava/lang/Integer;

    iget-wide v9, v13, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->parentId:J

    move-object v0, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeUpdateBookmarkFromAPI(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;[BLjava/lang/String;Ljava/lang/Integer;JLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateLastModifiedBookmarkFolder(J)V
    .locals 5

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getLastModifiedBookmarkFolderId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mLastModifiedBookmarkFolderId:J

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_bookmark_folder_id"

    iget-wide v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mLastModifiedBookmarkFolderId:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private updateSearchTermFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    invoke-static {p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;->fromContentValues(Landroid/content/ContentValues;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;

    move-result-object v6

    iget v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    iget-object v2, v6, Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;->term:Ljava/lang/String;

    iget-object v3, v6, Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;->date:Ljava/lang/Long;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeUpdateSearchTermFromAPI(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->isInUiThread()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v7, v0

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->ensureNativeChromeLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v7, v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p3, :cond_3

    :cond_2
    move-object v7, v0

    goto :goto_0

    :cond_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BOOKMARK_NODE_EXISTS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "result"

    invoke-static {v2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->bookmarkNodeExists(J)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string v1, "CREATE_BOOKMARKS_FOLDER_ONCE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "result"

    invoke-static {v2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->createBookmarksFolderOnce(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    const-string v1, "GET_BOOKMARK_FOLDER_HIERARCHY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "result"

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getBookmarkFolderHierarchy()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_6
    const-string v1, "GET_BOOKMARK_NODE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v8, "result"

    invoke-static {v2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const/4 v0, 0x3

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getBookmarkNode(JZZZZ)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "GET_DEFAULT_BOOKMARK_FOLDER"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "result"

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getDefaultBookmarkFolder()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "GET_MOBILE_BOOKMARKS_FOLDER_ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "result"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getMobileBookmarksFolderId()J

    move-result-wide v1

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "IS_BOOKMARK_IN_MOBILE_BOOKMARKS_BRANCH"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "result"

    invoke-static {v2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->isBookmarkInMobileBookmarksBranch(J)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "DELETE_ALL_BOOKMARKS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeRemoveAllBookmarks(I)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "ChromeBrowserProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received invalid method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v0

    goto/16 :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->isInUiThread()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->ensureNativeChromeLoaded()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    :goto_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChromeBrowserProvider: delete - unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    iget v4, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-direct {p0, v4, v0, v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeRemoveBookmark(IJ)I

    move-result v3

    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1, p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->removeBookmarkFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->removeBookmarkFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_3
    invoke-static {v0, v1, p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->removeSearchFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, p2, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->removeSearchFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, p2, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->removeHistoryFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_6
    invoke-static {v0, v1, p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->removeHistoryFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_7
    invoke-static {p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->removeBookmarkFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_8
    invoke-static {v0, v1, p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildBookmarkWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->removeBookmarkFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected ensureNativeChromeLoaded()Z
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->ensureUriMatcherInitialized()V

    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mLoadNativeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    if-eqz v3, :cond_0

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$1;-><init>(Lorg/chromium/chrome/browser/ChromeBrowserProvider;Ljava/util/concurrent/atomic/AtomicBoolean;)V

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

.method protected ensureNativeChromeLoadedOnUIThread()Z
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->isNativeSideInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lorg/chromium/content/browser/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x103012b

    invoke-virtual {v0, v2}, Landroid/content/Context;->setTheme(I)V

    :cond_1
    :goto_1
    const/4 v2, -0x1

    :try_start_0
    invoke-static {v0, v2}, Lorg/chromium/content/browser/AndroidBrowserProcess;->init(Landroid/content/Context;I)Z
    :try_end_0
    .catch Lorg/chromium/content/common/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeInit()I

    move-result v2

    iput v2, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->isNativeSideInitialized()Z

    move-result v2

    goto :goto_0

    :cond_2
    const v2, 0x1030128

    invoke-virtual {v0, v2}, Landroid/content/Context;->setTheme(I)V

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/chromium/content/common/ProcessInitException;->printStackTrace()V

    goto :goto_2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$2;-><init>(Lorg/chromium/chrome/browser/ChromeBrowserProvider;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected getBookmarkNode(JZZZZ)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 9

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getMobileBookmarksFolderId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/notifier/SyncStatusHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/notifier/SyncStatusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/notifier/SyncStatusHelper;->isSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeGetBookmarkNode(IJZZ)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v8

    if-nez p5, :cond_2

    if-nez p6, :cond_2

    :cond_1
    return-object v8

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->parent()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->parent()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    invoke-direct {p0, v0, p5, p6}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->populateNodeImages(Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;ZZ)V

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->type()Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->URL:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v8, p5, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->populateNodeImages(Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;ZZ)V

    :cond_4
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->children()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    invoke-direct {p0, v6, p5, p6}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->populateNodeImages(Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;ZZ)V

    goto :goto_0
.end method

.method protected getMobileBookmarksFolderId()J
    .locals 3

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getMobileBookmarksFolder()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->id()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->ensureUriMatcherInitialized()V

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChromeBrowserProvider: getType - unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/bookmark"

    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item/bookmark"

    goto :goto_0

    :pswitch_2
    const-string v1, "vnd.android.cursor.dir/searches"

    goto :goto_0

    :pswitch_3
    const-string v1, "vnd.android.cursor.item/searches"

    goto :goto_0

    :pswitch_4
    const-string v1, "vnd.android.cursor.dir/browser-history"

    goto :goto_0

    :pswitch_5
    const-string v1, "vnd.android.cursor.item/browser-history"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->isInUiThread()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->ensureNativeChromeLoaded()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChromeBrowserProvider: insert - unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->addBookmark(Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    const-string v5, "bookmark"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :pswitch_3
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->addBookmarkFromAPI(Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v5, v0, v7

    if-nez v5, :cond_2

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->addSearchTermFromAPI(Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v5, v0, v7

    if-nez v5, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_2
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected isNativeSideInitialized()Z
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->isInUiThread()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->ensureNativeChromeLoaded()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    :goto_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v2, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChromeBrowserProvider: query - unknown URL uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    const/4 v4, 0x1

    invoke-direct {p0, p3, p4, p5, v4}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getBookmarkHistorySuggestions(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_2

    new-instance v2, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p3, p4, p5, v6}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getBookmarkHistorySuggestions(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_2

    :pswitch_3
    invoke-static {v0, v1, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v4, p4, p5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->querySearchTermFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_2

    :pswitch_5
    invoke-static {v0, v1, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4, p4, p5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->querySearchTermFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_2

    :pswitch_6
    invoke-static {p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildHistoryWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v4, p4, p5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_2

    :pswitch_7
    invoke-static {v0, v1, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildHistoryWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v4, p4, p5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_2

    :pswitch_8
    invoke-static {p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v4, p4, p5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_2

    :pswitch_9
    invoke-static {v0, v1, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildBookmarkWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v4, p4, p5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v4

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    sget-object v2, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->BOOKMARK_DEFAULT_PROJECTION:[Ljava/lang/String;

    :goto_0
    iget v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeQueryBookmarkFromAPI(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/database/SQLiteCursor;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v2, p1

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11

    const/4 v9, 0x0

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->isInUiThread()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->ensureNativeChromeLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ChromeBrowserProvider: update - unknown URL "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v4, 0x0

    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    const-string v0, "parentId"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "parentId"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :cond_3
    iget v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->mNativeChromeBrowserProvider:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->nativeUpdateBookmark(IJLjava/lang/String;Ljava/lang/String;J)I

    move-result v9

    invoke-direct {p0, v6, v7}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->updateLastModifiedBookmarkFolder(J)V

    :goto_2
    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v2, v3, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    goto :goto_2

    :pswitch_3
    invoke-static {v2, v3, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->updateSearchTermFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->updateSearchTermFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    goto :goto_2

    :pswitch_5
    invoke-static {p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildHistoryWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    goto :goto_2

    :pswitch_6
    invoke-static {v2, v3, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildHistoryWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    goto :goto_2

    :pswitch_7
    invoke-static {p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    goto :goto_2

    :pswitch_8
    invoke-static {v2, v3, p3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->buildBookmarkWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
