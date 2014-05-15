.class public Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;
.super Ljava/lang/Object;
.source "DominantColorObj.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public color:I

.field public percentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;->color:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;->percentage:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;->color:I

    const-string v0, "percentage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;->percentage:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "color"

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;->color:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "percentage"

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;->percentage:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
