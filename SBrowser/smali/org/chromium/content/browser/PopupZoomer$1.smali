.class Lorg/chromium/content/browser/PopupZoomer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PopupZoomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/PopupZoomer;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/PopupZoomer;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/PopupZoomer;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private handleTapOrPress(Landroid/view/MotionEvent;Z)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    #getter for: Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z
    invoke-static {v4}, Lorg/chromium/content/browser/PopupZoomer;->access$000(Lorg/chromium/content/browser/PopupZoomer;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    #calls: Lorg/chromium/content/browser/PopupZoomer;->isTouchOutsideArea(FF)Z
    invoke-static {v4, v2, v3}, Lorg/chromium/content/browser/PopupZoomer;->access$100(Lorg/chromium/content/browser/PopupZoomer;FF)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v4, v6}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    #getter for: Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    invoke-static {v4}, Lorg/chromium/content/browser/PopupZoomer;->access$200(Lorg/chromium/content/browser/PopupZoomer;)Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    #calls: Lorg/chromium/content/browser/PopupZoomer;->convertTouchPoint(FF)Landroid/graphics/PointF;
    invoke-static {v4, v2, v3}, Lorg/chromium/content/browser/PopupZoomer;->access$300(Lorg/chromium/content/browser/PopupZoomer;FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    if-eqz p2, :cond_3

    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    #getter for: Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    invoke-static {v4}, Lorg/chromium/content/browser/PopupZoomer;->access$200(Lorg/chromium/content/browser/PopupZoomer;)Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    invoke-interface {v4, v5, v1}, Lorg/chromium/content/browser/PopupZoomer$OnTapListener;->onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_1
    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v4, v6}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    #getter for: Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    invoke-static {v4}, Lorg/chromium/content/browser/PopupZoomer;->access$200(Lorg/chromium/content/browser/PopupZoomer;)Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    invoke-interface {v4, v5, v1}, Lorg/chromium/content/browser/PopupZoomer$OnTapListener;->onSingleTap(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/PopupZoomer$1;->handleTapOrPress(Landroid/view/MotionEvent;Z)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/PopupZoomer$1;->handleTapOrPress(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method
