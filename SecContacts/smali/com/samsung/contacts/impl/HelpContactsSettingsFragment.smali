.class public Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "HelpContactsSettingsFragment.java"


# instance fields
.field private mHelp:Lcom/samsung/contacts/impl/HelpImpl;

.field private mParentPreference:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private showSpeedDialTutorialPopup()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0496

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;->setPostionFromBottom(I)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/impl/HelpImpl;->setArrowVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v3, v1}, Lcom/samsung/contacts/impl/HelpImpl;->show(ZZZ)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->showSpeedDialTutorialPopup()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.contacts.action.INSERT_SPEED_FOR_HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->mParentPreference:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->mParentPreference:Landroid/preference/PreferenceScreen;

    const-string v2, "speedDialSetting"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment$1;-><init>(Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
