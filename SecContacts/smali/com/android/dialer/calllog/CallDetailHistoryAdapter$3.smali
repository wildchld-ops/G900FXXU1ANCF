.class Lcom/android/dialer/calllog/CallDetailHistoryAdapter$3;
.super Ljava/lang/Object;
.source "CallDetailHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$3;->this$0:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const-string v0, "CallDetailHistoryAdapter"

    const-string v1, " === mCallDetailItemListener === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "messageid"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "logtype"

    aput-object v1, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$3;->this$0:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->access$100(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/dialer/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "logtype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v0, "messageid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/16 v0, 0x12c

    if-ne v9, v0, :cond_3

    const-string v0, "CallDetailHistoryAdapter"

    const-string v1, " === ACTION_VIEW_SPAM_SMS === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.mms.spam.ACTION_VIEW_SPAM_SMS"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "msgId"

    invoke-virtual {v8, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$3;->this$0:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->access$100(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    const/16 v0, 0xc8

    if-ne v9, v0, :cond_2

    const-string v0, "CallDetailHistoryAdapter"

    const-string v1, " === ACTION_VIEW_SPAM_MMS_NOTIFICATION === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.mms.spam.ACTION_VIEW_SPAM_MMS_NOTIFICATION"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "msgId"

    invoke-virtual {v8, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$3;->this$0:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->access$100(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
