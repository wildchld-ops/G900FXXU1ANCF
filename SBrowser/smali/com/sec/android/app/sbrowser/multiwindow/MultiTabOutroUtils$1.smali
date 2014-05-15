.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;
.super Landroid/os/Handler;
.source "MultiTabOutroUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->animateTempImage(Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

.field final synthetic val$multitabHeight:I

.field final synthetic val$multitabWidth:I

.field final synthetic val$tabid:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;III)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->val$multitabHeight:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->val$multitabWidth:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->val$tabid:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const v6, 0x7f0a0191

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const-string v4, "Malli"

    const-string v5, "Check the layout is null1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v5

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v4

    if-ne v4, v9, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v5

    if-lt v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getFullScreenSetting()Z

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    new-instance v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Z)V

    iput-object v5, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->val$multitabHeight:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setMinHeight(I)V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v4

    if-ne v4, v9, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v2, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setMaxHeight(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setTopInit(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setTopLater(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setleftbefore(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setleftafter(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->val$multitabWidth:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setrightbefore(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v4

    if-ne v4, v11, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v4, v3, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setrightafter(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setleftafter(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v4

    if-ne v4, v11, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    sget v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_LANDSCAPE_INTRO_ANIMATION_DURATION:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setDuration(J)V

    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    new-instance v5, Lcom/sec/android/app/sbrowser/multiwindow/CubiceaseineaseoutOutro;

    invoke-direct {v5}, Lcom/sec/android/app/sbrowser/multiwindow/CubiceaseineaseoutOutro;-><init>()V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    invoke-virtual {v4, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setFillAfter(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    new-instance v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->val$tabid:I

    invoke-interface {v4, v5, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->bottomBarExitAnimation(IZ)V

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSuperView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowFrameID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->layout:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    if-nez v1, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v2, v4

    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v4

    if-ne v4, v9, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v2, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto/16 :goto_2

    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->an:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;

    sget v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_PORTRAIT_INTRO_ANIMATION_DURATION:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->setDuration(J)V

    goto/16 :goto_3

    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    check-cast v4, Landroid/app/Activity;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowFrameID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0
.end method
