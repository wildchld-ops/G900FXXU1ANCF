.class Lorg/chromium/content/browser/ContentViewCore$3$1;
.super Landroid/os/ResultReceiver;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore$3;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/ContentViewCore$3;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore$3;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$3;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrFormNavigationFlag()Z

    move-result v2

    if-ne v0, v2, :cond_2

    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$3;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$3;

    iget-object v1, v1, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$900(Lorg/chromium/content/browser/ContentViewCore;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$3;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->scrollFocusedEditableNodeIntoView()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$3;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #calls: Lorg/chromium/content/browser/ContentViewCore;->undoScrollFocusedEditableNodeIntoViewIfNeeded(Z)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->access$800(Lorg/chromium/content/browser/ContentViewCore;Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$3;

    iget-object v2, v2, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v2

    if-eq p1, v3, :cond_3

    if-nez p1, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/ContentViewClient;->onImeStateChangeRequested(Z)V

    if-ne p1, v3, :cond_5

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$3;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$3;

    iget-object v1, v1, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$900(Lorg/chromium/content/browser/ContentViewCore;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$3;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->scrollFocusedEditableNodeIntoView()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$3;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #calls: Lorg/chromium/content/browser/ContentViewCore;->undoScrollFocusedEditableNodeIntoViewIfNeeded(Z)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->access$800(Lorg/chromium/content/browser/ContentViewCore;Z)V

    goto :goto_0
.end method
