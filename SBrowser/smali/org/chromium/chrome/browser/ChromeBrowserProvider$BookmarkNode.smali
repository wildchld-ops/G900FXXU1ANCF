.class public Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/ChromeBrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkNode"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mEditable:J

.field private mFavicon:[B

.field private final mId:J

.field private final mName:Ljava/lang/String;

.field private final mOperatorBookmark:J

.field private final mParent:Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

.field private mThumbnail:[B

.field private final mType:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode$1;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLorg/chromium/chrome/browser/ChromeBrowserProvider$Type;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mChildren:Ljava/util/List;

    iput-wide p1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mId:J

    iput-object p4, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mType:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    iput-object p6, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mParent:Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mEditable:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mOperatorBookmark:J

    return-void
.end method

.method public constructor <init>(JLorg/chromium/chrome/browser/ChromeBrowserProvider$Type;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;JJ)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mChildren:Ljava/util/List;

    iput-wide p1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mId:J

    iput-object p4, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mType:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    iput-object p6, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mParent:Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    iput-wide p7, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mEditable:J

    iput-wide p9, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mOperatorBookmark:J

    return-void
.end method

.method private static byteArrayEqual([B[B)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    if-eqz p0, :cond_3

    array-length v2, p0

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method private static create(JILjava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 7
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "BookmarkNode"
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->values()[Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    move-result-object v1

    aget-object v3, v1, p2

    move-wide v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;-><init>(JLorg/chromium/chrome/browser/ChromeBrowserProvider$Type;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;)V

    return-object v0
.end method

.method private writeNodeContents(Landroid/os/Parcel;)V
    .locals 2

    iget-wide v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mType:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mFavicon:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mThumbnail:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mParent:Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mParent:Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    iget-wide v0, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mId:J

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private writeNodeContentsRecursive(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->writeNodeContents(Landroid/os/Parcel;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->writeNodeContentsRecursive(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addChild(Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lorg/chromium/base/CalledByNativeUnchecked;
        value = "BookmarkNode"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public children()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public editable()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mEditable:J

    return-wide v0
.end method

.method public equalContents(Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    iget-wide v3, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mId:J

    iget-wide v5, p1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mId:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    xor-int/2addr v0, v3

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iget-object v3, p1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v1

    :goto_3
    xor-int/2addr v0, v3

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mType:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    iget-object v3, p1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mType:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mFavicon:[B

    iget-object v3, p1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mFavicon:[B

    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->byteArrayEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mThumbnail:[B

    iget-object v3, p1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mThumbnail:[B

    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->byteArrayEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mParent:Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    iget-object v3, p1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mParent:Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    if-nez v3, :cond_7

    move v3, v1

    :goto_5
    xor-int/2addr v0, v3

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->children()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->children()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_8

    :goto_6
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v3, v2

    goto :goto_5

    :cond_8
    move v1, v2

    goto :goto_6
.end method

.method public favicon()[B
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mFavicon:[B

    return-object v0
.end method

.method public getHierarchyRoot()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->parent()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->parent()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public id()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mId:J

    return-wide v0
.end method

.method public isUrl()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public operatorBookmark()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mOperatorBookmark:J

    return-wide v0
.end method

.method public parent()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mParent:Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    return-object v0
.end method

.method public setFavicon([B)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mFavicon:[B

    return-void
.end method

.method public setThumbnail([B)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mThumbnail:[B

    return-void
.end method

.method public thumbnail()[B
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mThumbnail:[B

    return-object v0
.end method

.method public type()Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mType:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->getHierarchyRoot()Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->writeNodeContentsRecursive(Landroid/os/Parcel;)V

    return-void
.end method
