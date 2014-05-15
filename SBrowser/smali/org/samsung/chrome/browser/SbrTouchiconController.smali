.class public Lorg/samsung/chrome/browser/SbrTouchiconController;
.super Ljava/lang/Object;
.source "SbrTouchiconController.java"


# static fields
.field private static final TOUCHICON:Ljava/lang/String; = "TOUCHICON"

.field private static instance:Lorg/samsung/chrome/browser/SbrTouchiconController;


# instance fields
.field private DECREASE_SIZE:I

.field private MAX_SIZE:I

.field private NOTIFY_WITH_DELAY:I

.field private mDataUpdated:Z

.field private mDefaultTouchicon:[B

.field private mNativeTouchiconController:I
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mNotifyHandler:Landroid/os/Handler;

.field private mRequestedTouchicon:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchiconNotifyRunnable:Ljava/lang/Runnable;

.field private mTouchicons:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/chrome/browser/SbrTouchiconController;->instance:Lorg/samsung/chrome/browser/SbrTouchiconController;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mNativeTouchiconController:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchicons:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mRequestedTouchicon:Ljava/util/Vector;

    const/16 v0, 0x32

    iput v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->MAX_SIZE:I

    const/16 v0, 0xf

    iput v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->DECREASE_SIZE:I

    const/16 v0, 0x14

    iput v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->NOTIFY_WITH_DELAY:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mNotifyHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mDefaultTouchicon:[B

    iput-boolean v1, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mDataUpdated:Z

    new-instance v0, Lorg/samsung/chrome/browser/SbrTouchiconController$1;

    invoke-direct {v0, p0}, Lorg/samsung/chrome/browser/SbrTouchiconController$1;-><init>(Lorg/samsung/chrome/browser/SbrTouchiconController;)V

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchiconNotifyRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrTouchiconController;->nativeInit()I

    move-result v0

    iput v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mNativeTouchiconController:I

    return-void
.end method

.method static synthetic access$000(Lorg/samsung/chrome/browser/SbrTouchiconController;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mDataUpdated:Z

    return v0
.end method

.method static synthetic access$002(Lorg/samsung/chrome/browser/SbrTouchiconController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mDataUpdated:Z

    return p1
.end method

.method public static getInstance()Lorg/samsung/chrome/browser/SbrTouchiconController;
    .locals 1

    sget-object v0, Lorg/samsung/chrome/browser/SbrTouchiconController;->instance:Lorg/samsung/chrome/browser/SbrTouchiconController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/samsung/chrome/browser/SbrTouchiconController;

    invoke-direct {v0}, Lorg/samsung/chrome/browser/SbrTouchiconController;-><init>()V

    sput-object v0, Lorg/samsung/chrome/browser/SbrTouchiconController;->instance:Lorg/samsung/chrome/browser/SbrTouchiconController;

    :cond_0
    sget-object v0, Lorg/samsung/chrome/browser/SbrTouchiconController;->instance:Lorg/samsung/chrome/browser/SbrTouchiconController;

    return-object v0
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeGetTouchicon(ILjava/lang/String;)V
.end method

.method private native nativeInit()I
.end method


# virtual methods
.method public DeleteFewItems()V
    .locals 4

    :cond_0
    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchicons:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    iget v3, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->MAX_SIZE:I

    if-lt v2, v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->DECREASE_SIZE:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchicons:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchicons:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchicons:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public GetTouchiconData(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchicons:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchicons:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mDefaultTouchicon:[B

    goto :goto_0
.end method

.method public IsTouchiconAvailable(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchicons:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public RequestTouchicon(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mRequestedTouchicon:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchicons:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    iget v1, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->MAX_SIZE:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrTouchiconController;->DeleteFewItems()V

    :cond_0
    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchicons:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mRequestedTouchicon:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mNotifyHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchiconNotifyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mRequestedTouchicon:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mNativeTouchiconController:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/chrome/browser/SbrTouchiconController;->nativeGetTouchicon(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mRequestedTouchicon:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mNotifyHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchiconNotifyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mNotifyHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchiconNotifyRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->NOTIFY_WITH_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public SetDefaultTouchicon(Ljava/lang/String;[B)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iput-object p2, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mDefaultTouchicon:[B

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mRequestedTouchicon:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mRequestedTouchicon:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mNotifyHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchiconNotifyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public SetTouchicon(Ljava/lang/String;[B)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchicons:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mDataUpdated:Z

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchicons:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mRequestedTouchicon:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mRequestedTouchicon:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mNotifyHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchiconNotifyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mNativeTouchiconController:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mNativeTouchiconController:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTouchiconController;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mNativeTouchiconController:I

    :cond_0
    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mRequestedTouchicon:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController;->mTouchicons:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method
