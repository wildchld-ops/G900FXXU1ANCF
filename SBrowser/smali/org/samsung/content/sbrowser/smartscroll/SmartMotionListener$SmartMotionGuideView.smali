.class Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;
.super Landroid/view/View;
.source "SmartMotionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartMotionGuideView"
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

.field mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

.field mDisplay:Landroid/view/Display;

.field private mMotionState:I

.field mOrientation:I

.field mScrollState:I

.field mViewHeight:I

.field mViewWidth:I

.field mViewX:I

.field mViewY:I

.field mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;


# direct methods
.method public constructor <init>(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0xf

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "SmartMotionGuideView"

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->TAG:Ljava/lang/String;

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mMotionState:I

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mScrollState:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mDisplay:Landroid/view/Display;

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewWidth:I

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewHeight:I

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewX:I

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewY:I

    iput v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mOrientation:I

    new-array v0, v7, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v0, 0x13

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v5

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v6

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0201bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v4

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02005e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02005f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v5

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v6

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020062

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v4

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020063

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x5

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020064

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020065

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x7

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020066

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x8

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020067

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x9

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020068

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0xa

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020069

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0xb

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02006a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0xc

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02006b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0xd

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02006c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0xe

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02006d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02006e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v7

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x10

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02006f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x11

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020070

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableGuide:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x12

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020060

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewWidth:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewHeight:I

    return-void
.end method


# virtual methods
.method add()V
    .locals 9

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewX:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewY:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mOrientation:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewWidth:I

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewHeight:I

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewX:I

    iget v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewY:I

    const/16 v5, 0x3e8

    const/16 v6, 0x218

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-boolean v1, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add:ViewWidth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ViewHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->invalidate()V

    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method hide()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mOrientation:I

    if-nez v1, :cond_3

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    :goto_0
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mMotionState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "motion_state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mMotionState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mBmDrawableInit:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method public setMotionState(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mMotionState:I

    return-void
.end method

.method declared-synchronized show()Z
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewX:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewY:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mOrientation:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewWidth:I

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewHeight:I

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewX:I

    iget v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewY:I

    const/16 v5, 0x3e8

    const/16 v6, 0x218

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-boolean v1, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show:ViewWidth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ViewHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mViewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->invalidate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catch_0
    move-exception v8

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
