.class Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$3;
.super Ljava/lang/Object;
.source "SynctabController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->deleteTabsConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const-string v5, "SynctabController : SBrowserSync"

    const-string v6, "deleteTabsConfirm "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSelectedDevices:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSelectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    check-cast v5, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->handler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    const-string v5, "SynctabController : SBrowserSync"

    const-string v6, "deleteTabsConfirm : removeCallbacks "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    check-cast v5, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSelectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iput-object v8, v5, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSelectedDevices:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "DATE_MODIFIED"

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->access$000(Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "DIRTY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "SYNC5"

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->access$000(Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x0

    const-string v4, "DEVICE_ID IN ("

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->access$000(Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sbrowser/provider/SBrowserConstants;->tabUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string v5, "SynctabController : SBrowserSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteTabsConfirm : updated : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
