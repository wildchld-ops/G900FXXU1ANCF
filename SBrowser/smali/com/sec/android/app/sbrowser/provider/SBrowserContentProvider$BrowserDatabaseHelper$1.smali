.class Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper$1;
.super Ljava/lang/Thread;
.source "SBrowserContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;

    #calls: Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;->migrateScrapDB()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;->access$100(Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider$BrowserDatabaseHelper;)V

    return-void
.end method
