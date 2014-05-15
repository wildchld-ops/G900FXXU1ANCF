.class final Lcom/samsung/contacts/model/MoreValuesDelta$1;
.super Ljava/lang/Object;
.source "MoreValuesDelta.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/model/MoreValuesDelta;
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
        "Lcom/samsung/contacts/model/MoreValuesDelta;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/contacts/model/MoreValuesDelta;
    .locals 2

    new-instance v1, Lcom/samsung/contacts/model/MoreValuesDelta;

    invoke-direct {v1}, Lcom/samsung/contacts/model/MoreValuesDelta;-><init>()V

    const-class v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, v1, Lcom/samsung/contacts/model/MoreValuesDelta;->mBefore:Landroid/content/ContentValues;

    const-class v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, v1, Lcom/samsung/contacts/model/MoreValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/model/MoreValuesDelta$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/contacts/model/MoreValuesDelta;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/contacts/model/MoreValuesDelta;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/model/MoreValuesDelta$1;->newArray(I)[Lcom/samsung/contacts/model/MoreValuesDelta;

    move-result-object v0

    return-object v0
.end method
