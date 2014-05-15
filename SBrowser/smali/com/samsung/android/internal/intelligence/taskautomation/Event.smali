.class public Lcom/samsung/android/internal/intelligence/taskautomation/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/Event;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConditionItem:Ljava/lang/String;

.field private mCustomEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;",
            ">;"
        }
    .end annotation
.end field

.field private mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/Event$1;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/Event$1;-><init>()V

    sput-object v0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mConditionItem:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mProvider:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mCustomEntities:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mCustomEntities:Ljava/util/ArrayList;

    const-class v5, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mEntities:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mCustomEntities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;

    invoke-virtual {v3}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->getStringCustom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EventSpecifier"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->getAttributeCustom()Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->getStringCustom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private constructor <init>(Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mId:I

    #getter for: Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mProvider:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->access$0(Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mProvider:Ljava/lang/String;

    #getter for: Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mEventSpecifierItemName:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->access$1(Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mConditionItem:Ljava/lang/String;

    #getter for: Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mCustomEntities:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->access$2(Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mCustomEntities:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;Lcom/samsung/android/internal/intelligence/taskautomation/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/internal/intelligence/taskautomation/Event;-><init>(Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConditionItem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mConditionItem:Ljava/lang/String;

    return-object v0
.end method

.method getCustomEntities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mCustomEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEntities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method getEventSpecifiers()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method setCustomEntities(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mCustomEntities:Ljava/util/ArrayList;

    return-void
.end method

.method setEntities(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mEntities:Ljava/util/ArrayList;

    return-void
.end method

.method setId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mConditionItem:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->mCustomEntities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
