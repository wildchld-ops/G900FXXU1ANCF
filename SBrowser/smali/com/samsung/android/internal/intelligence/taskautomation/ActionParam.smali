.class public Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;
.super Ljava/lang/Object;
.source "ActionParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mId:I

.field private mUserData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam$1;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam$1;-><init>()V

    sput-object v0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->mId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->mDescription:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->mUserData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->mUserData:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->mDescription:Ljava/lang/String;

    return-void
.end method

.method setId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->mId:I

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->mUserData:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
