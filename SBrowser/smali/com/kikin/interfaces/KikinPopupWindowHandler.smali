.class public interface abstract Lcom/kikin/interfaces/KikinPopupWindowHandler;
.super Ljava/lang/Object;
.source "KikinPopupWindowHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;
    }
.end annotation


# virtual methods
.method public abstract dismissPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V
.end method

.method public abstract getPopupWindowPosition(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)Landroid/graphics/Rect;
.end method

.method public abstract isPopupWindowShowing(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)Z
.end method

.method public abstract showPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V
.end method
