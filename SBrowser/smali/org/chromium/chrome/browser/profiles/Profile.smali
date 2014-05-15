.class public Lorg/chromium/chrome/browser/profiles/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# instance fields
.field private mNativeProfileAndroid:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mNativeProfileAndroid:I

    return-void
.end method

.method private static create(I)Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/profiles/Profile;-><init>(I)V

    return-object v0
.end method

.method private destroy()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mNativeProfileAndroid:I

    return-void
.end method

.method private getNativePointer()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mNativeProfileAndroid:I

    return v0
.end method
