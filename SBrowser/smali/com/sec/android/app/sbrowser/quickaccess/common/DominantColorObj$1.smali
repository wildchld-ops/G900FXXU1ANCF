.class final Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj$1;
.super Ljava/lang/Object;
.source "DominantColorObj.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;
    .locals 1

    new-array v0, p1, [Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj$1;->newArray(I)[Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;

    move-result-object v0

    return-object v0
.end method
