.class Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$1;
.super Landroid/util/LruCache;
.source "SnsPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$1;->this$0:Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$1;->this$0:Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;

    #calls: Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->dumpStats()V
    invoke-static {v0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->access$000(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;)V

    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$1;->entryRemoved(ZLjava/lang/Object;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$1;->sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
