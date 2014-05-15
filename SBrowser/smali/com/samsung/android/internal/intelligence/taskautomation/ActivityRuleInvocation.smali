.class Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;
.super Ljava/lang/Object;
.source "ActivityRuleInvocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityRule:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;

.field private mId:I

.field private mRuleOwner:Ljava/lang/String;

.field private mTimeStamp:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation$1;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation$1;-><init>()V

    sput-object v0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mTimeStamp:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mId:I

    const-class v0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mActivityRule:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mTimeStamp:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityRule()Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mActivityRule:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mId:I

    return v0
.end method

.method public getRuleOwner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mRuleOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mTimeStamp:Ljava/util/Date;

    return-object v0
.end method

.method setActivityRule(Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mActivityRule:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;

    return-void
.end method

.method setId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mId:I

    return-void
.end method

.method setRuleOwner(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mRuleOwner:Ljava/lang/String;

    return-void
.end method

.method setTimeStamp(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mTimeStamp:Ljava/util/Date;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mActivityRule:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleInvocation;->mTimeStamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
