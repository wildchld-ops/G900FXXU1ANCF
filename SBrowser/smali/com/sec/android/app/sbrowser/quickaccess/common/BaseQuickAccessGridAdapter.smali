.class public abstract Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;
.super Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;
.source "BaseQuickAccessGridAdapter.java"


# instance fields
.field private isReordered:Z

.field private mColumnCount:I

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->isReordered:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mColumnCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->isReordered:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mColumnCount:I

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->init(Ljava/util/List;)V

    return-void
.end method

.method private init(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->addAllStableId(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private reorder(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->addStableId(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->addAllStableId(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->clearStableIdMap()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getColumnCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mColumnCount:I

    return v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isReordered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->isReordered:Z

    return v0
.end method

.method public remove(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->removeStableID(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public reorderItems(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->reorder(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->setListBackToUi()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->isReordered:Z

    goto :goto_0
.end method

.method public set(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->clear()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->init(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setColumnCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->mColumnCount:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract setListBackToUi()V
.end method

.method public setReordered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->isReordered:Z

    return-void
.end method
