.class public interface abstract Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onAddingComplete(ZLjava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;)V
.end method

.method public abstract onEditingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;)V
.end method

.method public abstract onListingComplete(Z)V
.end method

.method public abstract onListingProgress(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRemovingComplete(Z)V
.end method

.method public abstract onRemovingProgress(II)V
.end method

.method public abstract onResortingComplete()V
.end method
