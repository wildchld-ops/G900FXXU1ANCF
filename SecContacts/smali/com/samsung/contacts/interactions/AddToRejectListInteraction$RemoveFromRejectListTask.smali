.class Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;
.super Landroid/os/AsyncTask;
.source "AddToRejectListInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/AddToRejectListInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveFromRejectListTask"
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

    iput-object p1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;Lcom/samsung/contacts/interactions/AddToRejectListInteraction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;-><init>(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)V

    return-void
.end method

.method private RemoveFromRejectList(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectValue;",
            ">;)V"
        }
    .end annotation

    const-string v6, "reject_number=? AND reject_checked=1"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectValue;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, v5, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectValue;->number:Ljava/lang/String;

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #getter for: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.phone.callsettings"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;
    .locals 12

    const/4 v9, 0x0

    aget-object v7, p1, v9

    iget-object v2, v7, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->contactUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->getPhoneNumbers(J)Ljava/util/ArrayList;
    invoke-static {v9, v10, v11}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$700(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;J)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->findSamePhoneNumberContacts(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    invoke-static {v9, v7}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$900(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    iget-object v9, v7, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, v7, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v9, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->getPhoneNumbers(J)Ljava/util/ArrayList;
    invoke-static {v9, v0, v1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$700(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;J)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v9, v7, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v7, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->queryExactlyMatchBlackList()Ljava/util/HashMap;
    invoke-static {v9}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$600(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v7, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->exactlyMatchblackListHashMap:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->makeRejectValues(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    invoke-static {v9, v7}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1000(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    iget-object v9, v7, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    invoke-direct {p0, v9}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->RemoveFromRejectList(Ljava/util/ArrayList;)V

    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->doInBackground([Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #getter for: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #getter for: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e031e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->executeNextJob()V
    invoke-static {v0}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$300(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->onPostExecute(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    return-void
.end method
