.class public Lcom/samsung/contacts/menu/logdetail/RecordedCallsDetailMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "RecordedCallsDetailMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/logdetail/RecordedCallsDetailMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/CallDetailActivity;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/logdetail/RecordedCallsDetailMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.voicenote"

    invoke-static {v3, v4}, Lcom/samsung/dialer/util/CallLogUtil;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.voicenote.recorded_calls"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "recorded_number"

    iget-object v4, v1, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/menu/logdetail/RecordedCallsDetailMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0477

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
