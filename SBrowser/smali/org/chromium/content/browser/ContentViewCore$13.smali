.class Lorg/chromium/content/browser/ContentViewCore$13;
.super Lorg/chromium/content/browser/input/InsertionHandleController;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore;->getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final AVERAGE_LINE_HEIGHT:I = 0xe


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$13;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/input/InsertionHandleController;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getLineHeight()I
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$13;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$700(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public paste()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$13;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->paste()Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$13;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #calls: Lorg/chromium/content/browser/ContentViewCore;->hideHandles()V
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1900(Lorg/chromium/content/browser/ContentViewCore;)V

    return-void
.end method

.method public pasteByClipboardEx()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$13;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->pasteByClipboardEx()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$13;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #calls: Lorg/chromium/content/browser/ContentViewCore;->hideHandles()V
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1900(Lorg/chromium/content/browser/ContentViewCore;)V

    return-void
.end method

.method public setCursorPosition(II)V
    .locals 5

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$13;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$000(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$13;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$13;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$000(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v1

    int-to-float v2, p1

    int-to-float v3, p2

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore$13;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;
    invoke-static {v4}, Lorg/chromium/content/browser/ContentViewCore;->access$700(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v4

    sub-float/2addr v3, v4

    #calls: Lorg/chromium/content/browser/ContentViewCore;->nativeMoveCaret(IFF)V
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->access$1800(Lorg/chromium/content/browser/ContentViewCore;IFF)V

    :cond_0
    return-void
.end method

.method public showHandle()V
    .locals 0

    invoke-super {p0}, Lorg/chromium/content/browser/input/InsertionHandleController;->showHandle()V

    return-void
.end method
