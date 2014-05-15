.class public Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandListAdapter.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;
    }
.end annotation


# static fields
.field public static final GROUP_INDICATOR_ICON:I = 0x9000000

.field protected static final TAG:Ljava/lang/String; = "ExpandListAdapter"

.field private static final TIME_FACTOR:I = 0x3e8


# instance fields
.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/ExpandListGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field mDataSetObserver:Landroid/database/DataSetObserver;

.field mDataValid:Z

.field protected mDateSorter:Landroid/webkit/DateSorter;

.field private mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field protected mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

.field protected mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

.field protected mHistoryData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation
.end field

.field private mItemMap:[I

.field private mMultiWindowManager:Landroid/sec/multiwindow/impl/MultiWindowManager;

.field private mNumberOfBins:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mMultiWindowManager:Landroid/sec/multiwindow/impl/MultiWindowManager;

    new-instance v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/webkit/DateSorter;

    invoke-direct {v0, p1}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mDataValid:Z

    check-cast p2, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrFaviconController;->getInstance()Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    const-string v0, "multiwindow"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/impl/MultiWindowManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mMultiWindowManager:Landroid/sec/multiwindow/impl/MultiWindowManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->buildMap()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->showPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method private showPopupMenu(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e0011

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/sec/android/app/sbrowser/history/ExpandListChild;Lcom/sec/android/app/sbrowser/history/ExpandListGroup;)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/history/ExpandListGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/ExpandListGroup;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/history/ExpandListGroup;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/history/ExpandListGroup;->setItems(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final buildMap()V
    .locals 13

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getGroupItFlag()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getGroupItMode()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x6

    new-array v0, v10, [I

    const/4 v5, 0x0

    :goto_0
    const/4 v10, 0x6

    if-ge v5, v10, :cond_0

    const/4 v10, 0x0

    aput v10, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mNumberOfBins:I

    const/4 v1, -0x1

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v10, "ExpandListAdapter"

    const-string v11, "buildMap : mHistoryController mHashMap is null "

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryGroupItResult()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_2
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryGroupItResult()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_3

    aget v10, v0, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iget v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mNumberOfBins:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mNumberOfBins:I

    :cond_4
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_6

    const-wide/16 v6, 0x0

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-wide v6, v10, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mVisitTime:J

    :cond_5
    move-wide v8, v6

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    const-wide/16 v11, 0x3e8

    mul-long/2addr v11, v8

    invoke-virtual {v10, v11, v12}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v4

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "************** ExpandListAdapter (buildMap) INDEX: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryGroupItResult()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_9

    add-int/lit8 v10, v4, 0x1

    if-le v10, v1, :cond_8

    iget v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mNumberOfBins:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mNumberOfBins:I

    const/4 v10, 0x5

    if-ne v4, v10, :cond_7

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v3

    aput v11, v0, v10

    :cond_6
    :goto_4
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mItemMap:[I

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v1, v4, 0x1

    :cond_8
    :goto_5
    aget v10, v0, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v10, v4, 0x1

    if-le v10, v1, :cond_8

    iget v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mNumberOfBins:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mNumberOfBins:I

    const/4 v10, 0x5

    if-ne v4, v10, :cond_a

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v3

    aput v11, v0, v10

    goto :goto_4

    :cond_a
    add-int/lit8 v1, v4, 0x1

    goto :goto_5

    :cond_b
    const/4 v10, 0x5

    new-array v0, v10, [I

    const/4 v5, 0x0

    :goto_6
    const/4 v10, 0x5

    if-ge v5, v10, :cond_c

    const/4 v10, 0x0

    aput v10, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mNumberOfBins:I

    const/4 v1, -0x1

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_d

    const-string v10, "ExpandListAdapter"

    const-string v11, "buildMap : mHistoryController mHashMap is null "

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_f

    const-wide/16 v6, 0x0

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-wide v6, v10, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mVisitTime:J

    :cond_e
    move-wide v8, v6

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    const-wide/16 v11, 0x3e8

    mul-long/2addr v11, v8

    invoke-virtual {v10, v11, v12}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v4

    if-le v4, v1, :cond_11

    iget v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mNumberOfBins:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mNumberOfBins:I

    const/4 v10, 0x4

    if-ne v4, v10, :cond_10

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v3

    aput v10, v0, v4

    :cond_f
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mItemMap:[I

    goto/16 :goto_1

    :cond_10
    move v1, v4

    :cond_11
    aget v10, v0, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7
.end method

.method public checkDeleted()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryGroupItResult()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v1, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mVisitTime:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->deleteHistoryURL(Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearHistoryList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->groups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getGroupItFlag()Z

    move-result v20

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getGroupItMode()Z

    move-result v20

    if-eqz v20, :cond_14

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryGroupItResult()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    const/16 v18, 0x0

    const/4 v8, 0x0

    :goto_0
    move/from16 v0, p1

    if-ge v8, v0, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->getChildrenCount(I)I

    move-result v20

    add-int v18, v18, v20

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    add-int v12, p2, v18

    const-string v16, ""

    const/4 v9, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->isURLBookmarked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v9

    :cond_1
    move-object/from16 v19, v16

    new-instance v10, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v10, v0, v9}, Lcom/sec/android/app/sbrowser/history/HistoryItem;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v10, v9}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setIsBookmark(Z)V

    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->RequestFavicon(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->GetFaviconData(Ljava/lang/String;)[B

    move-result-object v13

    if-eqz v13, :cond_6

    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setName(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setUrl(Ljava/lang/String;)V

    const-wide/16 v14, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    move-object/from16 v0, v20

    iget-wide v14, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mVisitTime:J
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    invoke-virtual {v10, v14, v15}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setTime(J)V

    const v20, 0x7f0a014b

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0201b5

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string v21, "com.sec.feature.hovering_ui"

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getTitleView()Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getUrlView()Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->isEllipsize(Lcom/sec/android/app/sbrowser/history/HistoryItem;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setHoverPopupType(I)V

    :cond_4
    :goto_4
    move-object v11, v10

    :goto_5
    return-object v11

    :cond_5
    :try_start_2
    const-string v17, ""
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v7

    const-string v20, "ExpandListAdapter"

    const-string v21, "getChildView : mHistoryData is null "

    invoke-static/range {v20 .. v21}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, ""

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0200d1

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0200d1

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :catch_1
    move-exception v7

    const-wide/16 v14, 0x0

    const-string v20, "ExpandListAdapter"

    const-string v21, "getChildView : mHistoryData is null "

    invoke-static/range {v20 .. v21}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    if-eqz v20, :cond_4

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const/16 v21, 0x3031

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    const/16 v18, 0x0

    const/4 v8, 0x0

    :goto_6
    move/from16 v0, p1

    if-ge v8, v0, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->getChildrenCount(I)I

    move-result v20

    add-int v18, v18, v20

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryGroupItResult()Ljava/util/ArrayList;

    move-result-object v20

    if-eqz v20, :cond_f

    add-int v20, p2, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryGroupItResult()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    sub-int v12, v20, v21

    :goto_7
    const-string v16, ""

    const/4 v9, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->isURLBookmarked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v9

    :cond_b
    move-object/from16 v19, v16

    new-instance v10, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v10, v0, v9}, Lcom/sec/android/app/sbrowser/history/HistoryItem;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v10, v9}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setIsBookmark(Z)V

    const/16 v17, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->RequestFavicon(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->GetFaviconData(Ljava/lang/String;)[B

    move-result-object v13

    if-eqz v13, :cond_11

    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    :goto_9
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setName(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setUrl(Ljava/lang/String;)V

    const-wide/16 v14, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    move-object/from16 v0, v20

    iget-wide v14, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mVisitTime:J
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_d
    :goto_a
    invoke-virtual {v10, v14, v15}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setTime(J)V

    const v20, 0x7f0a014b

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0201b5

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string v21, "com.sec.feature.hovering_ui"

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getTitleView()Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getUrlView()Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->isEllipsize(Lcom/sec/android/app/sbrowser/history/HistoryItem;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_13

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setHoverPopupType(I)V

    :cond_e
    :goto_b
    move-object v11, v10

    goto/16 :goto_5

    :cond_f
    add-int v12, p2, v18

    goto/16 :goto_7

    :cond_10
    :try_start_5
    const-string v17, ""
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_8

    :catch_2
    move-exception v7

    const-string v20, "ExpandListAdapter"

    const-string v21, "getChildView : mHistoryData is null "

    invoke-static/range {v20 .. v21}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, ""

    goto/16 :goto_8

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0200d1

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto/16 :goto_9

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0200d1

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto/16 :goto_9

    :catch_3
    move-exception v7

    const-wide/16 v14, 0x0

    const-string v20, "ExpandListAdapter"

    const-string v21, "getChildView : mHistoryData is null "

    invoke-static/range {v20 .. v21}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_13
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    if-eqz v20, :cond_e

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const/16 v21, 0x3031

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    goto/16 :goto_b

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    const/16 v18, 0x0

    const/4 v8, 0x0

    :goto_c
    move/from16 v0, p1

    if-ge v8, v0, :cond_15

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->getChildrenCount(I)I

    move-result v20

    add-int v18, v18, v20

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_15
    add-int v12, p2, v18

    const-string v16, ""

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->isURLBookmarked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v9

    :cond_16
    move-object/from16 v19, v16

    if-eqz p4, :cond_17

    move-object/from16 v0, p4

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    move/from16 v20, v0

    if-nez v20, :cond_1c

    :cond_17
    new-instance v10, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v10, v0, v9}, Lcom/sec/android/app/sbrowser/history/HistoryItem;-><init>(Landroid/content/Context;Z)V

    :goto_d
    invoke-virtual {v10, v9}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setIsBookmark(Z)V

    const/16 v17, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->RequestFavicon(Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->GetFaviconData(Ljava/lang/String;)[B

    move-result-object v13

    if-eqz v13, :cond_1e

    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    :goto_f
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setName(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setUrl(Ljava/lang/String;)V

    const-wide/16 v14, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    move-object/from16 v0, v20

    iget-wide v14, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mVisitTime:J
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_19
    :goto_10
    invoke-virtual {v10, v14, v15}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setTime(J)V

    const v20, 0x7f0a014b

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v20, 0x7f0a014c

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryUI()Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->getItemCheckBoxClickListener()Landroid/view/View$OnClickListener;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryUI()Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->getIsShowingActionMode()Z

    move-result v20

    if-nez v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryUI()Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->getIsDeleteMode()Z

    move-result v20

    if-eqz v20, :cond_21

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_21

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    move/from16 v20, v0

    if-eqz v20, :cond_20

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0201b5

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string v21, "com.sec.feature.hovering_ui"

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getTitleView()Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getUrlView()Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->isEllipsize(Lcom/sec/android/app/sbrowser/history/HistoryItem;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_22

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setHoverPopupType(I)V

    :cond_1b
    :goto_12
    move-object v11, v10

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v10, p4

    check-cast v10, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    goto/16 :goto_d

    :cond_1d
    :try_start_8
    const-string v17, ""
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_e

    :catch_4
    move-exception v7

    const-string v20, "ExpandListAdapter"

    const-string v21, "getChildView : mHistoryData is null "

    invoke-static/range {v20 .. v21}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, ""

    goto/16 :goto_e

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0200d1

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto/16 :goto_f

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0200d1

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto/16 :goto_f

    :catch_5
    move-exception v7

    const-wide/16 v14, 0x0

    const-string v20, "ExpandListAdapter"

    const-string v21, "getChildView : mHistoryData is null "

    invoke-static/range {v20 .. v21}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_20
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0201b5

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_11

    :cond_21
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0201b5

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_11

    :cond_22
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    if-eqz v20, :cond_1b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const/16 v21, 0x3031

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    goto/16 :goto_12
.end method

.method public getChildrenCount(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mItemMap:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mItemMap:[I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->groupPositionToBin(I)I

    move-result v1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCombinedChildId(JJ)J
    .locals 0

    return-wide p3
.end method

.method public getCombinedGroupId(J)J
    .locals 0

    return-wide p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mNumberOfBins:I

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getGroupItFlag()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getGroupItMode()Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez p1, :cond_1

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v8, 0x7f04003f

    const/4 v9, 0x0

    invoke-virtual {v3, v8, p4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    move-object p3, v6

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;-><init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V

    const v8, 0x7f0a0147

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->expandArrow:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->expandArrow:Landroid/widget/ImageView;

    const/high16 v9, 0x900

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    const v8, 0x7f0a0148

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v8, 0x7f0a0149

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v8, -0x100

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, -0x100

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getGroupItByType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getGroupItByText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a014a

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v8, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$3;

    invoke-direct {v8, p0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$3;-><init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v7, p3

    :goto_0
    return-object v7

    :cond_1
    const/4 v2, 0x0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v8, 0x7f04003e

    const/4 v9, 0x0

    invoke-virtual {v3, v8, p4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    move-object p3, v6

    if-nez v2, :cond_2

    new-instance v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;-><init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V

    const v8, 0x7f0a0147

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->expandArrow:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->expandArrow:Landroid/widget/ImageView;

    const/high16 v9, 0x900

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setId(I)V

    const v8, 0x7f0a0146

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->tvGroup:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->groupPositionToBin(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->tvGroup:Landroid/widget/TextView;

    if-nez v8, :cond_3

    const v8, 0x7f0a0146

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->tvGroup:Landroid/widget/TextView;

    :cond_3
    iget-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->tvGroup:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v7, p3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v8, 0x7f04003e

    const/4 v9, 0x0

    invoke-virtual {v3, v8, p4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    move-object p3, v6

    if-nez v2, :cond_5

    new-instance v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;-><init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V

    const v8, 0x7f0a0147

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->expandArrow:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->expandArrow:Landroid/widget/ImageView;

    const/high16 v9, 0x900

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setId(I)V

    const v8, 0x7f0a0146

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->tvGroup:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->groupPositionToBin(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->tvGroup:Landroid/widget/TextView;

    if-nez v8, :cond_6

    const v8, 0x7f0a0146

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->tvGroup:Landroid/widget/TextView;

    :cond_6
    iget-object v8, v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->tvGroup:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v7, p3

    goto/16 :goto_0
.end method

.method getLabel(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-virtual {v0, p1}, Landroid/webkit/DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->groupPositionToBin(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected groupPositionToBin(I)I
    .locals 3

    const/4 v2, 0x5

    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "group position out of range"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mNumberOfBins:I

    if-eq v2, v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mNumberOfBins:I

    if-nez v1, :cond_4

    :cond_2
    move v0, p1

    :cond_3
    :goto_0
    return v0

    :cond_4
    const/4 v0, -0x1

    :cond_5
    :goto_1
    const/4 v1, -0x1

    if-le p1, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mItemMap:[I

    aget v1, v1, v0

    if-eqz v1, :cond_5

    add-int/lit8 p1, p1, -0x1

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEllipsize(Lcom/sec/android/app/sbrowser/history/HistoryItem;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getTitleView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v4, v7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getUrlView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v5, v7

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f09016c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v1, v7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->isBookmark()Z

    move-result v7

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f09016d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v1, v7

    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowMode()I

    move-result v7

    invoke-static {v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mMultiWindowManager:Landroid/sec/multiwindow/impl/MultiWindowManager;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowMode()I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v7

    iget v9, v7, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mMultiWindowManager:Landroid/sec/multiwindow/impl/MultiWindowManager;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowMode()I

    move-result v7

    invoke-virtual {v10, v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v6, v9, v7

    move v3, v6

    :cond_1
    sub-int v7, v3, v1

    if-ge v4, v7, :cond_2

    sub-int v7, v3, v1

    if-ge v5, v7, :cond_2

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_2
    move v7, v8

    goto :goto_0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_information_preview"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020281

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f0a0150

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f0a0151

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f040046

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0a0157

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a0158

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    const/4 v6, 0x1

    return v6
.end method

.method public reInitializeDateSorter()V
    .locals 2

    new-instance v0, Landroid/webkit/DateSorter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    return-void
.end method

.method public setExpandableListView(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    return-void
.end method
