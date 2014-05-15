.class final Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
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
        "Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;",
        ">;"
    }
.end annotation


# instance fields
.field private mNodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNode(J)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 5

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;->mNodeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ChromeBrowserProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid BookmarkNode hierarchy. Unknown id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;->mNodeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    goto :goto_0
.end method

.method private readNodeContents(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 12

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    if-ltz v11, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->values()[Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    move-result-object v3

    array-length v3, v3

    if-lt v11, v3, :cond_1

    :cond_0
    const-string v3, "ChromeBrowserProvider"

    const-string v6, "Invalid node type ordinal value."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->values()[Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    move-result-object v3

    aget-object v3, v3, v11

    invoke-direct {p0, v8, v9}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;->getNode(J)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;-><init>(JLorg/chromium/chrome/browser/ChromeBrowserProvider$Type;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;)V

    invoke-virtual {v0, v7}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->setFavicon([B)V

    invoke-virtual {v0, v10}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->setThumbnail([B)V

    goto :goto_0
.end method

.method private readNodeContentsRecursive(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 9

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;->readNodeContents(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v4

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->id()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v5, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;->mNodeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ChromeBrowserProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid BookmarkNode hierarchy. Duplicate id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->id()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;->mNodeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;->readNodeContentsRecursive(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->addChild(Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;->createFromParcel(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;->mNodeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;->readNodeContentsRecursive(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;->getNode(J)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;->mNodeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    return-object v2
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;->newArray(I)[Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 1

    new-array v0, p1, [Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    return-object v0
.end method
