.class public Lcom/sec/android/app/sbrowser/toolbarswipe/util/ScrollerCustomDuration;
.super Landroid/widget/Scroller;
.source "ScrollerCustomDuration.java"


# static fields
.field private static final SCROLL_DURATION:I = 0x3e8


# instance fields
.field private mScrollFactor:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    const-wide/high16 v0, 0x4000

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ScrollerCustomDuration;->mScrollFactor:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const-wide/high16 v0, 0x4000

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ScrollerCustomDuration;->mScrollFactor:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    const-wide/high16 v0, 0x4000

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ScrollerCustomDuration;->mScrollFactor:D

    return-void
.end method


# virtual methods
.method public setScrollDurationFactor(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ScrollerCustomDuration;->mScrollFactor:D

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    const/16 v5, 0x3e8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
