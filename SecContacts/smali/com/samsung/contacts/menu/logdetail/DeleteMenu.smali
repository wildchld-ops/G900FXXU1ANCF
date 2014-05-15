.class public Lcom/samsung/contacts/menu/logdetail/DeleteMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "DeleteMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/logdetail/DeleteMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "EXTRA_CALL_LOG_IDS"

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/dialer/CallDetailActivity;->getCallLogEntryUris(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
