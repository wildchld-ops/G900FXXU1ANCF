.class Lcom/sec/android/touchwiz/animator/TwListSortAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwListSortAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->startFadeInTranslateAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwListSortAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwListSortAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwListSortAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwListSortAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    return-void
.end method
