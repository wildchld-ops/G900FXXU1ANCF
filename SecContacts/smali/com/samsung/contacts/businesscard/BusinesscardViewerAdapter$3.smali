.class Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$3;
.super Ljava/lang/Object;
.source "BusinesscardViewerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->bindDatas(Landroid/view/View;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

.field final synthetic val$dataUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    iput-object p2, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$3;->val$dataUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v12}, Landroid/view/View;->setEnabled(Z)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->access$000(Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$3;->val$dataUri:Landroid/net/Uri;

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

    if-eqz v0, :cond_7

    const-string v0, "is_super_primary"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v11, :cond_6

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

    if-ne v0, v11, :cond_8

    :cond_3
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ","

    const-string v5, "P"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ";"

    const-string v5, "W"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v10, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.android.mms"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->access$000(Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$3$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$3$1;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$3;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

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

    if-nez v0, :cond_0

    goto :goto_0

    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v11, :cond_5

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->access$000(Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e027d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->buildDialog(Ljava/util/ArrayList;ILjava/lang/String;)V
    invoke-static {v0, v6, v1, v2}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->access$100(Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;Ljava/util/ArrayList;ILjava/lang/String;)V

    goto :goto_1
.end method
