.class public interface abstract Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;
.super Ljava/lang/Object;
.source "WebAlertListener.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobar/WebAlertListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebAlertBlockedPopupListener"
.end annotation


# virtual methods
.method public abstract getBlockedPopupCount()I
.end method

.method public abstract onLaunchBlockedPopups()V
.end method
