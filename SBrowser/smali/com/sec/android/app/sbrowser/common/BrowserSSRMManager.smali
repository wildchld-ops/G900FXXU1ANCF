.class public Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;
.super Ljava/lang/Object;
.source "BrowserSSRMManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "BrowserSSRMManager"

.field private static mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;


# instance fields
.field private browserSSRMService:Landroid/os/ICustomFrequencyManager;

.field private canV8Dash:Z

.field private isDashmode:Z

.field private isPageDash:Z

.field private isSSRMmode:Z

.field private mBrowserDVFSHelper:Landroid/os/DVFSHelper;

.field mBrowserSSRMCanDash:Ljava/lang/Runnable;

.field private mBrowserSSRMHandler:Landroid/os/Handler;

.field mBrowserSSRMReleaser:Ljava/lang/Runnable;

.field private supportedTable:[I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$1;-><init>(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMReleaser:Ljava/lang/Runnable;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$2;-><init>(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMCanDash:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isDashmode:Z

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isPageDash:Z

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->canV8Dash:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMHandler:Landroid/os/Handler;

    const-string v1, "dev.ssrm.mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isSSRMmode:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->browserSSRMService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    const-string v1, "CustomFrequencyManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->browserSSRMService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isSSRMmode:Z

    new-instance v1, Landroid/os/DVFSHelper;

    const/16 v2, 0xc

    invoke-direct {v1, p1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserDVFSHelper:Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->supportedTable:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserDVFSHelper:Landroid/os/DVFSHelper;

    const-string v2, "CPU"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->supportedTable:[I

    aget v3, v3, v4

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;)Landroid/os/ICustomFrequencyManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->browserSSRMService:Landroid/os/ICustomFrequencyManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isDashmode:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->canV8Dash:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    return-object v0
.end method

.method private setDashmode()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isSSRMmode:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserDVFSHelper:Landroid/os/DVFSHelper;

    const v2, 0x15f90

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isPageDash:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->browserSSRMService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->browserSSRMService:Landroid/os/ICustomFrequencyManager;

    const-string v2, "SBROWSER_DASH_MODE"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isDashmode:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BrowserSSRMManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public releaseDashmode()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isSSRMmode:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->canV8Dash:Z

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isPageDash:Z

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isDashmode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->browserSSRMService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->browserSSRMService:Landroid/os/ICustomFrequencyManager;

    const-string v2, "SBROWSER_DASH_MODE"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isDashmode:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BrowserSSRMManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCanDash(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMCanDash:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMCanDash:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->canV8Dash:Z

    goto :goto_0
.end method

.method public setDashmode(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;I)V
    .locals 5

    if-nez p2, :cond_1

    const-string v1, "BrowserSSRMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires dashmode for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->setDashmode()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->canV8Dash:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->ID_V8:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    if-eq p1, v1, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isPageDash:Z

    if-nez v1, :cond_0

    const-string v1, "BrowserSSRMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires SSRMMode for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isSSRMmode:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1, p2}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->browserSSRMService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isDashmode:Z

    if-nez v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->browserSSRMService:Landroid/os/ICustomFrequencyManager;

    const-string v2, "SBROWSER_DASH_MODE"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isDashmode:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->mBrowserSSRMReleaser:Ljava/lang/Runnable;

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BrowserSSRMManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
