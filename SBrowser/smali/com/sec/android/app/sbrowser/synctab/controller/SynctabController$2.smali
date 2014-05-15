.class Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$2;
.super Ljava/lang/Object;
.source "SynctabController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onUndo()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSelectedDevices:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSelectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    check-cast v1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const-string v1, "SynctabController"

    const-string v2, "onUndo >>>>removeCallbacks>>>>>>>>>>>>>>>>.... "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    check-cast v1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSelectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iput-object v3, v1, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSelectedDevices:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSBrowserCPUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->undoTabDelete(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->refreshUI()V

    :cond_1
    return-void
.end method
