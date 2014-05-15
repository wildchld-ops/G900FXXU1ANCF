.class Lorg/chromium/content/browser/ZoomManager$ZoomListener;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ZoomManager;


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/ZoomManager;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ZoomManager$ZoomListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/ZoomManager;Lorg/chromium/content/browser/ZoomManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ZoomManager$ZoomListener;-><init>(Lorg/chromium/content/browser/ZoomManager;)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ZoomListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;
    invoke-static {v0}, Lorg/chromium/content/browser/ZoomManager;->access$1300(Lorg/chromium/content/browser/ZoomManager;)Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ZoomListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ZoomManager;->updateZoomControls()V

    :cond_0
    return-void
.end method

.method public onZoom(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ZoomListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/content/browser/ZoomManager;->access$800(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomIn()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ZoomListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/content/browser/ZoomManager;->access$800(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomOut()Z

    goto :goto_0
.end method
