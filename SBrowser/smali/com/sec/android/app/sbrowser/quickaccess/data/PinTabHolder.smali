.class public Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;
.super Ljava/lang/Object;
.source "PinTabHolder.java"


# instance fields
.field private mDominantColor:I

.field private final mParent:I

.field private final mParentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mTouchIcon:[B

.field private final mUrl:Ljava/lang/String;

.field private final mtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;",
            ">;II)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mTouchIcon:[B

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mtitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mUrl:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mParent:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mParentList:Ljava/util/ArrayList;

    iput p6, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mDominantColor:I

    iput p7, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mPosition:I

    return-void
.end method

.method private convertBitmap([B)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "Pinned"

    const-string v3, "OutOfMemoryError happened"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Pinned"

    const-string v3, "OutOfMemoryError while decoding byte Array in ShowBookmarkFileds"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getDominant()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mDominantColor:I

    return v0
.end method

.method public getParent()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mParent:I

    return v0
.end method

.method public getParentList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mParentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mPosition:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchIcon()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mTouchIcon:[B

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;->mUrl:Ljava/lang/String;

    return-object v0
.end method
