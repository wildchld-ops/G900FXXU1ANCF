.class public interface abstract Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;
.super Ljava/lang/Object;
.source "ContentViewGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentViewGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotionEventDelegate"
.end annotation


# virtual methods
.method public abstract didUIStealScroll(FF)Z
.end method

.method public abstract hasFixedPageScale()Z
.end method

.method public abstract invokeZoomPicker()V
.end method

.method public abstract sendGesture(IJIIZLandroid/os/Bundle;)Z
.end method

.method public abstract sendTouchEvent(JI[Lorg/chromium/content/browser/TouchPoint;)Z
.end method
