.class Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper$3;
.super Ljava/lang/Object;
.source "SBrowserContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;->backupHistoryAndBookmarkData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper$3;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper$3;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper$3;->val$context:Landroid/content/Context;

    #calls: Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;->copyOperatorBookmarks(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;->access$200(Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;Landroid/content/Context;)V

    return-void
.end method
