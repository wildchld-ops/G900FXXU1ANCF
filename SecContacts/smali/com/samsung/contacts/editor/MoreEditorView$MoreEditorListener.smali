.class public interface abstract Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;
.super Ljava/lang/Object;
.source "MoreEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/editor/MoreEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MoreEditorListener"
.end annotation


# virtual methods
.method public abstract getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isMoreExpanded(Ljava/lang/String;)Z
.end method

.method public abstract onGetMoreData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract onHasMoreData(Ljava/lang/String;)Z
.end method

.method public abstract onStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method public abstract setMoreData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMoreExpanded(Ljava/lang/String;Z)V
.end method
