.class Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;
.super Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
.source "TwTransit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/utils/TwTransit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mColor:I

.field public mFontStyle:I

.field public mGravity:I

.field public mSize:F

.field public mText:Ljava/lang/String;

.field public mTextScaleX:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo$1;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFIIIILjava/lang/String;FIIIF)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;-><init>(FFFFIIII)V

    iput-object p9, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mText:Ljava/lang/String;

    iput p10, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mSize:F

    iput p11, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mColor:I

    iput p12, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mGravity:I

    iput p13, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mFontStyle:I

    iput p14, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mTextScaleX:F

    return-void
.end method

.method public constructor <init>(FFFFLjava/lang/String;FIIIF)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;-><init>(FFFFIIII)V

    iput-object p5, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mText:Ljava/lang/String;

    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mSize:F

    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mColor:I

    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mGravity:I

    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mFontStyle:I

    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mTextScaleX:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mSize:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mGravity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mFontStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mTextScaleX:F

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mGravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mFontStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mTextScaleX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
