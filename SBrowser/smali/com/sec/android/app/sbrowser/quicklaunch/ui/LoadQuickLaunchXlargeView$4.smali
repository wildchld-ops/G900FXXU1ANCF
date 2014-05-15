.class Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$4;
.super Ljava/lang/Object;
.source "LoadQuickLaunchXlargeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->HandleContextMenu(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$4;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$4;->val$url:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$4;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchController:Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$1400(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$4;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->blacklistURLFromMostVisited(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$4;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$4;->val$url:Ljava/lang/String;

    #calls: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isSearchEngineURL(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$1900(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
