.class public Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;
.super Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;
.source "CardImage.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mImageFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;->mImageFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method
