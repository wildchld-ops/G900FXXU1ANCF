.class Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$2;
.super Ljava/lang/Object;
.source "LoadQuickLaunchXlargeView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->animateQuickLaunch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$900(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$900(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$900(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$900(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mContentContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->access$1200(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
