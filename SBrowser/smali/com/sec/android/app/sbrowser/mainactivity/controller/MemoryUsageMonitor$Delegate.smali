.class public interface abstract Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;
.super Ljava/lang/Object;
.source "MemoryUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract clearCachedNtpAndThumbnails()V
.end method

.method public abstract getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
.end method

.method public abstract getPrivateDirtyMemoryOfRenderersKBytes()I
.end method

.method public abstract registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V
.end method

.method public abstract saveStateAndDestroyTab(I)V
.end method

.method public abstract unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V
.end method
