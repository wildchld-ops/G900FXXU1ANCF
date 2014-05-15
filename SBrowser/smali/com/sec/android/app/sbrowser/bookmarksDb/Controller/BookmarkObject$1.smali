.class final Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject$1;
.super Ljava/lang/Object;
.source "BookmarkObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
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
        "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readBookmarkObjectContents(Landroid/os/Parcel;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_2

    const/4 v9, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ltz v14, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->values()[Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v2

    array-length v2, v2

    if-le v14, v2, :cond_1

    :cond_0
    const/4 v14, 0x0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->values()[Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v2

    aget-object v2, v2, v14

    invoke-static/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->create(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setNoOfChildren(I)V

    invoke-virtual {v12, v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setOrderPosition(I)V

    invoke-virtual {v12, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setSpacingValue(I)V

    return-object v12

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject$1;->readBookmarkObjectContents(Landroid/os/Parcel;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    new-array v0, p1, [Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject$1;->newArray(I)[Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    return-object v0
.end method
