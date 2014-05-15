.class Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "ContentVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentVideoView;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ContentVideoView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I
    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I
    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v3, v3}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I
    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    invoke-static {v2, p1}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->getDefaultSize(II)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I
    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    invoke-static {v2, p2}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->getDefaultSize(II)I

    move-result v0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I
    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I
    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I
    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v3

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I
    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    mul-int/2addr v2, v1

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v3

    div-int v0, v2, v3

    :cond_1
    :goto_1
    invoke-virtual {p0, v1, v0}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I
    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v3

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I
    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v3

    div-int v1, v2, v3

    goto :goto_1
.end method
