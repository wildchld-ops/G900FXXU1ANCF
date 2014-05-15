.class public Lorg/chromium/content/browser/AndroidBrowserProcess;
.super Ljava/lang/Object;
.source "AndroidBrowserProcess.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field public static final MAX_RENDERERS_AUTOMATIC:I = -0x1

.field public static final MAX_RENDERERS_LIMIT:I = 0x3

.field public static final MAX_RENDERERS_SINGLE_PROCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BrowserProcessMain"

.field private static sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/content/browser/AndroidBrowserProcess;->sInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPlugins(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/chromium/content/browser/PepperPluginManager;->getPlugins(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/content/common/ProcessInitException;
        }
    .end annotation

    const/4 v5, 0x1

    sget-boolean v4, Lorg/chromium/content/browser/AndroidBrowserProcess;->sInitialized:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    sput-boolean v5, Lorg/chromium/content/browser/AndroidBrowserProcess;->sInitialized:Z

    invoke-static {p0}, Lorg/chromium/content/browser/ResourceExtractor;->get(Landroid/content/Context;)Lorg/chromium/content/browser/ResourceExtractor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ResourceExtractor;->startExtractingResources()V

    invoke-static {}, Lorg/chromium/content/app/LibraryLoader;->ensureInitialized()V

    invoke-static {p0}, Lorg/chromium/content/browser/DeviceUtils;->addDeviceSpecificUserAgentSwitch(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/content/browser/AndroidBrowserProcess;->normalizeMaxRendererProcesses(Landroid/content/Context;I)I

    move-result v1

    const-string v4, "BrowserProcessMain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initializing chromium process, renderers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lorg/chromium/content/browser/ResourceExtractor;->waitForCompletion()V

    invoke-static {}, Lorg/chromium/content/browser/AndroidBrowserProcess;->nativeIsPluginEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Lorg/chromium/content/browser/AndroidBrowserProcess;->getPlugins(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v1, v4}, Lorg/chromium/content/browser/AndroidBrowserProcess;->nativeSetCommandLineFlags(ILjava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/content/app/ContentMain;->initApplicationContext(Landroid/content/Context;)V

    invoke-static {}, Lorg/chromium/content/app/ContentMain;->start()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v4, Lorg/chromium/content/common/ProcessInitException;

    invoke-direct {v4, v3}, Lorg/chromium/content/common/ProcessInitException;-><init>(I)V

    throw v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method public static initChromiumBrowserProcessForTests(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lorg/chromium/content/browser/ResourceExtractor;->get(Landroid/content/Context;)Lorg/chromium/content/browser/ResourceExtractor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ResourceExtractor;->startExtractingResources()V

    invoke-virtual {v0}, Lorg/chromium/content/browser/ResourceExtractor;->waitForCompletion()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/chromium/content/browser/AndroidBrowserProcess;->nativeSetCommandLineFlags(ILjava/lang/String;)V

    return-void
.end method

.method private static native nativeIsOfficialBuild()Z
.end method

.method private static native nativeIsPluginEnabled()Z
.end method

.method private static native nativeSetCommandLineFlags(ILjava/lang/String;)V
.end method

.method private static normalizeMaxRendererProcesses(Landroid/content/Context;I)I
    .locals 5

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    if-le p1, v1, :cond_1

    const-string v2, "BrowserProcessMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Excessive maxRendererProcesses value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method
