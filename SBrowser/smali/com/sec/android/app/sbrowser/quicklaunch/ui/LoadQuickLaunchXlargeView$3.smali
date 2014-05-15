.class Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;
.super Ljava/lang/Object;
.source "LoadQuickLaunchXlargeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->updateQuickLaunchUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isUiLoadInProgress:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$1000(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #setter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isUiLoadInProgress:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$1002(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$100(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$100(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchController:Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$1400(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->getMostVisitedData()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedListItem:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$1302(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #calls: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->fillMostVisitedData()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$1500(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #calls: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->updateSearchEngineData()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$1600(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #calls: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->getQuickLaunchThumbnail()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$1700(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$1800(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x141

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #setter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isNativeUpdateIgnored:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$1102(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Z)Z

    goto :goto_0
.end method
