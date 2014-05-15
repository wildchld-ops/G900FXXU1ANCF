.class public interface abstract Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;
.super Ljava/lang/Object;
.source "OnSIMContactPickerActionListener.java"


# virtual methods
.method public abstract onAllDataDeleted()V
.end method

.method public abstract onCancelAction()V
.end method

.method public abstract onCopyAction(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDeleteAction(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInteractionSelectionChanged(II)V
.end method

.method public abstract onOneDataInputed()V
.end method
