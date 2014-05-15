.class public Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;
.super Landroid/app/ListActivity;
.source "BookmarkWidgetConfigure.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;,
        Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$AccountsLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMMAND_LINE_FILE:Ljava/lang/String; = "/data/local/tmp/chromium-testshell-command-line"

.field static final LOADER_ACCOUNTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BookmarkWidgetConfigure"


# instance fields
.field private mAccountAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->mAppWidgetId:I

    return-void
.end method


# virtual methods
.method Init()V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "appWidgetId"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->mAppWidgetId:I

    :cond_0
    iget v4, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->mAppWidgetId:I

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/samsung/chrome/browser/SbrChromeBrowserProviderClient;->getMobileBookmarksFolderId(Landroid/content/Context;)J

    move-result-wide v2

    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tempid in bookmarkwidgetconfigure"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->pickAccount(J)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->setResult(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->Init()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$AccountsLoader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$AccountsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;

    iget-wide v1, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;->rootFolderId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->pickAccount(J)V

    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "TAG"

    const-string v1, "[WIDGET] onLoadFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WIDGET] onLoadFinished - cursor.getCount() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v3, :cond_2

    :cond_1
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->pickAccount(J)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->pickAccount(J)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->setVisible(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "BookmarkWidgetConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WIDGET] onLoadFinished - cursor.getString(ACCOUNT_NAME) :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->setVisible(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method pickAccount(J)V
    .locals 4

    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WIDGET] pickAccount - rootId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->mAppWidgetId:I

    invoke-static {p0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService;->setupWidgetState(Landroid/content/Context;IJ)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;->finish()V

    return-void
.end method
