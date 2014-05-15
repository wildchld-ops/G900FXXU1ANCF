.class public Lcom/android/mms/ui/BubbleViewCache;
.super Ljava/lang/Object;
.source "BubbleViewCache.java"


# static fields
.field public static final MAX_INFLATE_COUNT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Mms/BubbleViewCache"

.field private static sItemViewArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static sMaxInflateCount:I

.field private static sUsedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/BubbleViewCache;->sMaxInflateCount:I

    sput v0, Lcom/android/mms/ui/BubbleViewCache;->sUsedCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addCacheView(Landroid/view/View;)V
    .locals 3

    const-class v1, Lcom/android/mms/ui/BubbleViewCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Mms/BubbleViewCache"

    const-string v2, "new view added"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized createCacheView(Landroid/content/Context;Landroid/widget/ListView;I)V
    .locals 6

    const-class v3, Lcom/android/mms/ui/BubbleViewCache;

    monitor-enter v3

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    :try_start_0
    const-string v2, "Mms/BubbleViewCache"

    const-string v4, "instance is null just return.."

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/mms/ui/BubbleViewCache;->resetUsedCount()V

    sget-object v2, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    const-string v2, "Mms/BubbleViewCache"

    const-string v4, "instance is not null, ignore new caching...."

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    :try_start_2
    sget-object v2, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    :cond_4
    sget-object v2, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    if-nez v1, :cond_5

    const-string v2, "Mms/BubbleViewCache"

    const-string v4, "inflater is null"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sput p2, Lcom/android/mms/ui/BubbleViewCache;->sMaxInflateCount:I

    const-string v2, "Mms/BubbleViewCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createCacheView sMaxInflateCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/mms/ui/BubbleViewCache;->sMaxInflateCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    sget v2, Lcom/android/mms/ui/BubbleViewCache;->sMaxInflateCount:I

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    const v4, 0x7f04005e

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Mms/BubbleViewCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflate bubble view = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static destroy()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/BubbleViewCache;->sMaxInflateCount:I

    sput v0, Lcom/android/mms/ui/BubbleViewCache;->sUsedCount:I

    sget-object v0, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    const-string v0, "Mms/BubbleViewCache"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getCacheView()Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    const-class v2, Lcom/android/mms/ui/BubbleViewCache;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    :cond_1
    :try_start_1
    const-string v1, "Mms/BubbleViewCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCacheView, cache size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " usedCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mms/ui/BubbleViewCache;->sUsedCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/android/mms/ui/BubbleViewCache;->sUsedCount:I

    sget-object v3, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    sget-object v1, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:Ljava/util/ArrayList;

    sget v3, Lcom/android/mms/ui/BubbleViewCache;->sUsedCount:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/android/mms/ui/BubbleViewCache;->sUsedCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/mms/ui/BubbleViewCache;->sUsedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static resetUsedCount()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/BubbleViewCache;->sUsedCount:I

    return-void
.end method

.method public static setMaxInflateCount(I)V
    .locals 3

    const/16 v0, 0x8

    if-lt p0, v0, :cond_0

    move p0, v0

    :cond_0
    sput p0, Lcom/android/mms/ui/BubbleViewCache;->sMaxInflateCount:I

    const-string v0, "Mms/BubbleViewCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxInflateCount setMaxInflateCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/BubbleViewCache;->sMaxInflateCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
