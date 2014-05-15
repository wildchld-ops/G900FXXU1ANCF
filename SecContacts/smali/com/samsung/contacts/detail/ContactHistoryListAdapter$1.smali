.class Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;
.super Ljava/lang/Object;
.source "ContactHistoryListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/ContactHistoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    aget v4, v0, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z
    invoke-static {v4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->access$1200(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    iget-object v1, v1, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->setCheckPosition(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->access$1300(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/dialer/CallDetailActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "phone_number"

    const/4 v2, 0x4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_CALL_LOG_CONTACT"

    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->access$1300(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v3, "voicemail"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "MESSAGE_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->access$1300(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    #calls: Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->verifySmsMms(ZJ)V
    invoke-static {v1, v0, v3, v4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->access$1400(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;ZJ)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :sswitch_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    #calls: Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->verifySmsMms(ZJ)V
    invoke-static {v3, v2, v0, v1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->access$1400(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;ZJ)V

    goto/16 :goto_0

    :sswitch_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    #calls: Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->verifyEmail(J)V
    invoke-static {v2, v0, v1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->access$1500(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;J)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_2
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_0
        0x320 -> :sswitch_0
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
