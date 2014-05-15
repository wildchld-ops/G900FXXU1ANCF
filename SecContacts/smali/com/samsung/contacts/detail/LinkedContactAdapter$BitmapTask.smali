.class Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;
.super Landroid/os/AsyncTask;
.source "LinkedContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/LinkedContactAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mCache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

.field private final mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;->context:Landroid/content/Context;

    iget v0, p2, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->position:I

    iput v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;->mPosition:I

    iput-object p2, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;->mCache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;->mCache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    iget-wide v1, v1, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->targetRawContactId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactsUtils;->loadContactPhotoWithRawContactId(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;->mCache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    iget v0, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->position:I

    iget v1, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;->mPosition:I

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;->mCache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    iget-object v0, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->photoView:Landroid/widget/ImageView;

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;->mCache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    iget-object v0, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
