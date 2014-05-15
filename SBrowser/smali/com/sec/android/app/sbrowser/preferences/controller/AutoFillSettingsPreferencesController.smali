.class public Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "AutoFillSettingsPreferencesController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final LONG_CLICK_NOT_REQUIRED:I = 0x2


# instance fields
.field private mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

.field private mEnableAutofill:Landroid/preference/CheckBoxPreference;

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;

.field private mNoOfProfiles:I

.field private mPreferenceManager:Landroid/preference/PreferenceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;

    return-void
.end method

.method public static closeEditor(Landroid/app/Activity;Landroid/view/View;Landroid/app/FragmentManager;)V
    .locals 3

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private rebuildLists()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->rebuildProfileList()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mNoOfProfiles:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method private rebuildProfileList()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v17, v0

    const-string v18, "autofill_profiles"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    sget-boolean v17, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    instance-of v0, v9, Landroid/preference/PreferenceGroup;

    move/from16 v17, v0

    if-nez v17, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_0
    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v12

    const v17, 0x7f04004b

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setLayoutResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;->isXLarge()Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "com.sec.android.app.sbrowser.preferences.SBrowserProfileEditor"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;->getPersonalDataManager()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mNoOfProfiles:I

    move-object v5, v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v14

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v7, :cond_5

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    new-instance v11, Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v16}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-lez v17, :cond_3

    invoke-virtual {v11, v15}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual/range {v16 .. v16}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x28

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x28

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "..."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v11, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v17

    if-eqz v17, :cond_4

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-class v18, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditorContainerActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v17, "guid"

    invoke-virtual/range {v16 .. v16}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v11, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_3
    invoke-virtual {v9, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_2
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-class v18, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditorContainerActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v3}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0c008b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit8 v18, v13, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_4
    const-string v17, "com.sec.android.app.sbrowser.preferences.SBrowserProfileEditor"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "guid"

    invoke-virtual/range {v16 .. v16}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    new-instance v17, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onAttach(Landroid/app/Activity;)V

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->registerDataObserver(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;)V

    return-void
.end method

.method public onAutoFillDataUpdateFail()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c019c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mPreferenceManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "enable_autofill"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mEnableAutofill:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mEnableAutofill:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;->isAutofillEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mEnableAutofill:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBrowserPolicy()Landroid/app/enterprise/BrowserPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0e0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->unregisterDataObserver(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;)V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a02d4
        :pswitch_0
    .end packed-switch
.end method

.method public onPersonalDataChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->rebuildLists()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->rebuildLists()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "enable_autofill"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mEnableAutofill:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;->setAutoFillEnabled(Z)V

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;->setAutoFillEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v1, 0x7f0a02d4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mNoOfProfiles:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getAutoFillSetting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mEnableAutofill:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mEnableAutofill:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->rebuildLists()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mEnableAutofill:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mEnableAutofill:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;->isAutofillEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
