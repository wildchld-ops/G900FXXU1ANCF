.class public interface abstract Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;
.super Ljava/lang/Object;
.source "TwSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SweepActionBarCallback"
.end annotation


# static fields
.field public static final SWEEP_STATE_AUTO_FLING:I = 0x2

.field public static final SWEEP_STATE_TOUCH_DOWN:I = 0x0

.field public static final SWEEP_STATE_TOUCH_DRAGGING:I = 0x1


# virtual methods
.method public abstract onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
.end method

.method public abstract onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
.end method

.method public abstract onListShouldDrawSelector(IFI)Z
.end method
