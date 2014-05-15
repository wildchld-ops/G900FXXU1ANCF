.class public abstract Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "AbstractQuickAccessGridAdapter.java"


# static fields
.field public static final INVALID_ID:I = -0x1


# instance fields
.field private mIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->mIdMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected addAllStableId(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v1, v2

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected addStableId(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getItemId(I)J

    move-result-wide v1

    long-to-int v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected clearStableIdMap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public abstract getColumnCount()I
.end method

.method public getItemId(I)J
    .locals 3

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected removeStableID(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract reorderItems(II)V
.end method
