.class Lorg/chromium/content/browser/ContentViewCore$12;
.super Lorg/chromium/content/browser/input/SelectionHandleController;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/View;Lorg/samsung/content/sbrowser/SelectionZoomer;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$12;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, p2, p3, p4}, Lorg/chromium/content/browser/input/SelectionHandleController;-><init>(Landroid/view/View;Lorg/samsung/content/sbrowser/SelectionZoomer;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;)V

    return-void
.end method


# virtual methods
.method public selectBetweenCoordinates(IIII)V
    .locals 7

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$12;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$000(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$12;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$12;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$000(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v1

    int-to-float v2, p1

    int-to-float v3, p2

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore$12;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;
    invoke-static {v4}, Lorg/chromium/content/browser/ContentViewCore;->access$700(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v4

    sub-float/2addr v3, v4

    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore$12;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;
    invoke-static {v6}, Lorg/chromium/content/browser/ContentViewCore;->access$700(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeSelectBetweenCoordinates(IFFFF)V

    :cond_1
    return-void
.end method

.method public showHandlesAt(IIIIII)V
    .locals 7

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->showHandlesAt(IIIIII)V

    return-void
.end method
