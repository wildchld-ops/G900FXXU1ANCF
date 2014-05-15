.class public Lorg/chromium/chrome/browser/StatusTray;
.super Ljava/lang/Object;
.source "StatusTray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/StatusTray$StatusTrayFactory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sFactory:Lorg/chromium/chrome/browser/StatusTray$StatusTrayFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/StatusTray;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/StatusTray;->$assertionsDisabled:Z

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

.method private static create(Landroid/content/Context;)Lorg/chromium/chrome/browser/StatusTray;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/chrome/browser/StatusTray;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/StatusTray;->sFactory:Lorg/chromium/chrome/browser/StatusTray$StatusTrayFactory;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/StatusTray;->sFactory:Lorg/chromium/chrome/browser/StatusTray$StatusTrayFactory;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/StatusTray$StatusTrayFactory;->create(Landroid/content/Context;)Lorg/chromium/chrome/browser/StatusTray;

    move-result-object v0

    return-object v0
.end method

.method public static setFactory(Lorg/chromium/chrome/browser/StatusTray$StatusTrayFactory;)V
    .locals 0

    sput-object p0, Lorg/chromium/chrome/browser/StatusTray;->sFactory:Lorg/chromium/chrome/browser/StatusTray$StatusTrayFactory;

    return-void
.end method


# virtual methods
.method protected createMediaCaptureStatusNotification()V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method
