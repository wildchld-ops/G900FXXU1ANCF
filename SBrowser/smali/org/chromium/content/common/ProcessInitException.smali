.class public Lorg/chromium/content/common/ProcessInitException;
.super Ljava/lang/Exception;
.source "ProcessInitException.java"


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/common/ProcessInitException;->mErrorCode:I

    iput p1, p0, Lorg/chromium/content/common/ProcessInitException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/common/ProcessInitException;->mErrorCode:I

    iput p1, p0, Lorg/chromium/content/common/ProcessInitException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/common/ProcessInitException;->mErrorCode:I

    return v0
.end method
