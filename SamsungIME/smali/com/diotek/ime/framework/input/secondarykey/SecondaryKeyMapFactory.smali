.class public Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;
.super Ljava/lang/Object;
.source "SecondaryKeyMapFactory.java"


# instance fields
.field private mSecondaryKeyMapSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    return-void
.end method

.method private getSecondaryKeyMap(I)Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getSecondaryKeyMapSet()Landroid/util/SparseArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v11, -0x1

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v4

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v5

    const/16 v10, 0x1e0

    if-ne v4, v10, :cond_1

    const/16 v10, 0x140

    if-ne v5, v10, :cond_1

    move v0, v2

    :goto_0
    const/16 v10, 0xa00

    if-ne v4, v10, :cond_2

    const/16 v10, 0x640

    if-ne v5, v10, :cond_2

    move v1, v2

    :goto_1
    const/16 v10, 0x500

    if-ne v4, v10, :cond_3

    const/16 v10, 0x320

    if-ne v5, v10, :cond_3

    :goto_2
    const/4 v6, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMap;->getSecondaryKeyMap()[Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v3, 0x0

    :goto_3
    array-length v9, v7

    if-ge v3, v9, :cond_5

    if-ne v8, v11, :cond_4

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v8

    :cond_0
    :goto_4
    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getKeyCode()I

    move-result v9

    aget-object v10, v7, v3

    invoke-virtual {v6, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    move v0, v9

    goto :goto_0

    :cond_2
    move v1, v9

    goto :goto_1

    :cond_3
    move v2, v9

    goto :goto_2

    :cond_4
    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v9

    if-eq v8, v9, :cond_0

    iget-object v9, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v9, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->getSecondaryKeyMap(I)Landroid/util/SparseArray;

    move-result-object v6

    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v8

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_8

    const/4 v8, -0x1

    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMap;->getSecondaryKeyMapForSmallScreen()[Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;

    move-result-object v7

    const/4 v3, 0x0

    :goto_5
    array-length v9, v7

    if-ge v3, v9, :cond_c

    if-ne v8, v11, :cond_7

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v8

    :cond_6
    :goto_6
    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getKeyCode()I

    move-result v9

    aget-object v10, v7, v3

    invoke-virtual {v6, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v9

    if-eq v8, v9, :cond_6

    iget-object v9, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v9, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->getSecondaryKeyMap(I)Landroid/util/SparseArray;

    move-result-object v6

    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v8

    goto :goto_6

    :cond_8
    if-nez v1, :cond_9

    if-eqz v2, :cond_c

    :cond_9
    const/4 v8, -0x1

    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMap;->getSecondaryKeyMapForTablet()[Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;

    move-result-object v7

    const/4 v3, 0x0

    :goto_7
    array-length v9, v7

    if-ge v3, v9, :cond_c

    if-ne v8, v11, :cond_b

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v8

    :cond_a
    :goto_8
    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getKeyCode()I

    move-result v9

    aget-object v10, v7, v3

    invoke-virtual {v6, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v9

    if-eq v8, v9, :cond_a

    iget-object v9, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v9, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->getSecondaryKeyMap(I)Landroid/util/SparseArray;

    move-result-object v6

    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v8

    goto :goto_8

    :cond_c
    iget-object v9, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v9, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    return-object v9
.end method
