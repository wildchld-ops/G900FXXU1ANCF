.class final Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;
.super Ljava/lang/Thread;
.source "SBrowserDownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener;->onDownloadStartNoStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$manager:Landroid/app/DownloadManager;

.field final synthetic val$request:Landroid/app/DownloadManager$Request;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;->val$manager:Landroid/app/DownloadManager;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;->val$request:Landroid/app/DownloadManager$Request;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;->val$manager:Landroid/app/DownloadManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;->val$request:Landroid/app/DownloadManager$Request;

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1$1;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
