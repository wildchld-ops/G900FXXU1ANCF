.class Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2$1;
.super Ljava/lang/Object;
.source "TwListSortAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2$1;->this$1:Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2$1;->this$1:Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwListSortAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2$1;->this$1:Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwListSortAnimator;

    #calls: Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->startFadeInTranslateAnim()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwListSortAnimator;)V

    const/4 v0, 0x1

    return v0
.end method
