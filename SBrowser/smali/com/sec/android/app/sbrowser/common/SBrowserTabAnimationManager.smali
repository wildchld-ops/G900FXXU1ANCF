.class public Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;
.super Ljava/lang/Object;
.source "SBrowserTabAnimationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SBrowserTabAnimationManager"


# instance fields
.field animLayout:Landroid/view/View;

.field currentView:Landroid/widget/ImageView;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDeleteTiming:Z

.field private mInterpolator:Lcom/sec/android/app/sbrowser/common/TabAnimationInterpolator;

.field public mIsCreateAnimation:Z

.field public mIsLayoutDisabled:Z

.field private mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field public viewstub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mDeleteTiming:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mInterpolator:Lcom/sec/android/app/sbrowser/common/TabAnimationInterpolator;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mIsCreateAnimation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mIsLayoutDisabled:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->viewstub:Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->animLayout:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    const-string v0, "SBrowserTabAnimationManager"

    const-string v1, "SBrowserTabAnimationManager is created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/TabAnimationInterpolator;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/TabAnimationInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mInterpolator:Lcom/sec/android/app/sbrowser/common/TabAnimationInterpolator;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a0207

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->viewstub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->viewstub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0208

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->animLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->animLayout:Landroid/view/View;

    const v1, 0x7f0a0263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-object v0
.end method


# virtual methods
.method public destroyAll()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SBrowserTabAnimationManager"

    const-string v1, "destroyAll() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mInterpolator:Lcom/sec/android/app/sbrowser/common/TabAnimationInterpolator;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->viewstub:Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->animLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    return-void
.end method

.method public disableAnimatedLayout()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mIsCreateAnimation:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mIsLayoutDisabled:Z

    if-nez v0, :cond_1

    const-string v0, "SBrowserTabAnimationManager"

    const-string v1, "disableAnimatedLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->animLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->animLayout:Landroid/view/View;

    const v1, 0x7f0201c6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mIsLayoutDisabled:Z

    :cond_1
    return-void
.end method

.method public getAnimListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;)V

    return-object v0
.end method

.method public getCurrentTabBitmap(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmapRGB565FromCompositor()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mDeleteTiming:Z

    :goto_0
    const-string v2, "SBrowserTabAnimationManager"

    const-string v3, "getCurrentTabBitmap completed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mDeleteTiming:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SBrowserTabAnimationManager"

    const-string v3, "OutOfMemoryError thrown while trying to fetch a bitmap."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mDeleteTiming:Z

    goto :goto_1
.end method

.method public tabCreateDeleteAnimation(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    const-string v1, "SBrowserTabAnimationManager"

    const-string v2, "tabCreateAnimation is called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mIsCreateAnimation:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->animLayout:Landroid/view/View;

    const v2, 0x7f0201c6

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->animLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f050018

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mIsLayoutDisabled:Z

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->getAnimListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mInterpolator:Lcom/sec/android/app/sbrowser/common/TabAnimationInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setIsAirBrowseRunning(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->animLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mDeleteTiming:Z

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mDeleteTiming:Z

    const-string v1, "SBrowserTabAnimationManager"

    const-string v2, "tabDeleteAnimation  is called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mIsCreateAnimation:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const-string v1, "SBrowserTabAnimationManager"

    const-string v2, "tabDeleteAnimation returns, mBitmap == null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f050019

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1
.end method
