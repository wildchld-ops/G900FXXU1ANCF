.class public Lcom/sec/android/touchwiz/widget/TwSeekBar;
.super Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;
.source "TwSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;,
        Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method onHoverChanged(III)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;->onHoverChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onHoverChanged(III)V

    return-void
.end method

.method onProgressRefresh(FZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onProgressRefresh(FZ)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V

    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;->onStartTrackingHover(Lcom/sec/android/touchwiz/widget/TwSeekBar;I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStartTrackingHover(III)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V

    :cond_0
    return-void
.end method

.method onStopTrackingHover()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;->onStopTrackingHover(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingHover()V

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V

    :cond_0
    return-void
.end method

.method public setOnSeekBarHoverListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    return-void
.end method

.method public setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    return-void
.end method
