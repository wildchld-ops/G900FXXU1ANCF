.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;
.super Ljava/lang/Object;
.source "MultiTabIntroUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->animateTempImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setisClickDisabled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmFirstCreated(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->loadBackgroundThumbnail()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmCurrentViewingTabIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmCurrentViewingTabIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabCloseButtonViewID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x3dcccccd

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->RecycleTabManagerFullBitmap()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setisClickDisabled(Z)V

    return-void
.end method
