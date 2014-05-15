.class public Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkConstants;
.super Ljava/lang/Object;
.source "SBrowserBookmarkConstants.java"


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "ACCOUNT_NAME"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "ACCOUNT_TYPE"

.field public static final BOOKMARK:Ljava/lang/String; = "bookmark"

.field public static final BOOKMARK_ID:Ljava/lang/String; = "BOOKMARK_ID"

.field public static final BOOKMARK_SURL:Ljava/lang/String; = "SURL"

.field public static final BOOKMARK_SYNC_COLUMN_URL:Ljava/lang/String; = "URL"

.field public static final BOOKMARK_SYNC_LOCAL_CHANGES:Ljava/lang/String; = "bookmark_sync_local_changes"

.field public static final BOOKMARK_TYPE:Ljava/lang/String; = "bookmark_type"

.field public static final CHILDREN_COUNT:Ljava/lang/String; = "CHILDREN_COUNT"

.field public static final CHROME_PLUGIN:Ljava/lang/String; = "_Chrome_Desktop"

.field public static final CREATED:Ljava/lang/String; = "CREATED"

.field public static final DELETED:Ljava/lang/String; = "DELETED"

.field public static final DEVICE_ID:Ljava/lang/String; = "DEVICE_ID"

.field public static final DEVICE_NAME:Ljava/lang/String; = "DEVICE_NAME"

.field public static final DIRTY:Ljava/lang/String; = "DIRTY"

.field public static final EDITABLE:Ljava/lang/String; = "EDITABLE"

.field public static final FAVICON:Ljava/lang/String; = "FAVICON"

.field public static final FIREFOX_PLUGIN:Ljava/lang/CharSequence; = null

.field public static final FOLDER:Ljava/lang/String; = "FOLDER"

.field public static final IE_PLUGIN:Ljava/lang/String; = "_Desktop[_IE]"

.field public static final INSERT_AFTER:Ljava/lang/String; = "INSERT_AFTER"

.field public static final INVALID_BOOKMARK_ID:I = -0x1

.field public static final IS_COMMITED:Ljava/lang/String; = "IS_COMMITED"

.field public static final MODIFIED:Ljava/lang/String; = "MODIFIED"

.field public static final OPERATION_BOOKMARK_DELETE:I = 0xfa3

.field public static final OPERATION_BOOKMARK_FOLDER_DELETE:I = 0xfa6

.field public static final OPERATION_BOOKMARK_INSERT:I = 0xfa1

.field public static final OPERATION_BOOKMARK_QUERY:I = 0xfa4

.field public static final OPERATION_BOOKMARK_UPDATE:I = 0xfa2

.field public static final OPERATION_OFFLINE_BOOKMARK_INSERT:I = 0xfa0

.field public static final OPERATION_UPDATE_ACCOUNT_ON_SIGNIN:I = 0xfa5

.field public static final OPERATOR_BOOKMARK:Ljava/lang/String; = "OPERATOR_BOOKMARK"

.field public static final OPERA_PLUGIN:Ljava/lang/String; = "_Opera_Desktop"

.field public static final PARENT:Ljava/lang/String; = "PARENT"

.field public static final POSITION:Ljava/lang/String; = "POSITION"

.field public static final SBROWSER_BOOKMARK_CONTENT_URI:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field public static final SOURCEID:Ljava/lang/String; = "SOURCEID"

.field public static final SYNC1:Ljava/lang/String; = "SYNC1"

.field public static final SYNC2:Ljava/lang/String; = "SYNC2"

.field public static final SYNC3:Ljava/lang/String; = "SYNC3"

.field public static final SYNC4:Ljava/lang/String; = "SYNC4"

.field public static final SYNC5:Ljava/lang/String; = "SYNC5"

.field public static final TAGS:Ljava/lang/String; = "TAGS"

.field public static final THUMBNAIL:Ljava/lang/String; = "THUMBNAIL"

.field public static final THUMBNAIL_HOVER:Ljava/lang/String; = "THUMBNAIL_HOVER"

.field public static final TITLE:Ljava/lang/String; = "TITLE"

.field public static final _ID:Ljava/lang/String; = "_ID"

.field public static bookmarkUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.sbrowser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkConstants;->bookmarkUri:Landroid/net/Uri;

    const-string v0, "_Mozilla_Desktop"

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkConstants;->FIREFOX_PLUGIN:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
