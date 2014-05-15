.class public Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BookmarkThumbnailWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;
    }
.end annotation


# static fields
.field public static final ACTION_BOOKMARK_APPWIDGET_UPDATE:Ljava/lang/String; = "com.sec.android.app.sbrowser.BOOKMARK_APPWIDGET_UPDATE"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelBookmarksThumbnailObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->handleBookmarksTableChange()V

    return-void
.end method

.method static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private handleBookmarksTableChange()V
    .locals 2

    const-string v0, "Bookmarks"

    const-string v1, "Received update message to update Bookmarks"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->executeBookmarksChangeTask(Landroid/content/Context;)V

    return-void
.end method

.method private performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 13

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    const-string v10, "show_browser"

    const/4 v11, 0x0

    const-class v12, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v9, v10, v11, p1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x800

    invoke-static {p1, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v1, p3

    array-length v5, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_1

    aget v0, v1, v2

    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService;

    invoke-direct {v6, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "appWidgetId"

    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f04001f

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v8, 0x7f0a00e7

    invoke-virtual {v7, v8, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Web_RemoveBrowserIconInBookmarkThumbnailWidget"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0x7f0a00e7

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_0
    const v8, 0x7f0a00e6

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    const v8, 0x7f0a00e6

    invoke-virtual {p2, v0, v8}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetProxy;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v8, 0x7f0a00e6

    const/4 v9, 0x0

    const/high16 v10, 0x800

    invoke-static {p1, v9, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    invoke-virtual {p2, v0, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static refreshWidgets(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.sbrowser.BOOKMARK_APPWIDGET_UPDATE"

    const/4 v2, 0x0

    const-class v3, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public executeBookmarksChangeTask(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;-><init>(Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->mDelBookmarksThumbnailObserver:Landroid/database/ContentObserver;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->mDelBookmarksThumbnailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->mDelBookmarksThumbnailObserver:Landroid/database/ContentObserver;

    :cond_0
    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService;->deleteWidgetState(Landroid/content/Context;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->removeOrphanedFiles(Landroid/content/Context;)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->removeOrphanedFiles(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->mDelBookmarksThumbnailObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->mDelBookmarksThumbnailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->mDelBookmarksThumbnailObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$1;-><init>(Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->mDelBookmarksThumbnailObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->mDelBookmarksThumbnailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "com.sec.android.app.sbrowser.BOOKMARK_APPWIDGET_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method removeOrphanedFiles(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService;->removeOrphanedStates(Landroid/content/Context;[I)V

    return-void
.end method
