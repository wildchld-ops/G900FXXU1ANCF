.class public Lorg/samsung/chrome/browser/SbrTabModel;
.super Ljava/lang/Object;
.source "SbrTabModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/chrome/browser/SbrTabModel$SbrTabModelListener;
    }
.end annotation


# instance fields
.field private mNativeSbrTabModel:I

.field private mSbrTabModelListener:Lorg/samsung/chrome/browser/SbrTabModel$SbrTabModelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrTabModel;->nativeInit()I

    move-result v0

    iput v0, p0, Lorg/samsung/chrome/browser/SbrTabModel;->mNativeSbrTabModel:I

    return-void
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeInit()I
.end method


# virtual methods
.method public createTabWithNativeWebContents(I)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTabModel;->mSbrTabModelListener:Lorg/samsung/chrome/browser/SbrTabModel$SbrTabModelListener;

    invoke-interface {v0, p1}, Lorg/samsung/chrome/browser/SbrTabModel$SbrTabModelListener;->createTabFromNative(I)V

    return-void
.end method

.method public getCount()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public setSbrTabModelListener(Lorg/samsung/chrome/browser/SbrTabModel$SbrTabModelListener;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrTabModel;->mSbrTabModelListener:Lorg/samsung/chrome/browser/SbrTabModel$SbrTabModelListener;

    return-void
.end method
