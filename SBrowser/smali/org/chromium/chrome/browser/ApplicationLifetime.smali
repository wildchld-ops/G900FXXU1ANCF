.class public Lorg/chromium/chrome/browser/ApplicationLifetime;
.super Ljava/lang/Object;
.source "ApplicationLifetime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sObserver:Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/ApplicationLifetime;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ApplicationLifetime;->$assertionsDisabled:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/ApplicationLifetime;->sObserver:Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeObserver()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/ApplicationLifetime;->sObserver:Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;

    return-void
.end method

.method public static setObserver(Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;)V
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/ApplicationLifetime;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/ApplicationLifetime;->sObserver:Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sput-object p0, Lorg/chromium/chrome/browser/ApplicationLifetime;->sObserver:Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;

    return-void
.end method

.method public static terminate(Z)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/chrome/browser/ApplicationLifetime;->sObserver:Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/ApplicationLifetime;->sObserver:Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;->onTerminate(Z)V

    :cond_0
    return-void
.end method
