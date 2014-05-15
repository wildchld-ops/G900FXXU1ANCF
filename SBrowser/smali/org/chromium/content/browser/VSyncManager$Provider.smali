.class public interface abstract Lorg/chromium/content/browser/VSyncManager$Provider;
.super Ljava/lang/Object;
.source "VSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/VSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation


# virtual methods
.method public abstract registerVSyncListener(Lorg/chromium/content/browser/VSyncManager$Listener;)V
.end method

.method public abstract unregisterVSyncListener(Lorg/chromium/content/browser/VSyncManager$Listener;)V
.end method
