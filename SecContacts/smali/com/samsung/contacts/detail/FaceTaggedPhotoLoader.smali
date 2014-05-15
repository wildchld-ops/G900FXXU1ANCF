.class public Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;
.super Landroid/os/AsyncTask;
.source "FaceTaggedPhotoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mImageView:Landroid/widget/ImageView;

.field private final mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;Ljava/util/WeakHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mImageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iput-object p4, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private getBitmap(I)Landroid/graphics/Bitmap;
    .locals 9

    iget-object v7, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b01ad

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b01ae

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/.face/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iget-object v8, v8, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->faceData:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v2, v4, v3}, Lcom/android/contacts/common/util/BitmapUtil;->getOptimalSampleSizeFromFilePath(Ljava/lang/String;II)I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/contacts/common/util/BitmapUtil;->decodeBitmapFromFilePath(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v7, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->TAG:Ljava/lang/String;

    const-string v8, "Get face tagged photo"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v5

    :cond_2
    sget-object v7, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->TAG:Ljava/lang/String;

    const-string v8, "Rotated face tagged photo"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCacheHashMapKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iget-object v0, v0, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->faceData:Ljava/lang/String;

    return-object v0
.end method

.method private getOrientation(Landroid/net/Uri;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "orientation"

    aput-object v0, v2, v8

    iget-object v0, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7
.end method

.method private getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iget-object v2, v2, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mCache:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->getCacheHashMapKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Face tagged photo is loaded from cache, photo id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iget-wide v4, v4, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->mediaPhotoId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iget-object v2, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mCache:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->getCacheHashMapKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, v3, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Face tagged photo load start, photo id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iget-wide v4, v4, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->mediaPhotoId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/file/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iget-wide v3, v3, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->mediaPhotoId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->getOrientation(Landroid/net/Uri;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mCache:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->getCacheHashMapKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iget-object v4, v4, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Face tagged photo load end, photo id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iget-wide v4, v4, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->mediaPhotoId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iget-object v4, v4, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mImageView:Landroid/widget/ImageView;

    const v5, 0x7f020092

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    const/4 v4, 0x2

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    instance-of v4, v2, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v5

    :goto_1
    const/4 v4, 0x1

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iget-object v7, v7, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v1, v4

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0xc8

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_2
    iget-object v4, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    aput-object v2, v1, v5

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->mInfo:Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iget-object v5, v5, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
