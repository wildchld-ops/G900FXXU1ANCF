.class public Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnSweepListener;,
        Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnItemDeleteListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mRedirectClass:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;->mRedirectClass:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    return-void
.end method


# virtual methods
.method public getForegroundTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;->mRedirectClass:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->getForegroundTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method public getRestoreItemListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;->mRedirectClass:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->getRestoreItemListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public setForegroundViewResId(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;->mRedirectClass:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->setForegroundViewResId(I)V

    return-void
.end method

.method public setOnItemDeleteListener(Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnItemDeleteListener;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;->mRedirectClass:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$1;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnItemDeleteListener;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->setOnItemDeleteListener(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnItemDeleteListener;)V

    goto :goto_0
.end method

.method public setOnSweepListener(Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnSweepListener;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;->mRedirectClass:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$2;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnSweepListener;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->setOnSweepListener(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;)V

    goto :goto_0
.end method
