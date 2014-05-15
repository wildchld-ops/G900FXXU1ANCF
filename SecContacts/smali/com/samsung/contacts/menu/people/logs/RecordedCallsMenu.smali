.class public Lcom/samsung/contacts/menu/people/logs/RecordedCallsMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "RecordedCallsMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/logs/RecordedCallsMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tab-pager-calllog"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/logs/RecordedCallsMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sec.android.app.voicenote"

    invoke-static {v4, v5}, Lcom/samsung/dialer/util/CallLogUtil;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.voicenote.recorded_calls"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "recorded_number"

    const-string v5, "01000000000"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/logs/RecordedCallsMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0477

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
