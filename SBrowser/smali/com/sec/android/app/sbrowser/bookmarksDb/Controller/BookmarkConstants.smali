.class public Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;
.super Ljava/lang/Object;
.source "BookmarkConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ThumbnailViewResizeConstants;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityNumbers;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Logs;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Messages;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BOOKMARK;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$SyncStatus;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ToolbarBookmarkState;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;
    }
.end annotation


# static fields
.field public static final BOOKMARKS_URI:Landroid/net/Uri; = null

.field public static final DELETED_CHILDREN_COUNT:Ljava/lang/String; = "deleted_children_count"

.field public static final DELETED_PARENT_FOLDER_ID:Ljava/lang/String; = "deleted_parent_folder_id"

.field public static final EDITBM_OBJSELECTED:Ljava/lang/String; = "edit_bookmarkfolder_selected"

.field public static final EDITBM_PARENTARRAY:Ljava/lang/String; = "edit_bookmarkfolder_parentarray"

.field public static final FROM_MOVE_TO_FOLDER:Ljava/lang/String; = "FromMoveToFolder"

.field public static final HAS_PERMANENT_MENU_KEY:Ljava/lang/String; = "sHasPermanentMenuKey"

.field public static final INVALID_BOOKMARK_ID:Ljava/lang/Long; = null

.field public static final LIST_ID_TYPE:Ljava/lang/String; = "listOfTypes"

.field public static final LIST_OF_IDS:Ljava/lang/String; = "listOfIds"

.field public static final MAX_CONCURRENT_EXECUTORS:I = 0x1

.field public static final MAX_THUMBNAILS_UPDATION_LIMIT:I = 0xc

.field public static final MOVE_EDITABLE_ITEMS:Ljava/lang/String; = "editable_items"

.field public static final MOVE_NON_EDIT_ITEMS:Ljava/lang/String; = "non_edit_items"

.field public static final NO_BOOKMARK_LAYOUT:Ljava/lang/String; = "no_bookmark_layout"

.field public static final PARENT_NODE_EXTRA:Ljava/lang/String; = "FolderID"

.field public static final PATH_INDICATOR_CLEAR:I = 0x0

.field public static final PATH_INDICATOR_ONLAUNCH_ANIMATION_START_OFFSET:I = 0xc8

.field public static final PATH_INDICATOR_SHADOW_RADIUS:I = 0x2

.field public static final PINTAB_LIST:Ljava/lang/String; = "pintab_list"

.field public static final PINTAB_URL:Ljava/lang/String; = "pin_url"

.field public static final PREF_ADD_BOOKMARK_VIEW_FOLDER:Ljava/lang/String; = "pref_add_bookmark_view_folder"

.field public static final PREF_BOOKMARK_SFINDER:Ljava/lang/String; = "perf_show bookmark_sfinder"

.field public static final PREF_BOOKMARK_VIEW_ID:Ljava/lang/String; = "perf_show bookmark_view_folder"

.field public static final PREF_BOOKMARK_VIEW_MODE:Ljava/lang/String; = "perf_show_bookmark_view_mode"

.field public static final PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long; = null

.field public static final PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long; = null

.field public static final ROBOTO_REGULAR_FONT:Ljava/lang/String; = "Roboto-Regular.ttf"

.field public static final ROOT_OBJECT_NAME:Ljava/lang/String; = "Bookmarks"

.field public static final SBROWSER_BOOKMARK_FOLDER:Ljava/lang/String; = "SBrowser_bookmark_folder"

.field public static final SBROWSER_FOLDER_ID:Ljava/lang/String; = "SBrowser_folder_id"

.field public static final SHOW_MODE:Ljava/lang/String; = "mode"

.field public static final SUGGEST_COLUMN_GROUP:Ljava/lang/String; = "SUGGEST_COLUMN_GROUP"

.field public static final SUGGEST_COLUMN_TARGET_TYPE:Ljava/lang/String; = "intent_extra_target_type"

.field public static final UNDO_BAR_LIFETIME:I = 0x1b58

.field public static mNotifications:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkConstants;->bookmarkUri:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->mNotifications:[I

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->mNotifications:[I

    const/4 v1, 0x0

    const/16 v2, 0x1b

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
