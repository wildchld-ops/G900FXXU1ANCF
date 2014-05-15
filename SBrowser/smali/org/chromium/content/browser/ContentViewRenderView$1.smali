.class Lorg/chromium/content/browser/ContentViewRenderView$1;
.super Ljava/lang/Object;
.source "ContentViewRenderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewRenderView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewRenderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/ContentViewRenderView;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    sget-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const-string v0, "ContentViewRenderView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$100(Lorg/chromium/content/browser/ContentViewRenderView;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$100(Lorg/chromium/content/browser/ContentViewRenderView;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)I

    move-result v1

    #calls: Lorg/chromium/content/browser/ContentViewRenderView;->nativeSurfaceSetSize(III)V
    invoke-static {v0, v1, p3, p4}, Lorg/chromium/content/browser/ContentViewRenderView;->access$200(Lorg/chromium/content/browser/ContentViewRenderView;III)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$300(Lorg/chromium/content/browser/ContentViewRenderView;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$300(Lorg/chromium/content/browser/ContentViewRenderView;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/chromium/content/browser/ContentViewCore;->onPhysicalBackingSizeChanged(II)V

    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    sget-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const-string v0, "ContentViewRenderView"

    const-string v1, "APPLOGS:surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$100(Lorg/chromium/content/browser/ContentViewRenderView;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$100(Lorg/chromium/content/browser/ContentViewRenderView;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)I

    move-result v1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    #calls: Lorg/chromium/content/browser/ContentViewRenderView;->nativeSurfaceCreated(ILandroid/view/Surface;)V
    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->access$400(Lorg/chromium/content/browser/ContentViewRenderView;ILandroid/view/Surface;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->onReadyToRender()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    const/4 v1, 0x1

    #setter for: Lorg/chromium/content/browser/ContentViewRenderView;->mIsSurfaceReady:Z
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewRenderView;->access$502(Lorg/chromium/content/browser/ContentViewRenderView;Z)Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    sget-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const-string v0, "ContentViewRenderView"

    const-string v1, "APPLOGS:surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$100(Lorg/chromium/content/browser/ContentViewRenderView;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$100(Lorg/chromium/content/browser/ContentViewRenderView;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    #getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)I

    move-result v1

    #calls: Lorg/chromium/content/browser/ContentViewRenderView;->nativeSurfaceDestroyed(I)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewRenderView;->access$600(Lorg/chromium/content/browser/ContentViewRenderView;I)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    const/4 v1, 0x0

    #setter for: Lorg/chromium/content/browser/ContentViewRenderView;->mIsSurfaceReady:Z
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewRenderView;->access$502(Lorg/chromium/content/browser/ContentViewRenderView;Z)Z

    return-void
.end method
