.class public Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;
.super Ljava/util/Observable;
.source "ImeAdapterObserver.java"


# instance fields
.field mIsDropDownVisible:Z

.field mIsKeyBoardIsVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->mIsKeyBoardIsVisible:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->mIsDropDownVisible:Z

    return-void
.end method


# virtual methods
.method public getIsKeyBoardOrDropDownVisible()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->mIsKeyBoardIsVisible:Z

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->mIsDropDownVisible:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public resetSoftKeyBoardVisibleFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->mIsKeyBoardIsVisible:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->mIsDropDownVisible:Z

    return-void
.end method

.method public setIsDropDownVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->mIsDropDownVisible:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->setChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->notifyObservers()V

    return-void
.end method

.method public setSoftKeyBoardVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->mIsKeyBoardIsVisible:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->setChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->notifyObservers()V

    return-void
.end method
