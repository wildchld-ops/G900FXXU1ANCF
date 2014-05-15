.class public Lcom/samsung/contacts/interactions/InteractionContactDatas;
.super Ljava/lang/Object;
.source "InteractionContactDatas.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/contacts/interactions/InteractionContactDatas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field includingPrimaryContact:Z

.field public mAccountType:Ljava/lang/String;

.field private mActionCode:I

.field public mAvailableDataCount:I

.field public mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayName:Ljava/lang/String;

.field public mDisplayNameAlt:Ljava/lang/String;

.field public mPartition:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field singleData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$1;

    invoke-direct {v0}, Lcom/samsung/contacts/interactions/InteractionContactDatas$1;-><init>()V

    sput-object v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAvailableDataCount:I

    iput p5, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mActionCode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactDatas;->setPrimaryContact(Landroid/database/Cursor;)V

    invoke-direct {p0, p1, p4}, Lcom/samsung/contacts/interactions/InteractionContactDatas;->makeDataSet(Landroid/database/Cursor;Z)V

    :cond_0
    iput-object p2, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mPartition:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZIZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAvailableDataCount:I

    iput p5, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mActionCode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAccountType:Ljava/lang/String;

    if-nez p6, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactDatas;->setPrimaryContact(Landroid/database/Cursor;)V

    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/samsung/contacts/interactions/InteractionContactDatas;->makeDataSet(Landroid/database/Cursor;Z)V

    :cond_1
    iput-object p2, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mPartition:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAvailableDataCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mActionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;-><init>(Lcom/samsung/contacts/interactions/InteractionContactDatas;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->displayNameAlt:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->typeString:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mPartition:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAvailableDataCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->singleData:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    iput-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->includingPrimaryContact:Z

    return-void

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method private makeDataSet(Landroid/database/Cursor;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->move(I)Z

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->singleData:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactDatas;->saveDataType(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->includingPrimaryContact:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactDatas;->saveDataType(Landroid/database/Cursor;)V

    if-ne p2, v2, :cond_0

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactDatas;->saveDataType(Landroid/database/Cursor;)V

    if-ne p2, v2, :cond_0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAvailableDataCount:I

    goto :goto_1
.end method

.method private saveData(Landroid/database/Cursor;)V
    .locals 2

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;-><init>(Lcom/samsung/contacts/interactions/InteractionContactDatas;)V

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->displayNameAlt:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataType:I

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->typeString:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->rawContactId:Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAvailableDataCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAvailableDataCount:I

    :cond_0
    return-void
.end method

.method private saveDataType(Landroid/database/Cursor;)V
    .locals 3

    const/16 v2, 0x9

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_2
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_1
        0xbe -> :sswitch_1
        0x118 -> :sswitch_0
        0x122 -> :sswitch_1
        0x126 -> :sswitch_1
    .end sparse-switch
.end method

.method private setPrimaryContact(Landroid/database/Cursor;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->move(I)Z

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-le v3, v5, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->singleData:Z

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    iput-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->includingPrimaryContact:Z

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    if-nez v0, :cond_4

    iput-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->includingPrimaryContact:Z

    goto :goto_2

    :cond_4
    if-lt v0, v5, :cond_2

    iput-boolean v5, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->includingPrimaryContact:Z

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayNameByDisplayOrder(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mActionCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->displayNameAlt:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget v1, v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->typeString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mPartition:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAvailableDataCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->singleData:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->includingPrimaryContact:Z

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method
