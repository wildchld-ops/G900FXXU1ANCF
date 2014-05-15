.class Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2;
.super Ljava/lang/Object;
.source "BusinesscardListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->setButtonEvent2(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

.field final synthetic val$dataUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    iput-object p2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2;->val$dataUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x1

    invoke-virtual {p1, v12}, Landroid/view/View;->setEnabled(Z)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$200(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2;->val$dataUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "mimetype"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "is_super_primary"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eq v8, v11, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v11, :cond_7

    :cond_3
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$300(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v10

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2$1;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v11, :cond_4

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$500(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0275

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->buildDialog(Ljava/util/ArrayList;ILjava/lang/String;)V
    invoke-static {v0, v6, v11, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$600(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;Ljava/util/ArrayList;ILjava/lang/String;)V

    goto :goto_1
.end method
