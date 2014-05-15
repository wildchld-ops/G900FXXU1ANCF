.class Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;
.super Landroid/os/AsyncTask;
.source "AddToRejectListInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/AddToRejectListInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryForAddToRejectTask"
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

    iput-object p1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;Lcom/samsung/contacts/interactions/AddToRejectListInteraction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;-><init>(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;
    .locals 9

    const/4 v6, 0x0

    aget-object v5, p1, v6

    iget-object v0, v5, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->contactUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->getCountOfTotalBlackList()I
    invoke-static {v6}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$500(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)I

    move-result v1

    iget-object v6, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->queryExactlyMatchBlackList()Ljava/util/HashMap;
    invoke-static {v6}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$600(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->getPhoneNumbers(J)Ljava/util/ArrayList;
    invoke-static {v6, v7, v8}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$700(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;J)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->getDisplayName(J)Ljava/lang/String;
    invoke-static {v6, v7, v8}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$800(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;J)Ljava/lang/String;

    move-result-object v2

    iput v1, v5, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->countOfTotalBlackList:I

    iput-object v3, v5, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->exactlyMatchblackListHashMap:Ljava/util/HashMap;

    iput-object v4, v5, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    iput-object v2, v5, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->displayName:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->findSamePhoneNumberContacts(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    invoke-static {v6, v5}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$900(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    iget-object v6, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->makeRejectValues(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    invoke-static {v6, v5}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1000(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->doInBackground([Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->isOverBlackListSize(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Z
    invoke-static {v1, p1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1100(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #getter for: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_maxcount"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->showBlackListSizeOverDialog(I)V
    invoke-static {v1, v0}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1300(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->checkSamePhoneNumberContacts(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    invoke-static {v1, p1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$1400(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->onPostExecute(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    return-void
.end method
