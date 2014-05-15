.class public Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "HelpDisplayOptionsPreferenceFragment.java"


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

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0495

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;->setPostionFromBottom(I)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/impl/HelpImpl;->setArrowVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v3, v1}, Lcom/samsung/contacts/impl/HelpImpl;->show(ZZZ)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->showSpeedDialTutorialPopup()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "speedDialTutorialMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceScreen;

    const-string v2, "contactsSettings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment$1;-><init>(Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpDisplayOptionsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "callSettings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method
