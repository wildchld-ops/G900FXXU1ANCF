.class Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$1;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$1;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$1;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v0, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$1;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v1, v1, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget v1, v1, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    sub-int v1, v8, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v6, v11

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$1;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v0, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$500()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "contact_id"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v6, :cond_3

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x1420

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$1;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v0, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v0, v9}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method
