.class public Lcom/samsung/contacts/menu/people/contacts/SettingMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "SettingMenu.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/contacts/menu/people/contacts/SettingMenu;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/SettingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/SettingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/menu/people/contacts/SettingMenu;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/samsung/contacts/impl/HelpPeopleActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/menu/people/contacts/SettingMenu;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/samsung/contacts/impl/HelpPeopleActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->isHelpSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ":android:show_fragment"

    const-class v2, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "speedDialTutorialMode"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string v0, ":android:show_fragment_title"

    const v2, 0x7f0e00ac

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/SettingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/samsung/contacts/menu/people/contacts/SettingMenu;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/samsung/contacts/impl/HelpPeopleActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/menu/people/contacts/SettingMenu;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/samsung/contacts/impl/HelpPeopleActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->isHelpSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/SettingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/menu/people/contacts/SettingMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, ":android:show_fragment"

    const-class v2, Lcom/samsung/contacts/preference/ContactsSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v0, ":android:show_fragment"

    const-class v2, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
