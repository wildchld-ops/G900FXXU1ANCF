.class Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;
.super Landroid/os/AsyncTask;
.source "AddToRejectListInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/AddToRejectListInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddToRejectListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;",
        "Ljava/lang/Void;",
        "Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;Lcom/samsung/contacts/interactions/AddToRejectListInteraction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;-><init>(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)V

    return-void
.end method

.method private addToRejectList(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectValue;",
            ">;)V"
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v12, 0x1

    const-string v7, "reject_number"

    const-string v5, "reject_checked"

    const-string v6, "reject_match"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectValue;

    iget v9, v9, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    if-nez v9, :cond_1

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectValue;

    iget-object v9, v9, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectValue;->number:Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectValue;

    iget v9, v9, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    if-ne v9, v12, :cond_0

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "reject_match = 0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectValue;

    iget-object v9, v9, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectValue;->number:Ljava/lang/String;

    aput-object v9, v11, v13

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v9, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #getter for: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "com.android.phone.callsettings"

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;
    .locals 9

    const/4 v8, 0x0

    aget-object v6, p1, v8

    iget-object v8, v6, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, v6, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v8, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->getPhoneNumbers(J)Ljava/util/ArrayList;
    invoke-static {v8, v0, v1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$700(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;J)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v8, v6, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v6, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v8, v6, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->makeRejectValues(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    invoke-static {v8, v6}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1000(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    :cond_3
    iget-object v8, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->isOverBlackListSize(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Z
    invoke-static {v8, v6}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1100(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x64

    iput v8, v6, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->result:I

    :goto_1
    return-object v6

    :cond_4
    iget-object v5, v6, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->addToRejectList(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->doInBackground([Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 4

    const/16 v3, 0x64

    iget v1, p1, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->result:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #getter for: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_maxcount"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->showBlackListSizeOverDialog(I)V
    invoke-static {v1, v0}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1300(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #getter for: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #getter for: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e031d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->showTipsPopup()V
    invoke-static {v1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1500(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->executeNextJob()V
    invoke-static {v1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$300(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->onPostExecute(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    return-void
.end method
