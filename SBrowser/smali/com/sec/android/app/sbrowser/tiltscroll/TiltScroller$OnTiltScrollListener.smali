.class public interface abstract Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;
.super Ljava/lang/Object;
.source "TiltScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTiltScrollListener"
.end annotation


# virtual methods
.method public abstract canScroll(I)Z
.end method

.method public abstract doTiltScrollBy(FF)Z
.end method

.method public abstract getActualScroll(II)F
.end method

.method public abstract onBezelTouchFinishNotified()V
.end method

.method public abstract onBezelTouchStartNotified(II)V
.end method

.method public abstract onTiltStarted()V
.end method
