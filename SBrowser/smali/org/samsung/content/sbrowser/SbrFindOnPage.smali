.class public Lorg/samsung/content/sbrowser/SbrFindOnPage;
.super Ljava/lang/Object;
.source "SbrFindOnPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# instance fields
.field private mNativeFindOnPage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2}, Lorg/samsung/content/sbrowser/SbrFindOnPage;->nativeInit(I)I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    return-void
.end method

.method private native nativeActivateNearestFindResult(IFF)V
.end method

.method private static native nativeDestroy(I)V
.end method

.method private native nativeGetPreviousFindText(I)Ljava/lang/String;
.end method

.method private native nativeInit(I)I
.end method

.method private native nativeSetSbrFindOnPageDelegate(ILorg/samsung/content/sbrowser/SbrFindOnPageDelegate;)V
.end method

.method private native nativeStartFinding(ILjava/lang/String;ZZ)V
.end method

.method private native nativeStopFinding(II)V
.end method


# virtual methods
.method public activateNearestFindResult(FF)V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    invoke-direct {p0, v0, p1, p2}, Lorg/samsung/content/sbrowser/SbrFindOnPage;->nativeActivateNearestFindResult(IFF)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    :cond_0
    return-void
.end method

.method public getNativeFindOnPage()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    return v0
.end method

.method public getPreviousFindText()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrFindOnPage;->nativeGetPreviousFindText(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFindOnPageDelegate(Lorg/samsung/content/sbrowser/SbrFindOnPageDelegate;)V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/content/sbrowser/SbrFindOnPage;->nativeSetSbrFindOnPageDelegate(ILorg/samsung/content/sbrowser/SbrFindOnPageDelegate;)V

    :cond_0
    return-void
.end method

.method public startFinding(Ljava/lang/String;ZZ)V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/samsung/content/sbrowser/SbrFindOnPage;->nativeStartFinding(ILjava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public stopFinding(Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;)V
    .locals 2

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrFindOnPage;->mNativeFindOnPage:I

    invoke-virtual {p1}, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;->ordinal()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/samsung/content/sbrowser/SbrFindOnPage;->nativeStopFinding(II)V

    :cond_0
    return-void
.end method
