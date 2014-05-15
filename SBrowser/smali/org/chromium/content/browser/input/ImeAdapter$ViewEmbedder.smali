.class public interface abstract Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;
.super Ljava/lang/Object;
.source "ImeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ImeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewEmbedder"
.end annotation


# virtual methods
.method public abstract getAttachedView()Landroid/view/View;
.end method

.method public abstract getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;
.end method

.method public abstract onDismissInput()V
.end method

.method public abstract onImeEvent(Z)V
.end method

.method public abstract onSetFieldValue()V
.end method
