.class Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;
.super Landroid/os/AsyncTask;
.source "FavoriteSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddAllTaskFavoriteList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;-><init>(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->addFavoriteContactList()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->dismissProgressDialog()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    :goto_0
    #calls: Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->announceItStopped()V
    invoke-static {v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->access$400(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    #calls: Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->announceItStopped()V
    invoke-static {v2}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->access$400(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;)V

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    invoke-virtual {v4}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e0278

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #setter for: Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;
    invoke-static {v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->access$302(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    return-void
.end method
