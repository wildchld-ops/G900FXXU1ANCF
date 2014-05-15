.class public Lcom/samsung/contacts/widget/ContactPhotoView;
.super Landroid/widget/ImageView;
.source "ContactPhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;,
        Lcom/samsung/contacts/widget/ContactPhotoView$TwScaleType;
    }
.end annotation


# instance fields
.field private mBlurredBitmap:Landroid/graphics/Bitmap;

.field private mBorderWidth:I

.field private mCriticalPoint:I

.field private mDestRect:Landroid/graphics/Rect;

.field private mFrameX:I

.field private mFrameY:I

.field private mFrameYWithoutCompanyName:I

.field private mHasCompanyName:Z

.field private mIsBlurEffectAlwaysOn:Z

.field private mIsBlurEffectOn:Z

.field private mLargePhotoSize:I

.field private mNewDrawable:Landroid/graphics/drawable/Drawable;

.field private mOriginalBitmap:Landroid/graphics/Bitmap;

.field private mOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

.field private mPhotoBlurTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoSize:I

.field private mPnt:Landroid/graphics/Paint;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mIsBlurEffectOn:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mIsBlurEffectAlwaysOn:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mHasCompanyName:Z

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mCriticalPoint:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoSize:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBorderWidth:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameX:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameY:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameYWithoutCompanyName:I

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoBlurTaskList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/samsung/contacts/widget/ContactPhotoView;->initFromAttributest(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mIsBlurEffectOn:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mIsBlurEffectAlwaysOn:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mHasCompanyName:Z

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mCriticalPoint:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoSize:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBorderWidth:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameX:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameY:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameYWithoutCompanyName:I

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoBlurTaskList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/widget/ContactPhotoView;->initFromAttributest(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mIsBlurEffectOn:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mIsBlurEffectAlwaysOn:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mHasCompanyName:Z

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mCriticalPoint:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoSize:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBorderWidth:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameX:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameY:I

    iput v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameYWithoutCompanyName:I

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoBlurTaskList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/widget/ContactPhotoView;->initFromAttributest(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private ApplyBlurEffect()V
    .locals 2

    const-string v0, "ContactPhotoView"

    const-string v1, "ApplyBlurEffect()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/widget/ContactPhotoView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/widget/ContactPhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v0, "ContactPhotoView"

    const-string v1, "ApplyBlurEffect() - super.setImageDrawable(mNewDrawable)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private ApplyHighQualityPhoto()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/widget/ContactPhotoView;Landroid/graphics/drawable/Drawable;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/widget/ContactPhotoView;->makeBlurEffectIfNeeded(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/widget/ContactPhotoView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/widget/ContactPhotoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/widget/ContactPhotoView;->ApplyBlurEffect()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/contacts/widget/ContactPhotoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/widget/ContactPhotoView;->ApplyHighQualityPhoto()V

    return-void
.end method

.method private initFromAttributest(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/contacts/R$styleable;->ContactPhotoView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/contacts/widget/ContactPhotoView$TwScaleType;->parse(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoSize:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mCriticalPoint:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBorderWidth:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameX:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameY:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameYWithoutCompanyName:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mIsBlurEffectOn:Z

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/widget/ContactPhotoView;->setBlurEffectAlways(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/widget/ContactPhotoView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_1
    iget v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoSize:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/ContactPhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b018a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoSize:I

    :cond_2
    iget v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/ContactPhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b018b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    :cond_3
    iget v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mCriticalPoint:I

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/ContactPhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mCriticalPoint:I

    :cond_4
    iget v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBorderWidth:I

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/ContactPhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBorderWidth:I

    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    return-void
.end method

.method private makeBlurEffectIfNeeded(Landroid/graphics/drawable/Drawable;)I
    .locals 14

    const/16 v13, 0xc

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x0

    const-string v7, "ContactPhotoView"

    const-string v9, "makeBlurEffectIfNeeded()"

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    instance-of v7, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v7, :cond_5

    const-string v7, "ContactPhotoView"

    const-string v9, "TransitionDrawable"

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    instance-of v7, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :cond_1
    iget-boolean v7, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mIsBlurEffectAlwaysOn:Z

    if-nez v7, :cond_2

    iget v7, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mCriticalPoint:I

    if-gt v2, v7, :cond_4

    :cond_2
    if-eqz v1, :cond_4

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/ContactPhotoView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v13}, Lcom/android/contacts/util/ContactPhotoUtils;->fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/ContactPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v7, 0x2

    new-array v0, v7, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v0, v11

    aput-object v3, v0, v12

    new-instance v6, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0x3e8

    :goto_0
    return v7

    :cond_3
    move v7, v8

    goto :goto_0

    :cond_4
    iput-object v10, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iput-object v10, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0x3e9

    goto :goto_0

    :cond_5
    instance-of v7, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_a

    const-string v7, "ContactPhotoView"

    const-string v9, "BitmapDrawable"

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, p1

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :cond_6
    iget-boolean v7, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mIsBlurEffectAlwaysOn:Z

    if-nez v7, :cond_7

    iget v7, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mCriticalPoint:I

    if-gt v2, v7, :cond_9

    :cond_7
    if-eqz v1, :cond_9

    iput-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/ContactPhotoView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v13}, Lcom/android/contacts/util/ContactPhotoUtils;->fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_8

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/ContactPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0x3e8

    goto :goto_0

    :cond_8
    move v7, v8

    goto :goto_0

    :cond_9
    iput-object v10, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iput-object v10, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0x3e9

    goto :goto_0

    :cond_a
    move v7, v8

    goto :goto_0
.end method


# virtual methods
.method public hasCompanyName(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mHasCompanyName:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoBlurTaskList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoBlurTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoBlurTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoBlurTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoBlurTaskList:Ljava/util/ArrayList;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/widget/ContactPhotoView;->recycle()V

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mIsBlurEffectOn:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mIsBlurEffectAlwaysOn:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mCriticalPoint:I

    if-gt v4, v5, :cond_1

    iget v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoSize:I

    :goto_0
    const-string v4, "ContactPhotoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDraw()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameX:I

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    :goto_1
    iget v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameY:I

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v3, v4, 0x2

    :goto_2
    iget-object v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    add-int v5, v2, v0

    add-int v6, v3, v0

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v7, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBorderWidth:I

    div-int/lit8 v1, v4, 0x2

    iget-object v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    iget v5, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBorderWidth:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    add-int v5, v2, v1

    add-int v6, v3, v1

    add-int v7, v2, v0

    sub-int/2addr v7, v1

    add-int v8, v3, v0

    sub-int/2addr v8, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoSize:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameX:I

    goto :goto_1

    :cond_4
    iget-boolean v4, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mHasCompanyName:Z

    if-eqz v4, :cond_5

    iget v3, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameY:I

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mFrameYWithoutCompanyName:I

    goto :goto_2
.end method

.method public recycle()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ContactPhotoView"

    const-string v1, "recycle()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    return-void
.end method

.method public setBlurEffectAlways(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mIsBlurEffectAlwaysOn:Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const-string v0, "ContactPhotoView"

    const-string v1, "setImageBitmap()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const-string v1, "ContactPhotoView"

    const-string v2, "setImageDrawable()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mIsBlurEffectOn:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;

    invoke-direct {v0, p0, p1}, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;-><init>(Lcom/samsung/contacts/widget/ContactPhotoView;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mPhotoBlurTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 2

    const-string v0, "ContactPhotoView"

    const-string v1, "setImageResource()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/ContactPhotoView;->recycle()V

    iget-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/widget/ContactPhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
