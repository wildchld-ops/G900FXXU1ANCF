.class public Lorg/chromium/content/browser/DownloadController;
.super Ljava/lang/Object;
.source "DownloadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "DownloadController"

.field private static sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

.field private static sInstance:Lorg/chromium/content/browser/DownloadController;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lorg/chromium/content/browser/DownloadController;->nativeInit()V

    return-void
.end method

.method private static downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getDownloadDelegate()Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/chromium/content/browser/DownloadController;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/content/browser/DownloadController;->sInstance:Lorg/chromium/content/browser/DownloadController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/DownloadController;

    invoke-direct {v0}, Lorg/chromium/content/browser/DownloadController;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/DownloadController;->sInstance:Lorg/chromium/content/browser/DownloadController;

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/DownloadController;->sInstance:Lorg/chromium/content/browser/DownloadController;

    return-object v0
.end method

.method private native nativeInit()V
.end method

.method public static setDownloadNotificationService(Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;)V
    .locals 0

    sput-object p0, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    return-void
.end method


# virtual methods
.method public newHttpGetDownload(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {p1}, Lorg/chromium/content/browser/DownloadController;->downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    invoke-interface/range {v0 .. v8}, Lorg/chromium/content/browser/ContentViewDownloadDelegate;->requestHttpGetDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onDangerousDownload(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;I)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {p1}, Lorg/chromium/content/browser/DownloadController;->downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3}, Lorg/chromium/content/browser/ContentViewDownloadDelegate;->onDangerousDownload(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onDownloadCompleted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 9
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    move-wide v6, p6

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;->onDownloadCompleted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    return-void
.end method

.method public onDownloadStarted(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {p1}, Lorg/chromium/content/browser/DownloadController;->downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3}, Lorg/chromium/content/browser/ContentViewDownloadDelegate;->onDownloadStarted(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
