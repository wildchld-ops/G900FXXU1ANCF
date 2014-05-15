.class public Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;
.super Ljava/lang/Object;
.source "PinnedViewHolder.java"


# instance fields
.field private mDominantColor:I

.field private mParent:I

.field private mParentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mTouchIcon:[B

.field private mUrl:Ljava/lang/String;

.field private mtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMtitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getmDominantColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mDominantColor:I

    return v0
.end method

.method public getmParent()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mParent:I

    return v0
.end method

.method public getmParentList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mParentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmPosition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mPosition:I

    return v0
.end method

.method public getmTouchIcon()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mTouchIcon:[B

    return-object v0
.end method

.method public getmUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setMtitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mtitle:Ljava/lang/String;

    return-void
.end method

.method public setmDominantColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mDominantColor:I

    return-void
.end method

.method public setmParent(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mParent:I

    return-void
.end method

.method public setmParentList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinTabHolder;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mParentList:Ljava/util/ArrayList;

    return-void
.end method

.method public setmPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mPosition:I

    return-void
.end method

.method public setmTouchIcon([B)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mTouchIcon:[B

    return-void
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->mUrl:Ljava/lang/String;

    return-void
.end method
