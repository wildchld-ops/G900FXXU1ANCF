.class final Lorg/chromium/base/ActivityStatus$1;
.super Ljava/lang/Object;
.source "ActivityStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/ActivityStatus;->registerThreadSafeNativeStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->access$100()Lorg/chromium/base/ObserverList;

    move-result-object v0

    new-instance v1, Lorg/chromium/base/ActivityStatus$1$1;

    invoke-direct {v1, p0}, Lorg/chromium/base/ActivityStatus$1$1;-><init>(Lorg/chromium/base/ActivityStatus$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)V

    return-void
.end method
