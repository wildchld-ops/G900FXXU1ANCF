.class public Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;
.super Ljava/lang/Object;
.source "ActivityRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionParamReceiver:Ljava/lang/String;

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;",
            ">;"
        }
    .end annotation
.end field

.field private mCondition:Lcom/samsung/android/internal/intelligence/taskautomation/Condition;

.field private mEvent:Lcom/samsung/android/internal/intelligence/taskautomation/Event;

.field private mId:I

.field private mIsEnabled:Z

.field private mMetadata:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mRuleOwner:Ljava/lang/String;

.field private mTimeStamp:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule$1;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule$1;-><init>()V

    sput-object v0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mId:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mTimeStamp:Ljava/util/Date;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActions:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mIsEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mRuleOwner:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActionParamReceiver:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mIsEnabled:Z

    const-class v0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mEvent:Lcom/samsung/android/internal/intelligence/taskautomation/Event;

    const-class v0, Lcom/samsung/android/internal/intelligence/taskautomation/Condition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/internal/intelligence/taskautomation/Condition;

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mCondition:Lcom/samsung/android/internal/intelligence/taskautomation/Condition;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActions:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActions:Ljava/util/ArrayList;

    const-class v1, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mMetadata:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mTimeStamp:Ljava/util/Date;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/internal/intelligence/taskautomation/Event;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mId:I

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rule name should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mName:Ljava/lang/String;

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mEvent:Lcom/samsung/android/internal/intelligence/taskautomation/Event;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mTimeStamp:Ljava/util/Date;

    iput-boolean v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mIsEnabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/internal/intelligence/taskautomation/Event;Lcom/samsung/android/internal/intelligence/taskautomation/Condition;Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;Z)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mId:I

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rule name should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mName:Ljava/lang/String;

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mEvent:Lcom/samsung/android/internal/intelligence/taskautomation/Event;

    iput-object p3, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mCondition:Lcom/samsung/android/internal/intelligence/taskautomation/Condition;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActions:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mTimeStamp:Ljava/util/Date;

    iput-boolean p5, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mIsEnabled:Z

    return-void
.end method


# virtual methods
.method public addActionParam(Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionParamReceiver()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActionParamReceiver:Ljava/lang/String;

    return-object v0
.end method

.method public getActionParams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCondition()Lcom/samsung/android/internal/intelligence/taskautomation/Condition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mCondition:Lcom/samsung/android/internal/intelligence/taskautomation/Condition;

    return-object v0
.end method

.method public getEvent()Lcom/samsung/android/internal/intelligence/taskautomation/Event;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mEvent:Lcom/samsung/android/internal/intelligence/taskautomation/Event;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mId:I

    return v0
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mMetadata:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleOwner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mRuleOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mTimeStamp:Ljava/util/Date;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mIsEnabled:Z

    return v0
.end method

.method public setActionParamReceiver(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actionParamReceiver should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActionParamReceiver:Ljava/lang/String;

    return-void
.end method

.method public setActionParams(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActions:Ljava/util/ArrayList;

    return-void
.end method

.method public setCondition(Lcom/samsung/android/internal/intelligence/taskautomation/Condition;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mCondition:Lcom/samsung/android/internal/intelligence/taskautomation/Condition;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mIsEnabled:Z

    return-void
.end method

.method setEvent(Lcom/samsung/android/internal/intelligence/taskautomation/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mEvent:Lcom/samsung/android/internal/intelligence/taskautomation/Event;

    return-void
.end method

.method setId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mId:I

    return-void
.end method

.method public setMetaData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mMetadata:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rule name should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mName:Ljava/lang/String;

    return-void
.end method

.method setRuleOwner(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mRuleOwner:Ljava/lang/String;

    return-void
.end method

.method setTimestamp(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mTimeStamp:Ljava/util/Date;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mRuleOwner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActionParamReceiver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mIsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mEvent:Lcom/samsung/android/internal/intelligence/taskautomation/Event;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mCondition:Lcom/samsung/android/internal/intelligence/taskautomation/Condition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mMetadata:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->mTimeStamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
