.class public interface abstract Lcom/android/contacts/common/list/ContactTileView$Listener;
.super Ljava/lang/Object;
.source "ContactTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract getApproximateTileWidth()I
.end method

.method public abstract getSelectionMode()Z
.end method

.method public abstract onContactSelected(Lcom/android/contacts/common/list/ContactTileView;Landroid/graphics/Rect;)V
.end method

.method public abstract onContextContactSelected(Lcom/android/contacts/common/list/ContactTileView;)V
.end method

.method public abstract onKey(Landroid/view/View;ILandroid/view/KeyEvent;)V
.end method
