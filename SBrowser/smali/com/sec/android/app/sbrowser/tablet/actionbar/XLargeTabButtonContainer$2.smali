.class Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$2;
.super Ljava/lang/Object;
.source "XLargeTabButtonContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->animateTabOut(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

.field final synthetic val$tab:Lcom/sec/android/app/sbrowser/common/Tab;

.field final synthetic val$tabButton:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$2;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$2;->val$tabButton:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$2;->val$tab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$2;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$2;->val$tabButton:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->removeTab(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$2;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->access$100(Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$2;->val$tab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
