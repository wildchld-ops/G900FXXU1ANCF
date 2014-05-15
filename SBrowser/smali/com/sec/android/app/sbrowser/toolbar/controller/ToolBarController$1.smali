.class Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$1;
.super Ljava/lang/Object;
.source "ToolBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->finishUrlFocusChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

.field final synthetic val$localWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$1;->val$localWindow:Landroid/view/Window;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$1;->val$localWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$1;->val$localWindow:Landroid/view/Window;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mKeyboardResizeModeTask:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->access$002(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
