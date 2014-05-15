.class public Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;
.super Ljava/lang/Object;
.source "ToolbarModel.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModel;
.implements Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$OnSuggestionsReceivedListener;


# instance fields
.field private mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

.field public final mDismissedSuggestionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mDismissedSuggestionItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addSmartSuggestions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public addToSuggestionListItems(Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public backupCurrentSuggestionList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mDismissedSuggestionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mDismissedSuggestionItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->clearSuggestionList()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->clearDismissedSuggetionList()V

    return-void
.end method

.method public clearDismissedSuggetionList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mDismissedSuggestionItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mDismissedSuggestionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public clearSuggestionList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getDismissedSuggestionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mDismissedSuggestionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSuggestionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestionListItemAt(I)Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionListSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isSuggestionListEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notify(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;->modelPropertyChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSuggestionsReceived([Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->notify(ILjava/lang/Object;)V

    return-void
.end method

.method public populate()V
    .locals 0

    return-void
.end method

.method public removeProertyChangeListner()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    return-void
.end method

.method public save()V
    .locals 0

    return-void
.end method

.method public setPropertyChangeListner(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    return-void
.end method

.method public setSuggestionList(ILcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
