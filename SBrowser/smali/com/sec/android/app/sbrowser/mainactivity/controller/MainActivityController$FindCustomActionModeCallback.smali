.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindCustomActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setActionMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/UI;->showControlsForContextualMenuBar(Landroid/content/Context;)V

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setActionMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->hideControlsForContextualMenuBar()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
