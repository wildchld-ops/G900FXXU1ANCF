.class Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
.super Ljava/lang/Object;
.source "TwTransit.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/utils/TwTransit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundsInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mHeight:F

.field public mPaddingBottom:I

.field public mPaddingLeft:I

.field public mPaddingRight:I

.field public mPaddingTop:I

.field public mWidth:F

.field public mX:F

.field public mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo$1;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    iput p2, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    iput p3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    iput p4, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingTop:I

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingLeft:I

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingRight:I

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingBottom:I

    return-void
.end method

.method public constructor <init>(FFFFIIII)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    iput p2, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    iput p3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    iput p4, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    iput p5, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingTop:I

    iput p6, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingLeft:I

    iput p7, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingRight:I

    iput p8, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingBottom:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingTop:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingLeft:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingRight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingBottom:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
