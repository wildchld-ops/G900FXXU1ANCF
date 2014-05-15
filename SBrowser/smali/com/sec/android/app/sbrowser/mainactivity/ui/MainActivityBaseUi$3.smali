.class Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$3;
.super Ljava/lang/Object;
.source "MainActivityBaseUi.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->removeTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

.field final synthetic val$mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$3;->val$mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$3;->val$mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
