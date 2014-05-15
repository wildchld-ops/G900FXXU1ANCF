.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->addTabView(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

.field final synthetic val$isIncognito:Z

.field final synthetic val$rl:Landroid/widget/LinearLayout;

.field final synthetic val$tabid:I

.field final synthetic val$thumbnail:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/LinearLayout;IZLandroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->val$rl:Landroid/widget/LinearLayout;

    iput p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->val$tabid:I

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->val$isIncognito:Z

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->val$thumbnail:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v5

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_DROP_ENABLED:Z

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->m_shouldNotDragTab:Z
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$500(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v3, v4

    :goto_0
    return v3

    :cond_2
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    const/4 v1, 0x0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabBackgroundWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->val$tabid:I

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->val$isIncognito:Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;->val$thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->startTabDrag(IZLandroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
