.class Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
.super Ljava/lang/Object;
.source "MediaResourceGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/MediaResourceGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaMetadata"
.end annotation


# instance fields
.field private final mDurationInMilliseconds:I

.field private final mHeight:I

.field private final mSuccess:Z

.field private final mWidth:I


# direct methods
.method private constructor <init>(IIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mDurationInMilliseconds:I

    iput p2, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mWidth:I

    iput p3, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mHeight:I

    iput-boolean p4, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mSuccess:Z

    return-void
.end method

.method synthetic constructor <init>(IIIZLorg/chromium/content/browser/MediaResourceGetter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;-><init>(IIIZ)V

    return-void
.end method

.method private getDurationInMilliseconds()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "MediaMetadata"
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mDurationInMilliseconds:I

    return v0
.end method

.method private getHeight()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "MediaMetadata"
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mHeight:I

    return v0
.end method

.method private getWidth()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "MediaMetadata"
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mWidth:I

    return v0
.end method

.method private isSuccess()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "MediaMetadata"
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mSuccess:Z

    return v0
.end method
