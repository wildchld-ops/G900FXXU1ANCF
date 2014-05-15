.class Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickAccessGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->animateReorder(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mReorderAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$2102(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->updateEnableState()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1800(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mReorderAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$2102(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->updateEnableState()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1800(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    return-void
.end method
