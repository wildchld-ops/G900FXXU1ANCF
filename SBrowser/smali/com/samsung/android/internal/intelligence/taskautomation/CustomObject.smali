.class Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;
.super Ljava/lang/Object;
.source "CustomObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttribute:Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;

.field private mContext:Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;

.field private mStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject$1;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject$1;-><init>()V

    sput-object v0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mContext:Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mAttribute:Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mStr:Ljava/lang/String;

    const-class v0, Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mContext:Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;

    const-class v0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mAttribute:Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeCustom()Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mAttribute:Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;

    return-object v0
.end method

.method public getContextCustom()Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mContext:Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;

    return-object v0
.end method

.method public getStringCustom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mStr:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributeCustom(Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mAttribute:Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;

    return-void
.end method

.method public setContextCustom(Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mContext:Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;

    return-void
.end method

.method public setStringCustom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mStr:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mContext:Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->mAttribute:Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
