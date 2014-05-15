.class Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1$1;
.super Ljava/lang/Object;
.source "LoadQuickLaunchXlargeView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1$1;->this$1:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1$1;->this$1:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridItemClicked:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$000(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Z

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a019d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1$1;->this$1:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #setter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridItemClicked:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$002(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1$1;->this$1:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #calls: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->handleMostVisitedItemClick(I)V
    invoke-static {v1, p3}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$800(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;I)V

    :cond_1
    return-void
.end method
