.class public Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "PrivacySecurityPreferencesController.java"


# instance fields
.field EXTERNAL_FINAL:Z

.field EXTERNAL_INDEX:I

.field INTERNAL_FINAL:Z

.field INTERNAL_INDEX:I

.field private LOGTAG:Ljava/lang/String;

.field private mAccept_Cookies:Landroid/preference/CheckBoxPreference;

.field private mBlock_pop_up:Landroid/preference/CheckBoxPreference;

.field private mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

.field private mEnable_JavaScript:Landroid/preference/CheckBoxPreference;

.field private mEnable_Video_Link:Landroid/preference/CheckBoxPreference;

.field private mEnable_location:Landroid/preference/CheckBoxPreference;

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

.field private mPref:Landroid/content/SharedPreferences;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorage_state:Ljava/lang/String;

.field private switchPrefScreen:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    const-string v0, "ContentSettingsPreferences"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->LOGTAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorage_state:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->INTERNAL_INDEX:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->EXTERNAL_INDEX:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->INTERNAL_FINAL:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->EXTERNAL_FINAL:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageListener:Landroid/os/storage/StorageEventListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorage_state:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_Video_Link:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    return-object v0
.end method

.method private getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070097

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public checkStorageState(Z)V
    .locals 10

    const/4 v9, 0x1

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v8, "download_default_storyage"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v7, :cond_0

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorage_state:Ljava/lang/String;

    const-string v7, "mounted"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSDCardPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "FinalStorageState"

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->INTERNAL_FINAL:Z

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v3, 0x1

    :goto_0
    if-ne v0, v9, :cond_2

    if-eqz v3, :cond_5

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->LOGTAG:Ljava/lang/String;

    const-string v8, "onCreate : StorageName is PHONE"

    invoke-static {v7, v8}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "PHONE"

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    if-ne p1, v9, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener;->isGuestMode(Landroid/content/Context;)Z

    move-result v3

    goto :goto_0

    :cond_5
    if-ne v0, v9, :cond_3

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->INTERNAL_FINAL:Z

    if-ne v2, v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->LOGTAG:Ljava/lang/String;

    const-string v8, "onCreate : StorageName is PHONE, haveSDCard"

    invoke-static {v7, v8}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "PHONE"

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->INTERNAL_INDEX:I

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    if-ne p1, v9, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    goto :goto_1

    :cond_6
    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->EXTERNAL_FINAL:Z

    if-ne v2, v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->LOGTAG:Ljava/lang/String;

    const-string v8, "onCreate : StorageName is MEMORY_CARD"

    invoke-static {v7, v8}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "MEMORY_CARD"

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->EXTERNAL_INDEX:I

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    if-ne p1, v9, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public imideoEULA()V
    .locals 9

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v6, 0x7f040048

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c02cd

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c02d4

    new-instance v8, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$5;

    invoke-direct {v8, p0, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$5;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;Landroid/content/SharedPreferences;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c02d5

    new-instance v8, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$4;

    invoke-direct {v8, p0, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$4;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;Landroid/content/SharedPreferences;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$3;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v6, 0x7f0a015c

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v6, 0x7f0c02d0

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v3}, Landroid/widget/Button;->getPaintFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setPaintFlags(I)V

    new-instance v6, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$6;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$6;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public imideoEulaSecondPopup()V
    .locals 10

    const/16 v9, 0x8

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v7, 0x7f040048

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v7, 0x7f0a015a

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0c02d2

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    const v7, 0x7f0a015b

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0a015c

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c02d1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c02d4

    new-instance v9, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$9;

    invoke-direct {v9, p0, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$9;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;Landroid/content/SharedPreferences;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c02d5

    new-instance v9, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$8;

    invoke-direct {v9, p0, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$8;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;Landroid/content/SharedPreferences;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$7;

    invoke-direct {v8, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$7;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v13, 0x7f060011

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-super/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const-string v13, "enterprise_policy"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBrowserPolicy()Landroid/app/enterprise/BrowserPolicy;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->isXLarge()Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f08000d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/app/Activity;->setTitleColor(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const v13, 0x7f0c00d2

    invoke-virtual {v12, v13}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v13, "accept_cookies"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mAccept_Cookies:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v13, "enable_geolocation"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_location:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v13, "enable_javascript"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_JavaScript:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mPref:Landroid/content/SharedPreferences;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v13, "block_popups"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mBlock_pop_up:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v13, "contexual_contents"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/SwitchPreferenceScreen;

    iput-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->switchPrefScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsContextualSearchEnabled()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v13, "content_settings_category"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->switchPrefScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mAccept_Cookies:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_location:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_JavaScript:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mBlock_pop_up:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "notification_state"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object v12, v3

    check-cast v12, Landroid/preference/ListPreference;

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->updateListPreferenceSummary(Landroid/preference/ListPreference;)V

    :cond_2
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "download_default_storyage"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorage_state:Ljava/lang/String;

    if-nez v12, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorage_state:Ljava/lang/String;

    :cond_3
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->checkStorageState(Z)V

    const-string v12, "CscFeature_Web_ShowVersionInSetting"

    invoke-static {v12}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v13, 0x7f060007

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "browser_version"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v12

    invoke-virtual {v12}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getAboutVersionStrings()Ljava/util/HashMap;

    move-result-object v9

    const/4 v11, 0x0

    if-eqz v9, :cond_4

    const-string v12, "webkit_version"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    :cond_4
    if-eqz v11, :cond_5

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    const/4 v12, 0x0

    const-string v13, "("

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AppleWebkit/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (KHTML, like Gecko) "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v12, "CscFeature_Web_SetUserAgent"

    invoke-static {v12}, Lorg/samsung/base/Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "CTC"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const-string v0, "os_version"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    if-eqz v9, :cond_6

    const-string v12, "os_version"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const-string v12, "AppleWebKit/"

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    :cond_7
    const/4 v12, -0x1

    if-eq v10, v12, :cond_b

    if-ge v10, v8, :cond_b

    if-eqz v6, :cond_b

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_8
    :goto_0
    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    const-string v12, "CscFeature_Web_EnableImage2Play"

    invoke-static {v12}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v13, "enable_video_link"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_Video_Link:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_Video_Link:Landroid/preference/CheckBoxPreference;

    new-instance v13, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$2;

    invoke-direct {v13, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)V

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_a
    :goto_1
    return-void

    :cond_b
    const-string v12, "application_version"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    :cond_c
    if-eqz v9, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v12, "application_version"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_d
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "enable_video_link"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_Video_Link:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "content_settings_category"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_Video_Link:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_a

    if-eqz v1, :cond_a

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_Video_Link:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageManager:Landroid/os/storage/StorageManager;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageManager:Landroid/os/storage/StorageManager;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v9, "notification_state"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-virtual {v9, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    move-object v5, p1

    check-cast v5, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->updateListPreferenceSummary(Landroid/preference/ListPreference;)V

    move v9, v10

    :goto_0
    return v9

    :cond_0
    const-string v9, "download_default_storyage"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v9, :cond_1

    const-string v9, "storage"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorageManager:Landroid/os/storage/StorageManager;

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSDCardPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    invoke-virtual {p1, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    if-ne v1, v10, :cond_6

    invoke-virtual {p1, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v9, "PHONE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->LOGTAG:Ljava/lang/String;

    const-string v11, "onPreferenceChange : StorageName is PHONE"

    invoke-static {v9, v11}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-virtual {v9, v2, v10}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v9, "FinalStorageState"

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->INTERNAL_FINAL:Z

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_2
    move v9, v10

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const-string v9, "MEMORY_CARD"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->LOGTAG:Ljava/lang/String;

    const-string v11, "onPreferenceChange : StorageName is MEMORY_CARD"

    invoke-static {v9, v11}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    const/4 v11, 0x2

    invoke-virtual {v9, v2, v11}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v9, "FinalStorageState"

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->EXTERNAL_FINAL:Z

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_6
    const-string v0, "PHONE"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->LOGTAG:Ljava/lang/String;

    const-string v11, "onPreferenceChange():StorageName is PHONE"

    invoke-static {v9, v11}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-virtual {v9, v2, v10}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v9, "FinalStorageState"

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->INTERNAL_FINAL:Z

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_7
    move v9, v11

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "accept_cookies"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mAccept_Cookies:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-ne v4, v3, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setAllowCookiesEnabled(Z)V

    :cond_0
    :goto_0
    const-string v4, "enable_geolocation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_location:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-ne v4, v3, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setAllowLocationEnabled(Z)V

    const-string v4, "dummypref"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_1
    const-string v4, "enable_javascript"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_JavaScript:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-ne v4, v3, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setJavaScriptEnabled(Z)V

    :cond_2
    :goto_2
    const-string v4, "block_popups"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mBlock_pop_up:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setAllowPopupsEnabled(Z)V

    :cond_4
    return v3

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setAllowCookiesEnabled(Z)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setAllowLocationEnabled(Z)V

    const-string v4, "dummypref"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setJavaScriptEnabled(Z)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onResume()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v4}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "com.sec.android.app.sbrowser_preferences"

    invoke-virtual {v4, v7, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/BrowserPolicy;->getCookiesSetting()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mAccept_Cookies:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mAccept_Cookies:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/BrowserPolicy;->getJavaScriptSetting()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_JavaScript:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_JavaScript:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/BrowserPolicy;->getPopupsSetting()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mBlock_pop_up:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mBlock_pop_up:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->switchPrefScreen:Landroid/preference/SwitchPreferenceScreen;

    const-string v7, "contexual_contents"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const-string v7, "location"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_location:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_location:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v6, "download_default_storyage"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorage_state:Ljava/lang/String;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorage_state:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->checkStorageState(Z)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mAccept_Cookies:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mAccept_Cookies:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->isAcceptCookiesEnabled()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_JavaScript:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_JavaScript:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->javaScriptEnabled()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mBlock_pop_up:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mBlock_pop_up:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->popupsEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_5
    move v4, v6

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_location:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_location:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mPref:Landroid/content/SharedPreferences;

    const-string v7, "dummypref"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3
.end method

.method updateListPreferenceSummary(Landroid/preference/ListPreference;)V
    .locals 1

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
