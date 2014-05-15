.class Lcom/android/dialer/dialpad/SmartDialTrie$Node;
.super Ljava/lang/Object;
.source "SmartDialTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/SmartDialTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChild(IZ)Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    .locals 2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    new-instance v1, Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    invoke-direct {v1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;-><init>()V

    aput-object v1, v0, p1

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildrenSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    array-length v0, v0

    goto :goto_0
.end method

.method public getContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method
