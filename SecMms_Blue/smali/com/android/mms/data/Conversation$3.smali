.class Lcom/android/mms/data/Conversation$3;
.super Landroid/os/AsyncTask;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->markAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Conversation;

.field final synthetic val$threadUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    iput-object p2, p0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/data/Conversation$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "Mms/Conversation"

    const-string v8, "markAsRead() thread"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/mms/data/Conversation;->access$000(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v7, p0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    sget-object v8, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    const-string v9, "(read=0)"

    invoke-static {v3, v7, v8, v9}, Lcom/android/mms/ui/MessageUtils;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_2

    move v2, v5

    :goto_0
    if-eqz v2, :cond_3

    const/4 v7, 0x4

    new-array v1, v7, [I

    iget-object v7, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/mms/data/Conversation;->access$000(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    invoke-static {v7, v8, v9, v1}, Lcom/android/mms/accessory/WatchRelay;->getUnreadMsgFromThread(Landroid/content/Context;J[I)[Landroid/net/Uri;

    move-result-object v4

    iget-object v7, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/mms/data/Conversation;->access$000(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v1}, Lcom/android/mms/accessory/WatchRelay;->sendReadNotificationProvider(Landroid/content/Context;[Landroid/net/Uri;[I)V

    iget-object v7, p0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    #calls: Lcom/android/mms/data/Conversation;->getReadContentValues()Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/data/Conversation;->access$200()Landroid/content/ContentValues;

    move-result-object v8

    const-string v9, "(read=0)"

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v7, "Mms/Conversation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update read for thread uri : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",affected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/mms/data/Conversation;->access$000(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/mms/prioritysender/SmartAssistant;->removeCard(Landroid/content/Context;J)Z

    :goto_1
    iget-object v7, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    #calls: Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V
    invoke-static {v7, v6}, Lcom/android/mms/data/Conversation;->access$300(Lcom/android/mms/data/Conversation;Z)V

    :cond_0
    iget-object v6, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v6

    if-eqz v6, :cond_1

    sput-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->CMAS_Y:Z

    :cond_1
    const-string v5, "Mms/Conversation"

    const-string v6, "markAsRead() thread"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    const-string v7, "Mms/Conversation"

    const-string v8, "nothing to update read"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
