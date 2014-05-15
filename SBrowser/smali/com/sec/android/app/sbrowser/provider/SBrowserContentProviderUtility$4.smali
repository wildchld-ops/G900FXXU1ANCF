.class Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility$4;
.super Ljava/util/TimerTask;
.source "SBrowserContentProviderUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->startTabSyncTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility$4;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SBrowserSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executing timerTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility$4;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->cancelTabSyncTimer()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility$4;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->triggerTabsyncManually()V

    return-void
.end method
