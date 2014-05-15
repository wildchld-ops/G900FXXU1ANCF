.class public Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;
.super Ljava/lang/Object;
.source "EventSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttrName:Ljava/lang/String;

.field private mId:I

.field private mOperator:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier$1;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier$1;-><init>()V

    sput-object v0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mAttrName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mOperator:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mId:I

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mAttrName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;
    .locals 1

    const-string v0, "CONTAINS"

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mOperator:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equal(Ljava/lang/String;)Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;
    .locals 1

    const-string v0, "=="

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mOperator:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public getAttribute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mAttrName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public greaterThan(Ljava/lang/String;)Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;
    .locals 1

    const-string v0, ">"

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mOperator:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public greaterThanEqualTo(Ljava/lang/String;)Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;
    .locals 1

    const-string v0, ">="

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mOperator:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;)Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;
    .locals 1

    const-string v0, "<"

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mOperator:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public lessThanEqualTo(Ljava/lang/String;)Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;
    .locals 1

    const-string v0, "<="

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mOperator:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public notEqual(Ljava/lang/String;)Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;
    .locals 1

    const-string v0, "!="

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mOperator:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mAttrName:Ljava/lang/String;

    return-void
.end method

.method setId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mId:I

    return-void
.end method

.method setOperator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mOperator:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mValue:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mAttrName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mOperator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
