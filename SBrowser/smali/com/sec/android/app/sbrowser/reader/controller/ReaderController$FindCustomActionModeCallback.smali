.class Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$FindCustomActionModeCallback;
.super Ljava/lang/Object;
.source "ReaderController.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindCustomActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$FindCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$FindCustomActionModeCallback;-><init>(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)V

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$FindCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mUi:Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$100(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;->showControlsForContextualMenuBar()V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$FindCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mUi:Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$100(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;->hideControlsForContextualMenuBar()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
