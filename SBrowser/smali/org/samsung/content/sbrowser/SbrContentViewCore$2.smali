.class Lorg/samsung/content/sbrowser/SbrContentViewCore$2;
.super Ljava/lang/Object;
.source "SbrContentViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/content/sbrowser/SbrContentViewCore;->fadeinHandleIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$2;->this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$2;->this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeferredUndoHideHandleRunnableScheduled:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$2;->this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-boolean v0, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForScroll:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$2;->this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-boolean v0, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForPinch:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$2;->this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    #getter for: Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->access$000(Lorg/samsung/content/sbrowser/SbrContentViewCore;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$2;->this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    #getter for: Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->access$000(Lorg/samsung/content/sbrowser/SbrContentViewCore;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->undoHideTemporarily()V

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$2;->this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    #getter for: Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->access$000(Lorg/samsung/content/sbrowser/SbrContentViewCore;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$2;->this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    #getter for: Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->access$000(Lorg/samsung/content/sbrowser/SbrContentViewCore;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->getSbrInsertionHandleController()Lorg/samsung/content/sbrowser/SbrInsertionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->undoHideTemporarily()V

    goto :goto_0
.end method
