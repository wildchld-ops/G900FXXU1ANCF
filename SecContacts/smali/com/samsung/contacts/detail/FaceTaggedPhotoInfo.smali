.class public Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;
.super Ljava/lang/Object;
.source "FaceTaggedPhotoInfo.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public faceData:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field public mediaPhotoId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->mediaPhotoId:J

    iput-object p3, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->faceData:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->intent:Landroid/content/Intent;

    const-string v1, "image/jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->intent:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
