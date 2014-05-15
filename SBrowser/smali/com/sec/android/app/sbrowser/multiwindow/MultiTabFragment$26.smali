.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$26;
.super Landroid/os/Handler;
.source "MultiTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->updateFullScreenThumbnail(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$26;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$26;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$26;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$26;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$26;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$26;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$26;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroTabThumbnailViewID()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$26;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
