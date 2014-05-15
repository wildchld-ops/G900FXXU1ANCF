.class final Lorg/chromium/base/PowerMonitor$1;
.super Ljava/lang/Object;
.source "PowerMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/PowerMonitor;
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
    .locals 0

    #calls: Lorg/chromium/base/PowerMonitor;->nativeOnMainActivitySuspended()V
    invoke-static {}, Lorg/chromium/base/PowerMonitor;->access$100()V

    return-void
.end method
