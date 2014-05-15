.class public Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;
.super Ljava/lang/Object;
.source "SBrowserContextMenuDownloader.java"

# interfaces
.implements Lorg/samsung/chrome/browser/SbrChromeNativePreferences$GetCookiesForUrlListener;


# static fields
.field static DownloadList:Ljava/util/Vector; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SBrowserContextMenuDownloader"


# instance fields
.field mContext:Landroid/content/Context;

.field mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->DownloadList:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public OnGetCookiesForUrl(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string v0, "SBrowserContextMenuDownloader"

    const-string v1, "onDownloadStartNoStream"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener;->isGuestMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->mUrl:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener;->onDownloadStartNoStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->DownloadList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->DownloadList:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->start()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->DownloadList:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "SBrowserContextMenuDownloader"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->GetCookiesForUrl(Ljava/lang/String;Lorg/samsung/chrome/browser/SbrChromeNativePreferences$GetCookiesForUrlListener;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->DownloadList:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
