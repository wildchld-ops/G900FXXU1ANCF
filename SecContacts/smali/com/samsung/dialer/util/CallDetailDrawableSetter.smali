.class public Lcom/samsung/dialer/util/CallDetailDrawableSetter;
.super Ljava/lang/Object;
.source "CallDetailDrawableSetter.java"


# instance fields
.field private mCompressed:Landroid/graphics/Bitmap;

.field private mContactId:J

.field private mContext:Landroid/content/Context;

.field private mDurationInMillis:I

.field private mPreviousDrawable:Landroid/graphics/drawable/Drawable;

.field private mTarget:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mDurationInMillis:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mContactId:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mDurationInMillis:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mContactId:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mTarget:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private defaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v3, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mContactId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v1

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const-string v3, "ImageViewDrawableSetter"

    const-string v4, "Cannot load default avatar resource."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private previousBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getPhotoBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6

    :try_start_0
    const-string v3, "ImageViewDrawableSetter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v3, "ImageViewDrawableSetter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot load photo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setCompressedImage(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    :cond_0
    if-nez p1, :cond_3

    move v1, v4

    :goto_0
    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->defaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->setDefaultImage(J)V

    :cond_1
    iput-object p1, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mCompressed:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_2
    return-object v4

    :cond_2
    iget-object v6, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mCompressed:Landroid/graphics/Bitmap;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_2

    :cond_3
    move v1, v5

    goto :goto_0

    :cond_4
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v2, v6, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mDurationInMillis:I

    if-nez v6, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iput-object v2, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_2

    :cond_7
    const/4 v6, 0x2

    new-array v0, v6, [Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v0, v5

    aput-object v2, v0, v4

    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v4, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mDurationInMillis:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_3
.end method

.method public setDefaultImage(J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/android/contacts/util/ContactPhotoUtils;->getDefaultPhotoBackgroundColor(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method protected setTarget(Landroid/widget/ImageView;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mTarget:Landroid/widget/ImageView;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mTarget:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mCompressed:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setupPhoto(Landroid/net/Uri;JLandroid/widget/ImageView;)V
    .locals 1

    iput-wide p2, p0, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->mContactId:J

    invoke-virtual {p0, p4}, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->setTarget(Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->getPhotoBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->setCompressedImage(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    return-void
.end method
