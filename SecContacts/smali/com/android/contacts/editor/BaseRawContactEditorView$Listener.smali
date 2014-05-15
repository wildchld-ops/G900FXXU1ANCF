.class public interface abstract Lcom/android/contacts/editor/BaseRawContactEditorView$Listener;
.super Ljava/lang/Object;
.source "BaseRawContactEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/BaseRawContactEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract getCustomAccountName()Ljava/lang/String;
.end method

.method public abstract getPredefinedAccountName()Ljava/lang/String;
.end method

.method public abstract onAddAnotherFieldClicked(Ljava/util/ArrayList;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract onExternalEditorRequest(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;)V
.end method
