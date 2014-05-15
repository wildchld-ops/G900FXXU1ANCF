.class public Lorg/chromium/base/ActivityStatus;
.super Ljava/lang/Object;
.source "ActivityStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/ActivityStatus$StateListener;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "base::android"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CREATED:I = 0x1

.field public static final DESTROYED:I = 0x6

.field public static final PAUSED:I = 0x4

.field public static final RESUMED:I = 0x3

.field public static final STARTED:I = 0x2

.field public static final STOPPED:I = 0x5

.field private static sActivity:Landroid/app/Activity;

.field private static sActivityState:I

.field private static sActivityStatus:Lorg/chromium/base/ActivityStatus;

.field private static final sStateListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/chromium/base/ActivityStatus$StateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/base/ActivityStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/ActivityStatus;->$assertionsDisabled:Z

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lorg/chromium/base/ActivityStatus;->sStateListeners:Lorg/chromium/base/ObserverList;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/ActivityStatus;->nativeOnActivityStateChange(I)V

    return-void
.end method

.method static synthetic access$100()Lorg/chromium/base/ObserverList;
    .locals 1

    sget-object v0, Lorg/chromium/base/ActivityStatus;->sStateListeners:Lorg/chromium/base/ObserverList;

    return-object v0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lorg/chromium/base/ActivityStatus;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getInstance()Lorg/chromium/base/ActivityStatus;
    .locals 2

    sget-boolean v0, Lorg/chromium/base/ActivityStatus;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lorg/chromium/base/ActivityStatus;->sActivityStatus:Lorg/chromium/base/ActivityStatus;

    if-nez v0, :cond_1

    new-instance v0, Lorg/chromium/base/ActivityStatus;

    invoke-direct {v0}, Lorg/chromium/base/ActivityStatus;-><init>()V

    sput-object v0, Lorg/chromium/base/ActivityStatus;->sActivityStatus:Lorg/chromium/base/ActivityStatus;

    :cond_1
    sget-object v0, Lorg/chromium/base/ActivityStatus;->sActivityStatus:Lorg/chromium/base/ActivityStatus;

    return-object v0
.end method

.method public static getState()I
    .locals 1

    sget v0, Lorg/chromium/base/ActivityStatus;->sActivityState:I

    return v0
.end method

.method public static isPaused()Z
    .locals 2

    sget v0, Lorg/chromium/base/ActivityStatus;->sActivityState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeOnActivityStateChange(I)V
.end method

.method public static onStateChange(Landroid/app/Activity;I)V
    .locals 3

    sget-object v2, Lorg/chromium/base/ActivityStatus;->sActivity:Landroid/app/Activity;

    if-eq v2, p0, :cond_0

    sput-object p0, Lorg/chromium/base/ActivityStatus;->sActivity:Landroid/app/Activity;

    :cond_0
    sput p1, Lorg/chromium/base/ActivityStatus;->sActivityState:I

    sget-object v2, Lorg/chromium/base/ActivityStatus;->sStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/ActivityStatus$StateListener;

    invoke-interface {v1, p1}, Lorg/chromium/base/ActivityStatus$StateListener;->onActivityStateChange(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    const/4 v2, 0x0

    sput-object v2, Lorg/chromium/base/ActivityStatus;->sActivity:Landroid/app/Activity;

    :cond_2
    return-void
.end method

.method public static registerStateListener(Lorg/chromium/base/ActivityStatus$StateListener;)V
    .locals 1

    sget-object v0, Lorg/chromium/base/ActivityStatus;->sStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method private static registerThreadSafeNativeStateListener()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/base/ActivityStatus$1;

    invoke-direct {v0}, Lorg/chromium/base/ActivityStatus$1;-><init>()V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static unregisterStateListener(Lorg/chromium/base/ActivityStatus$StateListener;)V
    .locals 1

    sget-object v0, Lorg/chromium/base/ActivityStatus;->sStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method
