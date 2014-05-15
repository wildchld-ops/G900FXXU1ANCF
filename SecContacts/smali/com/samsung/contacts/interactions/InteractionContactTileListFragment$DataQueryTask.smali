.class public Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;
.super Lcom/android/contacts/common/util/WeakAsyncTask;
.source "InteractionContactTileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/util/WeakAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        "Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final DETAIL_DATA_PROJECTION:[Ljava/lang/String;

.field private isSelectAll:Z

.field private mPartition:Ljava/lang/String;

.field private mPosition:I

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;ZI)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-direct {p0, p2}, Lcom/android/contacts/common/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "account_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->isSelectAll:Z

    iput p4, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->mPosition:I

    return-void
.end method

.method private getSelection()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    iget v1, v1, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_0
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_1
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_2
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_2
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_1
        0xbe -> :sswitch_1
        0x118 -> :sswitch_0
        0x126 -> :sswitch_1
    .end sparse-switch
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$1200(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v8, p2, v1

    const/4 v1, 0x2

    aget-object v1, p2, v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v8}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->getSelection()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mimetype DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v1, "entities"

    invoke-static {v9, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->getSelection()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mimetype DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->doInBackground(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Landroid/database/Cursor;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$1200(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$1200(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/contacts/common/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->isSelectAll:Z

    iget v5, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->mPosition:I

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->onPostExecute(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPreExecute(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$1200(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$1200(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/contacts/common/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->onPreExecute(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)V

    return-void
.end method
