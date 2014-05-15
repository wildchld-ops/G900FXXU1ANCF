.class Lorg/chromium/content/browser/ContentViewCore$3;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore;->createImeAdapter(Landroid/content/Context;)Lorg/chromium/content/browser/input/ImeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttachedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;
    .locals 2

    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$3$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/ContentViewCore$3$1;-><init>(Lorg/chromium/content/browser/ContentViewCore$3;Landroid/os/Handler;)V

    return-object v0
.end method

.method public onDismissInput()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewClient;->onImeStateChangeRequested(Z)V

    return-void
.end method

.method public onImeEvent(Z)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->onImeEvent()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    #calls: Lorg/chromium/content/browser/ContentViewCore;->undoScrollFocusedEditableNodeIntoViewIfNeeded(Z)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->access$800(Lorg/chromium/content/browser/ContentViewCore;Z)V

    :cond_0
    return-void
.end method

.method public onSetFieldValue()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->scrollFocusedEditableNodeIntoView()V

    return-void
.end method
