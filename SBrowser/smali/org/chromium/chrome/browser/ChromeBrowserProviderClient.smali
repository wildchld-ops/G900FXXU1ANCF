.class public Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;
.super Ljava/lang/Object;
.source "ChromeBrowserProviderClient.java"


# static fields
.field public static final GET_CHILDREN:I = 0x2

.field public static final GET_FAVICONS:I = 0x4

.field public static final GET_NODE:I = 0x0

.field public static final GET_PARENT:I = 0x1

.field public static final GET_THUMBNAILS:I = 0x8

.field public static final INVALID_BOOKMARK_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "ChromeBrowserProviderClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v4

    aget-object v3, p0, v1

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->argKey(I)Ljava/lang/String;

    move-result-object v4

    aget-object v3, p0, v1

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    :cond_1
    const-string v3, "ChromeBrowserProviderClient"

    const-string v4, "Argument implements neither Parcelable nor Serializable."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method public static bookmarkNodeExists(Landroid/content/Context;J)Z
    .locals 6

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    const-string v3, "BOOKMARK_NODE_EXISTS"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->chromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method

.method private static chromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->getPrivateProviderUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v1, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static createBookmarksFolderOnce(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 6

    const-class v1, Ljava/lang/Long;

    const-string v2, "CREATE_BOOKMARKS_FOLDER_ONCE"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->chromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static ensureNativeChromeInitialised(Landroid/content/Context;)V
    .locals 3

    const-class v0, Ljava/lang/Boolean;

    const-string v1, "CLIENT_API_ENSURE_NATIVE_CHROME_INITIALIZED"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->chromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;

    return-void
.end method

.method public static getBookmarkFolderHierarchy(Landroid/content/Context;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 3

    const-class v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    const-string v1, "GET_BOOKMARK_FOLDER_HIERARCHY"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->chromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    return-object v0
.end method

.method public static getBookmarkNode(Landroid/content/Context;JI)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v3, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    const-string v4, "GET_BOOKMARK_NODE"

    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v6, 0x2

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v6, 0x3

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    and-int/lit8 v6, p3, 0x8

    if-eqz v6, :cond_3

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v5}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v3, v4, p0, v0}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->chromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public static getDefaultBookmarkFolder(Landroid/content/Context;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 3

    const-class v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    const-string v1, "GET_DEFAULT_BOOKMARK_FOLDER"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->chromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    return-object v0
.end method

.method public static getMobileBookmarksFolderId(Landroid/content/Context;)J
    .locals 4

    const-class v1, Ljava/lang/Long;

    const-string v2, "GET_MOBILE_BOOKMARKS_FOLDER_ID"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->chromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private static getPrivateProviderUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isBookmarkInMobileBookmarksBranch(Landroid/content/Context;J)Z
    .locals 6

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    const-string v3, "IS_BOOKMARK_IN_MOBILE_BOOKMARKS_BRANCH"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->chromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static removeAllBookmarks(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    const-string v1, "DELETE_ALL_BOOKMARKS"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->argsToBundle([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->chromeBrowserProviderCall(Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/Object;

    return-void
.end method
