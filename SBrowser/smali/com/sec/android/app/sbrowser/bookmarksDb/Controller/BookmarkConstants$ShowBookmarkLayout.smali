.class public final enum Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;
.super Ljava/lang/Enum;
.source "BookmarkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowBookmarkLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

.field public static final enum SHOW_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

.field public static final enum SHOW_NO_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

.field public static final enum SHOW_NO_BOOKMARKS_WITH_BUBBLE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    const-string v1, "SHOW_BOOKMARKS"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    const-string v1, "SHOW_NO_BOOKMARKS_WITH_BUBBLE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_NO_BOOKMARKS_WITH_BUBBLE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    const-string v1, "SHOW_NO_BOOKMARKS"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_NO_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_NO_BOOKMARKS_WITH_BUBBLE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_NO_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->$VALUES:[Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->$VALUES:[Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    return-object v0
.end method
