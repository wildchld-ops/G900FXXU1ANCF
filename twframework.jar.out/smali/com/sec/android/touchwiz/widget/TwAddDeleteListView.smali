.class public Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwAddDeleteListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field animator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;->animator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    return-void
.end method


# virtual methods
.method public setDelete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;->animator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->setDelete(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setInsert(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;->animator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->setInsert(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setOnAddDeleteListener(Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;->animator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->setOnAddDeleteListener(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;)V

    goto :goto_0
.end method
