.class public abstract Lorg/chromium/chrome/browser/TabBase;
.super Ljava/lang/Object;
.source "TabBase.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeTabAndroid:I

.field private final mWindowAndroid:Lorg/chromium/ui/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/TabBase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/TabBase;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/chromium/ui/WindowAndroid;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/TabBase;->mWindowAndroid:Lorg/chromium/ui/WindowAndroid;

    return-void
.end method

.method private destroyBase()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/chrome/browser/TabBase;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/TabBase;->mNativeTabAndroid:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/TabBase;->mNativeTabAndroid:I

    return-void
.end method

.method private setNativePtr(I)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/chrome/browser/TabBase;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/TabBase;->mNativeTabAndroid:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lorg/chromium/chrome/browser/TabBase;->mNativeTabAndroid:I

    return-void
.end method


# virtual methods
.method protected getWindowAndroid()Lorg/chromium/ui/WindowAndroid;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/TabBase;->mWindowAndroid:Lorg/chromium/ui/WindowAndroid;

    return-object v0
.end method
