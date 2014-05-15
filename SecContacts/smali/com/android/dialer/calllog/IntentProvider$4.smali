.class final Lcom/android/dialer/calllog/IntentProvider$4;
.super Lcom/android/dialer/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/IntentProvider;->getCallDetailIntentProviderForOrange(Lcom/android/dialer/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/android/dialer/calllog/CallLogAdapter;

.field final synthetic val$groupSize:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$adapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iput p2, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$position:I

    iput p3, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$groupSize:I

    invoke-direct {p0}, Lcom/android/dialer/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 8

    const/16 v7, 0x3b6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$adapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    iget v2, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$position:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/dialer/CallDetailActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x9

    :try_start_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "EXTRA_VOICEMAIL_URI"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string v3, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x15

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "phone_number"

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-ne v3, v7, :cond_1

    const-string v5, "EXTRA_VVM_ID"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    iget v4, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$groupSize:I

    new-array v4, v4, [J

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    iget v5, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$groupSize:I

    if-ge v0, v5, :cond_4

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_2

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v6, " OR _id= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v2

    :cond_4
    if-ne v3, v7, :cond_3

    :try_start_1
    const-string v0, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
