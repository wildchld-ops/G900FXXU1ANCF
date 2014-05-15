.class public interface abstract Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;
.super Ljava/lang/Object;
.source "SearchEngineUI.java"


# virtual methods
.method public abstract createUi(Landroid/view/View;)V
.end method

.method public abstract dismissUi()V
.end method

.method public abstract getAdapter()Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setContext(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;)V
.end method

.method public abstract showUi(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;",
            ">;Z)V"
        }
    .end annotation
.end method
