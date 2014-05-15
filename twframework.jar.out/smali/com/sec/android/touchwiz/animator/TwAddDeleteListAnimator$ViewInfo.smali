.class Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;
.super Ljava/lang/Object;
.source "TwAddDeleteListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewInfo"
.end annotation


# instance fields
.field bottom:I

.field fadeout:Z

.field oldPosition:I

.field top:I

.field viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;III)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->fadeout:Z

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    iput p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->oldPosition:I

    iput p3, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    iput p4, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->bottom:I

    return-void
.end method


# virtual methods
.method public recycleBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
