.class public Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;
.super Lcom/android/contacts/common/util/WeakAsyncTask;
.source "ContactHistoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/ContactHistoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/util/WeakAsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/samsung/contacts/detail/ContactHistoryListFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private targetFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/detail/ContactHistoryListFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->targetFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    iput-object p2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    check-cast p2, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->doInBackground(Lcom/samsung/contacts/detail/ContactHistoryListFragment;[Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/samsung/contacts/detail/ContactHistoryListFragment;[Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/contacts/detail/ContactHistoryListFragment;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v6, 0x0

    aget-object v2, p2, v6

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    return-object v10

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v6, v0, 0x28

    if-nez v6, :cond_3

    div-int/lit8 v1, v0, 0x28

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_2
    const/16 v6, 0x28

    if-ge v3, v6, :cond_4

    mul-int/lit8 v6, v5, 0x28

    add-int/2addr v6, v3

    if-ge v6, v0, :cond_4

    if-eqz v3, :cond_2

    const-string v6, " , "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    mul-int/lit8 v6, v5, 0x28

    add-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    div-int/lit8 v6, v0, 0x28

    add-int/lit8 v1, v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->targetFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v6}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id in ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method protected onPostExecute(Lcom/samsung/contacts/detail/ContactHistoryListFragment;Ljava/lang/Void;)V
    .locals 2

    const/16 v1, 0x8

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->access$400(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_1

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->access$400(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->targetFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->access$500(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->targetFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/ContactHistoryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->setDeleteMode(Z)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->onPostExecute(Lcom/samsung/contacts/detail/ContactHistoryListFragment;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x7f0e02f1

    invoke-virtual {p1, v3}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->context:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/common/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-boolean v0, p1, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    if-nez v0, :cond_1

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {p1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->access$300(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->access$400(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->onPreExecute(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)V

    return-void
.end method
