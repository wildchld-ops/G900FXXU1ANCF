.class public Lcom/samsung/contacts/menu/people/keypad/SpeedDialSettingMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "SpeedDialSettingMenu.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/contacts/menu/people/keypad/SpeedDialSettingMenu;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/contacts/menu/people/keypad/SpeedDialSettingMenu;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/samsung/contacts/impl/HelpPeopleActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/menu/people/keypad/SpeedDialSettingMenu;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/samsung/contacts/impl/HelpPeopleActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->isHelpSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.contacts.action.INSERT_SPEED_FOR_HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/SpeedDialSettingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/SpeedDialSettingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.contacts.action.SPEED_DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/SpeedDialSettingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
