.class Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AutoLinkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/autolink/AutoLinkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/contacts/autolink/AutoLinkActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/autolink/AutoLinkFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/samsung/contacts/autolink/AutoLinkActivity;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 14

    iget-object v12, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/autolink/AutoLinkActivity;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/contacts/autolink/AutoLinkActivity;->isFinishing()Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    :cond_1
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v12, "mimetype"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v12, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    #getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$200(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/HashMap;

    move-result-object v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-eqz v9, :cond_1

    iget-object v12, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    #getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$200(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/HashMap;

    move-result-object v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v12, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    #getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$300(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    const-string v12, "account_type_and_data_set"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v12, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    #calls: Lcom/samsung/contacts/autolink/AutoLinkFragment;->addAccountInformation(Ljava/lang/String;Lcom/samsung/contacts/autolink/AutoLinkContactChildData;)V
    invoke-static {v12, v1, v3}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$400(Lcom/samsung/contacts/autolink/AutoLinkFragment;Ljava/lang/String;Lcom/samsung/contacts/autolink/AutoLinkContactChildData;)V

    const-string v12, "vnd.android.cursor.item/photo"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoto:[B

    if-nez v12, :cond_1

    const-string v12, "data15"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    iput-object v11, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoto:[B

    goto/16 :goto_1

    :cond_2
    const-string v12, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoneNumber:Ljava/lang/String;

    if-nez v12, :cond_1

    if-eqz v10, :cond_1

    iput-object v10, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoneNumber:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v12, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v12, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mEmailAddress:Ljava/lang/String;

    if-nez v12, :cond_1

    if-eqz v5, :cond_1

    iput-object v5, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mEmailAddress:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v12, "vnd.chaton.item/vnd.com.chaton.profile"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "data4"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iput-object v4, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoneNumber:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    iget-object v12, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    #getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAdapter:Lcom/samsung/contacts/autolink/AutoLinkListAdapter;
    invoke-static {v12}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$500(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Lcom/samsung/contacts/autolink/AutoLinkListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_2
    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    :cond_6
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v8, -0x1

    const-string v12, "contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v12, "mimetype"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v12, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    #getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$200(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/HashMap;

    move-result-object v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    if-eqz v9, :cond_6

    iget-object v12, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    #getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$200(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/HashMap;

    move-result-object v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v12, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    #getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$300(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    const-string v12, "account_type_and_data_set"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v12, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    #calls: Lcom/samsung/contacts/autolink/AutoLinkFragment;->addAccountInformation(Ljava/lang/String;Lcom/samsung/contacts/autolink/AutoLinkContactChildData;)V
    invoke-static {v12, v1, v3}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$400(Lcom/samsung/contacts/autolink/AutoLinkFragment;Ljava/lang/String;Lcom/samsung/contacts/autolink/AutoLinkContactChildData;)V

    const-string v12, "vnd.android.cursor.item/photo"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    #getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$200(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/HashMap;

    move-result-object v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoto:[B

    if-nez v12, :cond_6

    const-string v12, "data15"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    iput-object v11, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoto:[B

    goto/16 :goto_2

    :cond_7
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    iget-object v12, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    #getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAdapter:Lcom/samsung/contacts/autolink/AutoLinkListAdapter;
    invoke-static {v12}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$500(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Lcom/samsung/contacts/autolink/AutoLinkListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
