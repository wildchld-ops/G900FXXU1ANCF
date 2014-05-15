.class Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;
.super Ljava/lang/Object;
.source "TwAddDeleteGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewInfo"
.end annotation


# instance fields
.field bottom:I

.field fadeout:Z

.field left:I

.field oldPosition:I

.field right:I

.field top:I

.field viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->fadeout:Z

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    iput p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->oldPosition:I

    iput p4, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->top:I

    iput p3, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->left:I

    iput p5, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->right:I

    iput p6, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->bottom:I

    return-void
.end method


# virtual methods
.method public recycleBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
