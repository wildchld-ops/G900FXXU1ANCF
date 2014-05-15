.class public Lcom/samsung/contacts/group/GroupInfo;
.super Ljava/lang/Object;
.source "GroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/contacts/group/GroupInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accountName:Ljava/lang/String;

.field private final accountType:Ljava/lang/String;

.field private final dataSet:Ljava/lang/String;

.field private final groupId:J

.field private final systemId:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/contacts/group/GroupInfo$1;

    invoke-direct {v0}, Lcom/samsung/contacts/group/GroupInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/contacts/group/GroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/contacts/group/GroupInfo;->groupId:J

    iput-object p6, p0, Lcom/samsung/contacts/group/GroupInfo;->title:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/samsung/contacts/group/GroupInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/contacts/group/GroupInfo;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupInfo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/contacts/group/GroupInfo;->groupId:J

    return-wide v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    const/4 v3, 0x0

    const/16 v0, 0x1f

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/samsung/contacts/group/GroupInfo;->groupId:J

    iget-wide v6, p0, Lcom/samsung/contacts/group/GroupInfo;->groupId:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupInfo;->title:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    if-nez v4, :cond_4

    :goto_4
    add-int v1, v2, v3

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupInfo;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/samsung/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/contacts/group/GroupInfo;->groupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
