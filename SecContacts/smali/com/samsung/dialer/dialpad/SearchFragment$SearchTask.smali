.class public Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;
.super Landroid/os/AsyncTask;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/dialpad/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/samsung/dialer/dialpad/ContactItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field mIsExtraTask:Z

.field mSearchKeyword:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/dialer/dialpad/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/dialer/dialpad/SearchFragment;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->mSearchKeyword:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->mIsExtraTask:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->doInBackground([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/dialpad/ContactItem;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->mIsExtraTask:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    iget-object v0, v0, Lcom/samsung/dialer/dialpad/SearchFragment;->mDialSearch:Lcom/samsung/dialer/dialpad/DialpadSearch;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->mSearchKeyword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/dialer/dialpad/DialpadSearch;->query(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    iget-object v0, v0, Lcom/samsung/dialer/dialpad/SearchFragment;->mDialSearch:Lcom/samsung/dialer/dialpad/DialpadSearch;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->mSearchKeyword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/dialer/dialpad/DialpadSearch;->queryExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/dialpad/ContactItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->mIsExtraTask:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->mSearchKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/dialer/dialpad/SearchFragment;->displayResultData(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->mSearchKeyword:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dialer/dialpad/SearchFragment;->executeSearch(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->mSearchKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/dialer/dialpad/SearchFragment;->displayResultDataExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
