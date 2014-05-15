.class Lorg/chromium/content/browser/ContentViewCore$9;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore;->undoScrollFocusedEditableNodeIntoViewIfNeeded(Z)V
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

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$9;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$9;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$000(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$9;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$9;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$000(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v1

    #calls: Lorg/chromium/content/browser/ContentViewCore;->nativeUndoScrollFocusedEditableNodeIntoView(I)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->access$1700(Lorg/chromium/content/browser/ContentViewCore;I)V

    :cond_0
    return-void
.end method
