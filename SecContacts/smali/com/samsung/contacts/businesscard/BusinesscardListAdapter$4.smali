.class Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4;
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

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    iput-object p2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4;->val$dataUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$1000(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v13}, Landroid/view/View;->setEnabled(Z)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$1100(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4;->val$dataUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "mimetype"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "is_super_primary"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v12, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eq v9, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v12, :cond_8

    :cond_4
    const-string v1, "mailto"

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    invoke-direct {v8, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$1200(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4$1;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_6
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v12, :cond_5

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$1300(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e025e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->buildDialog(Ljava/util/ArrayList;ILjava/lang/String;)V
    invoke-static {v0, v6, v1, v2}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$600(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;Ljava/util/ArrayList;ILjava/lang/String;)V

    goto :goto_2
.end method
