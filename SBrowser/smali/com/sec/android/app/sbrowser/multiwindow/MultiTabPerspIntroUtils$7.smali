.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;
.super Ljava/lang/Object;
.source "MultiTabPerspIntroUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

.field final synthetic val$finalAlpha:F


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;F)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->val$finalAlpha:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->val$finalAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    #calls: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->getByteArrayForDeletion()V
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->access$200(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroTabThumbnailViewID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getNextTabIfClosed(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getNextTabIfClosed(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    #calls: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->setNextTabId(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->access$300(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;I)V

    :cond_0
    return-void
.end method
