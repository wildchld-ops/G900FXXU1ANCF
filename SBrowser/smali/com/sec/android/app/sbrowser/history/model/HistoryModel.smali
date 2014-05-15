.class public Lcom/sec/android/app/sbrowser/history/model/HistoryModel;
.super Ljava/lang/Object;
.source "HistoryModel.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;
    }
.end annotation


# static fields
.field private static final HISTORYMODEL:Ljava/lang/String; = "historyModel"

.field private static final SBROWSER_HISTORY_DATA_SAVED:I = 0x2

.field private static final SBROWSER_HISTORY_SINGLE_URL_DELETED:I = 0x4

.field private static final SBROWSER_HISTORY_URL_DELETED:I = 0x3

.field private static final TAG:Ljava/lang/String; = null

.field private static final TIME_FACTOR:I = 0x3e8

.field public static cursor:Landroid/database/Cursor;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHashMap:[Ljava/util/HashMap;

.field private mHistoryData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeHistoryModel:I
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mNativeHistoryModel:I

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHashMap:[Ljava/util/HashMap;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHandler:Landroid/os/Handler;

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->TAG:Ljava/lang/String;

    const-string v2, "HistoryModel : library initializing..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lorg/chromium/content/browser/AndroidBrowserProcess;->init(Landroid/content/Context;I)Z

    sget-object v1, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->TAG:Ljava/lang/String;

    const-string v2, "HistoryModel : Library initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/chromium/content/common/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->TAG:Ljava/lang/String;

    const-string v2, "HistoryModel : Before Native Init..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->nativeInit()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mNativeHistoryModel:I

    sget-object v1, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->TAG:Ljava/lang/String;

    const-string v2, "HistoryModel : Initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$1;-><init>(Lcom/sec/android/app/sbrowser/history/model/HistoryModel;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/chromium/content/common/ProcessInitException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/history/model/HistoryModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->notifySetAllHistory()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/history/model/HistoryModel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private addHistoryData(Ljava/lang/String;Ljava/lang/String;JIZ)V
    .locals 8
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHistoryData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHistoryData:Ljava/util/ArrayList;

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHistoryData:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;-><init>(Ljava/lang/String;Ljava/lang/String;JIZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearHashMap()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHashMap:[Ljava/util/HashMap;

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHashMap:[Ljava/util/HashMap;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHashMap:[Ljava/util/HashMap;

    :cond_2
    return-void
.end method

.method private native nativeClearAllHistory(I)V
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeGetAllHistory(IIIDI)V
.end method

.method private native nativeInit()I
.end method

.method private native nativeSearchHistory(ILjava/lang/String;)V
.end method

.method private notifyHistoryDataCompleted()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "historyModel"

    const-string v1, "notifyHistoryDataCompleted called"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->notify(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private notifySetAllHistory()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->notify(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public ClearHistoryURLsDone()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "historyModel"

    const-string v1, "ClearHistoryURLsDone called"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x22

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->clearHistoryList()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->GetAllHistroy()V

    goto :goto_0
.end method

.method public GetAllHistroy()V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "historyModel"

    const-string v1, "Model GetAllHistroy called"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mNativeHistoryModel:I

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->nativeGetAllHistory(IIIDI)V

    return-void
.end method

.method public SearchHistory(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mNativeHistoryModel:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->nativeSearchHistory(ILjava/lang/String;)V

    return-void
.end method

.method public SetAllHistory([Ljava/util/HashMap;)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "historyModel"

    const-string v1, "Model SetAllHistory called"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHashMap:[Ljava/util/HashMap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->notify(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->clearHistoryList()V

    return-void
.end method

.method public clearAll()V
    .locals 0

    return-void
.end method

.method public clearAllHistroy()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->setClearAllHistory(Z)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mNativeHistoryModel:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->nativeClearAllHistory(I)V

    return-void
.end method

.method public clearHistoryList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHistoryData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHistoryData:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public clearHistoryURLs(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$2;-><init>(Lcom/sec/android/app/sbrowser/history/model/HistoryModel;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public destroy()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mNativeHistoryModel:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mNativeHistoryModel:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->nativeDestroy(I)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mNativeHistoryModel:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->clearHashMap()V

    return-void
.end method

.method public getHistoryData(I)Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHistoryData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    goto :goto_0
.end method

.method public getHistoryDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHistoryData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHistoryDataSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHistoryData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getmHashMap()[Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHashMap:[Ljava/util/HashMap;

    return-object v0
.end method

.method public notify(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;->modelPropertyChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public notifyHistoryCommitted()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->notify(ILjava/lang/Object;)V

    :cond_0
    const-string v0, "historyModel"

    const-string v1, "notifyHistoryCommitted called"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public populate()V
    .locals 0

    return-void
.end method

.method public removeProertyChangeListner()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    return-void
.end method

.method public save()V
    .locals 0

    return-void
.end method

.method public setPropertyChangeListner(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    return-void
.end method

.method public setmHashMap([Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mHashMap:[Ljava/util/HashMap;

    return-void
.end method
