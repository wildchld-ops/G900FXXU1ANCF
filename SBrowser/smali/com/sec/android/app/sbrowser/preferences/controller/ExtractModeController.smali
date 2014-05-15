.class public Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "ExtractModeController.java"


# instance fields
.field public isAccountPopUpEntered:Z

.field public isSignInDialogVisible:Z

.field private mActivityContext:Landroid/preference/PreferenceActivity;

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;

.field private mTranslationMode:Landroid/preference/SwitchPreferenceScreen;

.field public samsungAccountAdded:Ljava/lang/String;

.field public samsungAccountAddedSignedUp:Z

.field public signInDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->isAccountPopUpEntered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->signInDialog:Landroid/app/Dialog;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->isSignInDialogVisible:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;)Landroid/preference/PreferenceActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mActivityContext:Landroid/preference/PreferenceActivity;

    return-object v0
.end method


# virtual methods
.method public isSamsungAccountLoggedInOrNot()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "CscFeature_Web_DisableBookmarkSync"

    invoke-static {v1}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->Extract_Translate_Flag_checkSamsungAccountSignUp:Z

    sput-boolean v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->Extract_Translate_Flag_getSamsungAccount:Z

    :cond_0
    sget v1, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->SAMSUNG_ACCOUNT_NAME:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->samsungAccountAdded:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mActivityContext:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->samsungAccountAddedSignedUp:Z

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->samsungAccountAddedSignedUp:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->samsungAccountAdded:Ljava/lang/String;

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v2, 0x7f06000b

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mActivityContext:Landroid/preference/PreferenceActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v2, "extract_view"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v2, "translation_mode"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mTranslationMode:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mTranslationMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->isSamsungAccountLoggedInOrNot()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;->setExtractModeCheck(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->updateTranslateModeVisibility()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "translation_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->isSamsungAccountLoggedInOrNot()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->showDialog()V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;->setExtractModeCheck(Z)V

    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "extract_view"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;->setExtractValueCheck(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->updateTranslateModeVisibility()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->isAccountPopUpEntered:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->isAccountPopUpEntered:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->isSamsungAccountLoggedInOrNot()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;->setExtractModeCheck(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->updateTranslateModeVisibility()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;->setExtractModeCheck(Z)V

    goto :goto_0
.end method

.method public showDialog()V
    .locals 5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->isAccountPopUpEntered:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mActivityContext:Landroid/preference/PreferenceActivity;

    const v3, 0x7f0d0019

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0032

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController$3;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c007c

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->signInDialog:Landroid/app/Dialog;

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->isSignInDialogVisible:Z

    return-void
.end method

.method public updateTranslateModeVisibility()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;->getExtractValueCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mTranslationMode:Landroid/preference/SwitchPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->isSamsungAccountLoggedInOrNot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mTranslationMode:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/model/ExtractModeModel;->getExtractModeCheck()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mTranslationMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mTranslationMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ExtractModeController;->mTranslationMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
