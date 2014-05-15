.class public Lorg/chromium/content/browser/ChildProcessLauncher;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CALLBACK_FOR_GPU_PROCESS:I = 0x1

.field private static final CALLBACK_FOR_RENDERER_PROCESS:I = 0x2

.field private static final CALLBACK_FOR_UNKNOWN_PROCESS:I = 0x0

.field static final MAX_REGISTERED_PRIVILEGED_SERVICES:I = 0x3

.field static final MAX_REGISTERED_SANDBOXED_SERVICES:I = 0x6

.field private static final NULL_PROCESS_HANDLE:I = 0x0

.field private static final SWITCH_GPU_PROCESS:Ljava/lang/String; = "gpu-process"

.field private static final SWITCH_PPAPI_BROKER_PROCESS:Ljava/lang/String; = "ppapi-broker"

.field private static final SWITCH_PROCESS_TYPE:Ljava/lang/String; = "type"

.field private static final SWITCH_RENDERER_PROCESS:Ljava/lang/String; = "renderer"

.field private static TAG:Ljava/lang/String;

.field private static mConnectionAllocated:Z

.field private static final mPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

.field private static final mSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

.field private static mServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/content/browser/ChildProcessConnection;",
            ">;"
        }
    .end annotation
.end field

.field static mSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

.field private static sBindingManager:Lorg/chromium/content/browser/BindingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lorg/chromium/content/browser/ChildProcessLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    const-string v0, "ChildProcessLauncher"

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->TAG:Ljava/lang/String;

    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;-><init>(Z)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->mSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    invoke-direct {v0, v2}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;-><init>(Z)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->mPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    sput-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher;->mConnectionAllocated:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->mServiceMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->mSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-static {}, Lorg/chromium/content/browser/BindingManager;->createBindingManager()Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lorg/chromium/content/browser/BindingManager;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->mServiceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V

    return-void
.end method

.method static synthetic access$400(II)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeOnChildProcessStarted(II)V

    return-void
.end method

.method static synthetic access$500(ILandroid/view/Surface;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V

    return-void
.end method

.method static synthetic access$600(I)Landroid/view/Surface;
    .locals 1

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeGetViewSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method private static allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;Z)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 1

    invoke-static {p0, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateConnection(Landroid/content/Context;Z)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ChildProcessConnection;->start([Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static allocateConnection(Landroid/content/Context;Z)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 4

    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocateConnection inSandbox="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$1;

    invoke-direct {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$1;-><init>()V

    const/4 v1, 0x1

    sput-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->mConnectionAllocated:Z

    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->allocate(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v1

    return-object v1
.end method

.method private static createCallback(I)Lorg/chromium/content/common/IChildProcessCallback;
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$3;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$3;-><init>(I)V

    return-object v0
.end method

.method private static freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lorg/chromium/content/browser/ChildProcessConnection;->isInSandbox()Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->free(Lorg/chromium/content/browser/ChildProcessConnection;)V

    goto :goto_0
.end method

.method static getBindingManager()Lorg/chromium/content/browser/BindingManager;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    return-object v0
.end method

.method public static getChildService(I)Lorg/chromium/content/common/IChildProcessService;
    .locals 3

    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->mServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessConnection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->getService()Lorg/chromium/content/common/IChildProcessService;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getConnectionAllocator(Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->mSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->mPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    goto :goto_0
.end method

.method private static getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static isOomProtected(I)Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/BindingManager;->isOomProtected(I)Z

    move-result v0

    return v0
.end method

.method private static native nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V
.end method

.method private static native nativeGetViewSurface(I)Landroid/view/Surface;
.end method

.method private static native nativeOnChildProcessStarted(II)V
.end method

.method public static onBroughtToForeground()V
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManager;->onBroughtToForeground()V

    return-void
.end method

.method public static onSentToBackground()V
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManager;->onSentToBackground()V

    return-void
.end method

.method public static setChildProcessClass(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/chromium/content/app/SandboxedProcessService;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/chromium/content/app/PrivilegedProcessService;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->mConnectionAllocated:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->mSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->setServiceClass(Ljava/lang/Class;)V

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->mPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->setServiceClass(Ljava/lang/Class;)V

    return-void
.end method

.method static start(Landroid/content/Context;[Ljava/lang/String;[I[I[ZI)V
    .locals 13
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v9, "VerificationLog"

    const-string v10, "Calling ChildProcessLauncher - start - begin"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v9, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    array-length v9, p2

    move-object/from16 v0, p3

    array-length v10, v0

    if-ne v9, v10, :cond_0

    move-object/from16 v0, p3

    array-length v9, v0

    move-object/from16 v0, p4

    array-length v10, v0

    if-eq v9, v10, :cond_1

    :cond_0
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_1
    move-object/from16 v0, p3

    array-length v9, v0

    new-array v5, v9, [Lorg/chromium/content/browser/FileDescriptorInfo;

    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p3

    array-length v9, v0

    if-ge v6, v9, :cond_2

    new-instance v9, Lorg/chromium/content/browser/FileDescriptorInfo;

    aget v10, p2, v6

    aget v11, p3, v6

    aget-boolean v12, p4, v6

    invoke-direct {v9, v10, v11, v12}, Lorg/chromium/content/browser/FileDescriptorInfo;-><init>(IIZ)V

    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v9, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v9, :cond_3

    if-nez p5, :cond_3

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_3
    const/4 v2, 0x0

    const/4 v7, 0x1

    const-string v9, "type"

    invoke-static {p1, v9}, Lorg/chromium/content/browser/ChildProcessLauncher;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "renderer"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v2, 0x2

    :cond_4
    :goto_1
    const/4 v1, 0x0

    const-class v10, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v10

    if-eqz v7, :cond_5

    :try_start_0
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->mSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    const/4 v9, 0x0

    sput-object v9, Lorg/chromium/content/browser/ChildProcessLauncher;->mSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    :cond_5
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_8

    invoke-static {p0, p1, v7}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;Z)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v9, 0x0

    move/from16 v0, p5

    invoke-static {v0, v9}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeOnChildProcessStarted(II)V

    :goto_2
    return-void

    :cond_6
    const-string v9, "gpu-process"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    const-string v9, "ppapi-broker"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v7, 0x0

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    :cond_8
    move-object v3, v1

    sget-object v9, Lorg/chromium/content/browser/ChildProcessLauncher;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting up connection to process: slot="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lorg/chromium/content/browser/ChildProcessLauncher$2;

    move/from16 v0, p5

    invoke-direct {v4, v0, v3}, Lorg/chromium/content/browser/ChildProcessLauncher$2;-><init>(ILorg/chromium/content/browser/ChildProcessConnection;)V

    invoke-static {v2}, Lorg/chromium/content/browser/ChildProcessLauncher;->createCallback(I)Lorg/chromium/content/common/IChildProcessCallback;

    move-result-object v9

    invoke-interface {v3, p1, v5, v9, v4}, Lorg/chromium/content/browser/ChildProcessConnection;->setupConnection([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Lorg/chromium/content/common/IChildProcessCallback;Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;)V

    goto :goto_2
.end method

.method static stop(I)V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopping child connection: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->mServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessConnection;

    if-nez v0, :cond_0

    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to stop non-existent connection, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-virtual {v1, p0}, Lorg/chromium/content/browser/BindingManager;->clearConnection(I)V

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->stop()V

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V

    goto :goto_0
.end method

.method public static warmUp(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->mSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;Z)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->mSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
