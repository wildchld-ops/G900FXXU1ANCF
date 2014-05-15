.class public interface abstract Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;
.super Ljava/lang/Object;
.source "ChromeViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebPageNavegationListener"
.end annotation


# virtual methods
.method public abstract notify_newWebPageIsAboutToOpen(Lorg/chromium/content/browser/ContentView;)V
.end method

.method public abstract notify_newWebPageIsNowAvailable(Lorg/chromium/content/browser/ContentView;)V
.end method
