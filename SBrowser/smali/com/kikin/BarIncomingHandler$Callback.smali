.class public interface abstract Lcom/kikin/BarIncomingHandler$Callback;
.super Ljava/lang/Object;
.source "BarIncomingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/BarIncomingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onBarAnimationFinished()V
.end method

.method public abstract onBarHidden()V
.end method

.method public abstract onBarIsHidding()V
.end method

.method public abstract onBarMessage(Landroid/os/Message;)V
.end method

.method public abstract onBarRectChanged(Landroid/graphics/Rect;I)V
.end method

.method public abstract onBarVisibilityChanged(I)V
.end method

.method public abstract onKikinDisabled(Z)V
.end method

.method public abstract onQueryChanged(Ljava/lang/String;)V
.end method

.method public abstract onQueryRewritten(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSaveKikinBarState(Landroid/os/Bundle;)V
.end method

.method public abstract onUserAgreementNotAccepted()V
.end method
