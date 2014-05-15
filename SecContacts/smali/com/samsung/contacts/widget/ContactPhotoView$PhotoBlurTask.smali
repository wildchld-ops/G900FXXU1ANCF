.class Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;
.super Landroid/os/AsyncTask;
.source "ContactPhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/widget/ContactPhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoBlurTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/samsung/contacts/widget/ContactPhotoView;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/widget/ContactPhotoView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;->this$0:Lcom/samsung/contacts/widget/ContactPhotoView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;->this$0:Lcom/samsung/contacts/widget/ContactPhotoView;

    iget-object v1, p0, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;->mDrawable:Landroid/graphics/drawable/Drawable;

    #calls: Lcom/samsung/contacts/widget/ContactPhotoView;->makeBlurEffectIfNeeded(Landroid/graphics/drawable/Drawable;)I
    invoke-static {v0, v1}, Lcom/samsung/contacts/widget/ContactPhotoView;->access$000(Lcom/samsung/contacts/widget/ContactPhotoView;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-string v0, "ContactPhotoView"

    const-string v1, "MSG_UPDATE_PHOTO"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;->this$0:Lcom/samsung/contacts/widget/ContactPhotoView;

    #getter for: Lcom/samsung/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/contacts/widget/ContactPhotoView;->access$100(Lcom/samsung/contacts/widget/ContactPhotoView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;->this$0:Lcom/samsung/contacts/widget/ContactPhotoView;

    #calls: Lcom/samsung/contacts/widget/ContactPhotoView;->ApplyBlurEffect()V
    invoke-static {v0}, Lcom/samsung/contacts/widget/ContactPhotoView;->access$200(Lcom/samsung/contacts/widget/ContactPhotoView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;->this$0:Lcom/samsung/contacts/widget/ContactPhotoView;

    #calls: Lcom/samsung/contacts/widget/ContactPhotoView;->ApplyHighQualityPhoto()V
    invoke-static {v0}, Lcom/samsung/contacts/widget/ContactPhotoView;->access$300(Lcom/samsung/contacts/widget/ContactPhotoView;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/widget/ContactPhotoView$PhotoBlurTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
