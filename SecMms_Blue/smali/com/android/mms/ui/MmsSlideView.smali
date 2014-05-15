.class public Lcom/android/mms/ui/MmsSlideView;
.super Landroid/widget/LinearLayout;
.source "MmsSlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsSlideView$TaskStack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsSlideView"

.field private static sEmptyBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private locationModel:Lcom/samsung/mms/model/LocationVcardModel;

.field private mActiveTextView:Landroid/widget/TextView;

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlay:Landroid/widget/ImageView;

.field private mAudioText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHighlight:Ljava/util/regex/Pattern;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageModel:Lcom/android/mms/model/ImageModel;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsDelayedMessage:Z

.field private mIsFailedMessage:Z

.field private mIsScheduledMessage:Z

.field private mIsTopLayout:Z

.field private mLocationAddressView:Landroid/widget/TextView;

.field private mLocationImageView:Landroid/widget/ImageView;

.field private mLocationTitleView:Landroid/widget/TextView;

.field private mLocationView:Landroid/widget/LinearLayout;

.field private mMsgListItem:Lcom/android/mms/ui/MessageListItem;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSlide:Lcom/android/mms/model/SlideModel;

.field private mSlideMediaView:Landroid/widget/FrameLayout;

.field private mTempPoint:Landroid/graphics/Point;

.field private mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

.field private mTextViewBottom:Landroid/widget/TextView;

.field private mTextViewTop:Landroid/widget/TextView;

.field private mVideoPlayButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsDelayedMessage:Z

    new-instance v0, Lcom/android/mms/ui/MmsSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSlideView$1;-><init>(Lcom/android/mms/ui/MmsSlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsDelayedMessage:Z

    new-instance v0, Lcom/android/mms/ui/MmsSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSlideView$1;-><init>(Lcom/android/mms/ui/MmsSlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsDelayedMessage:Z

    new-instance v0, Lcom/android/mms/ui/MmsSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSlideView$1;-><init>(Lcom/android/mms/ui/MmsSlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsSlideView;)Lcom/android/mms/ui/MessageListItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    return-object v0
.end method

.method private calculateDrmImageBounds(Landroid/widget/ImageView;)V
    .locals 2

    const/4 v1, -0x2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private static getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    sget-object v1, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const v1, 0x7f020022

    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v1, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    const-string v1, "Mms/MmsSlideView"

    const-string v2, "OutOfMemoryError caught @ BitmapFactory.decodeResource and throw"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private loadImage()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020021

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private preCalculateImageBoudns(Landroid/widget/ImageView;II)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    invoke-static {v1, p2, p3}, Lcom/android/mms/model/ImageModel;->calcThumbnailImageBounds(Landroid/graphics/Point;II)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private setImage(Lcom/android/mms/model/ImageModel;Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {p1, v3}, Lcom/android/mms/model/ImageModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    const-string v3, "Mms/MmsSlideView"

    const-string v4, "setImage"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    if-eqz v1, :cond_0

    const-string v3, "Mms/MmsSlideView"

    const-string v4, "same image"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsSlideView;->calculateDrmImageBounds(Landroid/widget/ImageView;)V

    :goto_1
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->getInstance()Lcom/android/mms/ui/MmsSlideView$TaskStack;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->removeTask(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->hasCachedBitmap()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->loadImage()Z

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->onImageLoaded()V

    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Mms/MmsSlideView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/ui/MmsSlideView;->preCalculateImageBoudns(Landroid/widget/ImageView;II)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p0}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->addTask(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->loadImage()Z

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->onImageLoaded()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private setIsTopLayout(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewTop:Landroid/widget/TextView;

    :goto_0
    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean p1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->applyTextProperty(Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private syncModel()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    return-void
.end method


# virtual methods
.method public applyTextProperty(Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;)V
    .locals 3

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSizeUnit:I

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget v2, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mLinkMask:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    return-void
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isCombineFwdMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->openModel(Landroid/content/Context;Lcom/android/mms/model/Model;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0241

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0242

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b0245

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    const v0, 0x7f0b0246

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    const v0, 0x7f0b0243

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b0224

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0215

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    const v0, 0x7f0b01db

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioInfoView:Landroid/view/View;

    const v0, 0x7f0b0247

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    const v0, 0x7f0b0248

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    const v0, 0x7f0b01d9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewTop:Landroid/widget/TextView;

    const v0, 0x7f0b01e3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewTop:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onImageLoaded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MmsSlideView;->getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem;->mOnSearchListClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public present(ILcom/android/mms/model/SlideModel;Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/MmsSlideView;->present(ILcom/android/mms/model/SlideModel;Lcom/android/mms/ui/MessageListItem;Z)Z

    move-result v0

    return v0
.end method

.method public present(ILcom/android/mms/model/SlideModel;Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->reset()V

    if-ne p1, v2, :cond_4

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsSlideView;->setIsTopLayout(Z)V

    const-string v1, "NGM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "present layoutType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    iput-object p3, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageListItem;->mOnSearchListClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasLocation()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v1}, Lcom/samsung/mms/model/LocationVcardModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v2}, Lcom/samsung/mms/model/LocationVcardModel;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v4}, Lcom/samsung/mms/model/LocationVcardModel;->getFormattedAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v5}, Lcom/samsung/mms/model/LocationVcardModel;->getContactNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/mms/ui/MmsSlideView;->setLocation(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSlideView;->setAudio(Lcom/android/mms/model/AudioModel;)V

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/android/mms/ui/MmsSlideView;->setText(Lcom/android/mms/model/TextModel;Z)V

    :goto_3
    if-nez v0, :cond_3

    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/mms/ui/MmsSlideView;->setPadding(IIII)V

    :cond_3
    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->syncModel()V

    return v0

    :cond_4
    move v1, v3

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MmsSlideView;->setImage(Lcom/android/mms/model/ImageModel;Z)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSlideView;->setVideo(Lcom/android/mms/model/VideoModel;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSlideView;->setText(Lcom/android/mms/model/TextModel;)V

    goto :goto_3

    :cond_9
    if-nez v0, :cond_a

    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/mms/ui/MmsSlideView;->setPadding(IIII)V

    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSlideView;->setTextVisibility(Z)V

    goto :goto_4
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioInfoView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void
.end method

.method public run()V
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->loadImage()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/MmsSlideView$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsSlideView$2;-><init>(Lcom/android/mms/ui/MmsSlideView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setAudio(Lcom/android/mms/model/AudioModel;)V
    .locals 4

    const v3, 0x7f0c00b1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSlideView"

    const-string v1, "set DRM Audio"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/MmsSlideView"

    const-string v1, "set Audio"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    const v1, 0x7f0202cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setHighlight(Ljava/util/regex/Pattern;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mHighlight:Ljava/util/regex/Pattern;

    return-void
.end method

.method public setIsDelayedMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsDelayedMessage:Z

    return-void
.end method

.method public setIsFailedMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    return-void
.end method

.method public setIsScheduledMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    return-void
.end method

.method public setLocation(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "NGM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocation Called: locationName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " locationAddr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200e8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const-string v0, ""

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public setText(Lcom/android/mms/model/TextModel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsSlideView;->setText(Lcom/android/mms/model/TextModel;Z)V

    return-void
.end method

.method public setText(Lcom/android/mms/model/TextModel;Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MmsSlideView;->setTextVisibility(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Mms/MmsSlideView"

    const-string v2, "set text"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->getBytesForDisplayFolding()I

    move-result v1

    invoke-static {v8, v1}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MmsSlideView;->setTextVisibility(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v7

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    iget-object v1, v1, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v1

    invoke-static {v8, v10, v1, v0, v7}, Lcom/android/mms/ui/MessageListItem;->formatBody(Ljava/lang/String;ZZLandroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v3

    const-string v5, "Mms/MmsSlideView"

    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/UIUtils;->highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsDelayedMessage:Z

    if-eqz v1, :cond_5

    :cond_3
    move v1, v10

    :goto_2
    invoke-static {v2, v1}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MmsSlideView;->setTextVisibility(Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x3

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_5
    move v1, v9

    goto :goto_2
.end method

.method public setTextVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewTop:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setVideo(Lcom/android/mms/model/VideoModel;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Mms/MmsSlideView"

    const-string v4, "set DRM Video"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020021

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsSlideView;->calculateDrmImageBounds(Landroid/widget/ImageView;)V

    :goto_0
    if-nez v0, :cond_3

    const-string v3, "Mms/MmsSlideView"

    const-string v4, "video thumbnail not created"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020029

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->isDrmProtected()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/ui/MmsSlideView;->preCalculateImageBoudns(Landroid/widget/ImageView;II)V

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_1
    const-string v3, "Mms/MmsSlideView"

    const-string v4, "set Video"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "Mms/MmsSlideView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public setVisibility(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void
.end method
