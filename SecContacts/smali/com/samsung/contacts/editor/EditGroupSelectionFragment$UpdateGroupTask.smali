.class Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;
.super Landroid/os/AsyncTask;
.source "EditGroupSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/editor/EditGroupSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateGroupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final contactId:J

.field private final context:Landroid/content/Context;

.field private final isNotAssignedChecked:Z

.field private mProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/editor/EditGroupSelectionFragment;Landroid/content/Context;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->contactId:J

    iput-boolean p5, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->isNotAssignedChecked:Z

    return-void
.end method

.method private getGroupValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "account_type"

    const-string v2, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "account_name"

    const-string v2, "vnd.sec.contact.agg.account_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data1"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contact_id"

    iget-wide v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->contactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private getRawContactId()J
    .locals 12

    const/4 v4, 0x1

    const/4 v11, 0x0

    const-wide/16 v6, -0x1

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "contact_id=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v9, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->contactId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v6
.end method

.method private resetGroups()V
    .locals 4

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->contactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND  mimetype=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateAggregatedGroup(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v8, 0x64

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "group_membership"

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v4

    if-ge v8, v9, :cond_3

    move v1, v8

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_2

    add-int v9, v4, v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_2
    :try_start_0
    iget-object v9, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "com.android.contacts"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    add-int/lit8 v4, v4, 0x64

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v1, v9, v4

    goto :goto_1

    :cond_4
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    add-int v9, v4, v5

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->getGroupValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->resetGroups()V

    iget-boolean v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->isNotAssignedChecked:Z

    if-nez v0, :cond_0

    aget-object v0, p1, v11

    invoke-direct {p0, v0}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->updateAggregatedGroup(Ljava/util/ArrayList;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->getRawContactId()J

    move-result-wide v7

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "raw_contact_id =?"

    new-array v4, v12, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-array v9, v12, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v11

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->context:Landroid/content/Context;

    check-cast v0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->context:Landroid/content/Context;

    check-cast v0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->context:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->context:Landroid/content/Context;

    const v3, 0x7f0e02b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->mProgress:Landroid/app/ProgressDialog;

    return-void
.end method
