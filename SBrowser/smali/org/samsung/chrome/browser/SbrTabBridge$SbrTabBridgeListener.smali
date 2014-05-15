.class public interface abstract Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;
.super Ljava/lang/Object;
.source "SbrTabBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/chrome/browser/SbrTabBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SbrTabBridgeListener"
.end annotation


# virtual methods
.method public abstract onDidFlushPendingMessages()V
.end method

.method public abstract receivedHttpAuthRequest(Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract swapWebContents(I)V
.end method
