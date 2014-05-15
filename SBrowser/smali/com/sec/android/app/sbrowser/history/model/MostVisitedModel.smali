.class public Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;
.super Ljava/lang/Object;
.source "MostVisitedModel.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModel;


# static fields
.field private static final MOSTVISITEDMODEL:Ljava/lang/String; = "MostVisitedModel"

.field private static mModel:Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;


# instance fields
.field private mNativeMostVisitedModel:I
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->mModel:Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->mNativeMostVisitedModel:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->init()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->mModel:Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->mModel:Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->mModel:Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;

    return-object v0
.end method

.method private final init()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->populate()V

    return-void
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeGetVisitCountForURL(ILjava/lang/String;)I
.end method

.method private native nativeInit()I
.end method


# virtual methods
.method public clearAll()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->mModel:Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->mNativeMostVisitedModel:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->nativeDestroy(I)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->mModel:Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;

    return-void
.end method

.method public isURLVisitCountGreaterThan(Ljava/lang/String;I)Z
    .locals 2

    iget v1, p0, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->mNativeMostVisitedModel:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->nativeGetVisitCountForURL(ILjava/lang/String;)I

    move-result v0

    if-lt v0, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notify(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public populate()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->nativeInit()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->mNativeMostVisitedModel:I

    return-void
.end method

.method public removeProertyChangeListner()V
    .locals 0

    return-void
.end method

.method public save()V
    .locals 0

    return-void
.end method

.method public setPropertyChangeListner(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 0

    return-void
.end method
