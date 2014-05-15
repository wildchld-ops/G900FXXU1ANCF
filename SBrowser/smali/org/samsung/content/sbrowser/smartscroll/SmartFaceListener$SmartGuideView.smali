.class Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
.super Landroid/view/View;
.source "SmartFaceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartGuideView"
.end annotation


# instance fields
.field mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

.field mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

.field mCheckAddView:Z

.field mCheckGuideCount:I

.field mCheckInitCount:I

.field mDisplay:Landroid/view/Display;

.field mGuideStatus:I

.field mOrientation:I

.field mProgressStatus:I

.field mViewHeight:I

.field mViewWidth:I

.field mViewX:I

.field mViewY:I

.field mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0xf

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-array v0, v7, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v0, 0x13

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mGuideStatus:I

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mProgressStatus:I

    iput v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckInitCount:I

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckGuideCount:I

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mOrientation:I

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckAddView:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mDisplay:Landroid/view/Display;

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewWidth:I

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewHeight:I

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewX:I

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewY:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v5

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v6

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200b5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v4

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02005e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02005f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v5

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v6

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020062

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v4

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020063

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x5

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020064

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020065

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x7

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020066

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x8

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020067

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x9

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020068

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0xa

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020069

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0xb

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02006a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0xc

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02006b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0xd

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02006c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0xe

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02006d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02006e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v7

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x10

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02006f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x11

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020070

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x12

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020060

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewWidth:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewHeight:I

    return-void
.end method


# virtual methods
.method declared-synchronized hide()V
    .locals 2

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckAddView:Z

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mOrientation:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mOrientation:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-boolean v1, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDraw"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mOrientation:I

    if-nez v1, :cond_4

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mProgressStatus:I

    if-nez v1, :cond_7

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckGuideCount:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mGuideStatus:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckGuideCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckGuideCount:I

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckGuideCount:I

    if-ne v1, v7, :cond_3

    iput v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckGuideCount:I

    :cond_3
    iput v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckInitCount:I

    :goto_2
    return-void

    :cond_4
    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mOrientation:I

    if-ne v1, v5, :cond_1

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckGuideCount:I

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mGuideStatus:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckGuideCount:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_7
    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mProgressStatus:I

    if-ne v1, v5, :cond_8

    iput v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckInitCount:I

    iput v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckGuideCount:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_8
    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mProgressStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    iput v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckGuideCount:I

    iput v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckInitCount:I

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckInitCount:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckInitCount:I

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckInitCount:I

    if-ne v1, v7, :cond_a

    iput v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckInitCount:I

    :cond_a
    iput v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckGuideCount:I

    goto :goto_2
.end method

.method public setStatus(II)V
    .locals 1

    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mProgressStatus:I

    mul-int/lit8 v0, p2, 0x2

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mGuideStatus:I

    return-void
.end method

.method declared-synchronized show()V
    .locals 10

    monitor-enter p0

    const/4 v9, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewX:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewY:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mOrientation:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewWidth:I

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewHeight:I

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewX:I

    iget v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewY:I

    const/16 v5, 0x3e8

    const/16 v6, 0x218

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x33

    :try_start_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    :try_start_2
    sget-boolean v1, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show:ViewWidth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ViewHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show:mViewX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mViewY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mViewY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckAddView:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->invalidate()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v8

    move-object v0, v9

    :goto_2
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_3
    monitor-exit p0

    throw v1

    :catch_1
    move-exception v8

    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_7
    sget-boolean v1, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->mCheckAddView:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v8

    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v8

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v0, v9

    goto :goto_3
.end method
