.class public interface abstract Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/SelectActionModeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionHandler"
.end annotation


# virtual methods
.method public abstract copy()Z
.end method

.method public abstract cut()Z
.end method

.method public abstract findOnPage(Ljava/lang/String;)V
.end method

.method public abstract getSelectedText()Ljava/lang/String;
.end method

.method public abstract isPasswordType()Z
.end method

.method public abstract isSBrowserActivity()Z
.end method

.method public abstract isSelectionEditable()Z
.end method

.method public abstract onDestroyActionMode()V
.end method

.method public abstract paste()Z
.end method

.method public abstract pasteByClipboardEx()V
.end method

.method public abstract selectAll()Z
.end method
