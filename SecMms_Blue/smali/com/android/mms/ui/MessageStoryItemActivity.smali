.class public Lcom/android/mms/ui/MessageStoryItemActivity;
.super Landroid/app/Activity;
.source "MessageStoryItemActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageStoryItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5}, Lsstream/lib/SStreamContentManager;->getStoryItemIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v5, "threadlist"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez v1, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    invoke-static {v2, v3}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v5, "thread_id"

    invoke-virtual {v0, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageStoryItemActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageStoryItemActivity;->finish()V

    return-void

    :cond_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method
