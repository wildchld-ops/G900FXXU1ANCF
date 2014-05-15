.class Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;
.super Ljava/lang/Object;
.source "ExtracterController.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindCustomActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;-><init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$100(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->showControlsForContextualMenuBar()V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$100(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->hideControlsForContextualMenuBar()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
