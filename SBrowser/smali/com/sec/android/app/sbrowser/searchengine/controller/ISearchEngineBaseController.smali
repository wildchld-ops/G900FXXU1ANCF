.class public interface abstract Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;
.super Ljava/lang/Object;
.source "ISearchEngineBaseController.java"


# virtual methods
.method public abstract checkIfAllFavIconsUpdated()Z
.end method

.method public abstract currentTabFavIconUpdate()V
.end method

.method public abstract dismissUi()V
.end method

.method public abstract getListOfAvailableSearchEngine()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getcurrentSearchEngineFavIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract initialiseController(Landroid/app/Activity;)V
.end method

.method public abstract initialiseUi(Landroid/view/View;)V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract onOrientationChanged()V
.end method

.method public abstract setBingSearchEngine(Ljava/lang/String;)V
.end method

.method public abstract showUi(Z)V
.end method
