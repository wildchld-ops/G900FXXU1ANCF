.class Lorg/chromium/content/browser/VSyncMonitor$2;
.super Ljava/lang/Object;
.source "VSyncMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/VSyncMonitor;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/VSyncMonitor$Listener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/VSyncMonitor;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/VSyncMonitor;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/VSyncMonitor$2;->this$0:Lorg/chromium/content/browser/VSyncMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "VSyncTimer"

    invoke-static {v0}, Lorg/chromium/content/common/TraceEvent;->instant(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/content/browser/VSyncMonitor$2;->this$0:Lorg/chromium/content/browser/VSyncMonitor;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    #calls: Lorg/chromium/content/browser/VSyncMonitor;->onVSyncCallback(J)V
    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/VSyncMonitor;->access$000(Lorg/chromium/content/browser/VSyncMonitor;J)V

    return-void
.end method
