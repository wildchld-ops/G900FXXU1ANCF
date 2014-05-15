.class Lcom/sec/android/app/sbrowser/common/UndoBarController$1;
.super Ljava/lang/Object;
.source "UndoBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/UndoBarController;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/UndoBarController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/UndoBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController$1;->this$0:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController$1;->this$0:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/UndoBarController;->misUndoBarClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->access$002(Lcom/sec/android/app/sbrowser/common/UndoBarController;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController$1;->this$0:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController$1;->this$0:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    #getter for: Lcom/sec/android/app/sbrowser/common/UndoBarController;->mUndoListener:Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->access$100(Lcom/sec/android/app/sbrowser/common/UndoBarController;)Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;->onUndo()V

    return-void
.end method
