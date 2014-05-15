.class public Lcom/sec/android/app/sbrowser/common/TabData;
.super Ljava/lang/Object;
.source "TabData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bitmapByteArray:[B

.field private height:I

.field private mConfig:Landroid/graphics/Bitmap$Config;

.field private width:I


# direct methods
.method public constructor <init>([BIILandroid/graphics/Bitmap$Config;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/TabData;->bitmapByteArray:[B

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/TabData;->width:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/TabData;->height:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/TabData;->mConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public getBitConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabData;->mConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getBitmap()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabData;->bitmapByteArray:[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/TabData;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/TabData;->width:I

    return v0
.end method
