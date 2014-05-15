.class public Lcom/samsung/contacts/menu/people/keypad/GroupCallMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "GroupCallMenu.java"


# instance fields
.field private final GROUPCALL_CLASS_NAME:Ljava/lang/String;

.field private final GROUPCALL_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    const-string v0, "com.android.phone"

    iput-object v0, p0, Lcom/samsung/contacts/menu/people/keypad/GroupCallMenu;->GROUPCALL_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.android.phone.IMSConferenceCallActivity"

    iput-object v0, p0, Lcom/samsung/contacts/menu/people/keypad/GroupCallMenu;->GROUPCALL_CLASS_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/GroupCallMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/menu/people/keypad/GroupCallMenu;->getGroupCallIntent(Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2
.end method

.method protected getGroupCallIntent(Z)Landroid/content/Intent;
    .locals 8

    const/16 v7, 0x20

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/GroupCallMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "tab-pager-dialpad"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getDigitsWidget()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.IMSConferenceCallActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "PHONE_NUMBER_FROM_DIALER"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "CONF_TYPE_VOICE"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v3
.end method
