.class public Lorg/chromium/ui/ViewAndroid;
.super Ljava/lang/Object;
.source "ViewAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "ui"
.end annotation


# instance fields
.field private mNativeViewAndroid:I

.field private final mViewAndroidDelegate:Lorg/chromium/ui/ViewAndroidDelegate;

.field private final mWindowAndroid:Lorg/chromium/ui/WindowAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/WindowAndroid;Lorg/chromium/ui/ViewAndroidDelegate;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/ui/ViewAndroid;->mNativeViewAndroid:I

    iput-object p1, p0, Lorg/chromium/ui/ViewAndroid;->mWindowAndroid:Lorg/chromium/ui/WindowAndroid;

    iput-object p2, p0, Lorg/chromium/ui/ViewAndroid;->mViewAndroidDelegate:Lorg/chromium/ui/ViewAndroidDelegate;

    iget-object v0, p0, Lorg/chromium/ui/ViewAndroid;->mWindowAndroid:Lorg/chromium/ui/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/WindowAndroid;->getNativePointer()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/ViewAndroid;->nativeInit(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/ui/ViewAndroid;->mNativeViewAndroid:I

    return-void
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeInit(I)I
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget v0, p0, Lorg/chromium/ui/ViewAndroid;->mNativeViewAndroid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/ui/ViewAndroid;->mNativeViewAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/ui/ViewAndroid;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/ui/ViewAndroid;->mNativeViewAndroid:I

    :cond_0
    return-void
.end method

.method public getNativePointer()I
    .locals 1

    iget v0, p0, Lorg/chromium/ui/ViewAndroid;->mNativeViewAndroid:I

    return v0
.end method

.method public getViewAndroidDelegate()Lorg/chromium/ui/ViewAndroidDelegate;
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/ViewAndroid;->mViewAndroidDelegate:Lorg/chromium/ui/ViewAndroidDelegate;

    return-object v0
.end method
