.class public Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "DataCompressionPreferencesController.java"


# instance fields
.field private imageQualityMenuIndex:I

.field private mContext:Landroid/preference/PreferenceFragment;

.field private mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

.field private mImageQualityMenuKeyString:[Ljava/lang/String;

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mSwitch:Landroid/widget/Switch;

.field private mUI:Lcom/sec/android/app/sbrowser/preferences/ui/DataCompressionPreferencesUI;

.field private maxImageQualityMenuIndex:I


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->maxImageQualityMenuIndex:I

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_image_quality_menu_0"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "pref_image_quality_menu_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_image_quality_menu_2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenuKeyString:[Ljava/lang/String;

    iput v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->imageQualityMenuIndex:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mContext:Landroid/preference/PreferenceFragment;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/ui/DataCompressionPreferencesUI;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/DataCompressionPreferencesUI;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/DataCompressionPreferencesUI;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;)Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->maxImageQualityMenuIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenuKeyString:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;)[Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onActivityCreated(Landroid/os/Bundle;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->maxImageQualityMenuIndex:I

    new-array v1, v1, [Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mPreferenceManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v2, 0x7f040032

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->getImageQualityvalue()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->imageQualityMenuIndex:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->maxImageQualityMenuIndex:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenuKeyString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenuKeyString:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    aput-object v1, v2, v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->imageQualityMenuIndex:I

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, v0

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->getDataCompressionCheck()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, v0

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->maxImageQualityMenuIndex:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, v0

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->updateTurboData(II)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const v0, 0x7f0e0020

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0350

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->getDataCompressionCheck()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->updateTurboData(II)V

    :cond_0
    return-void
.end method

.method public setListPreferenceData(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->maxImageQualityMenuIndex:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenuKeyString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, v0

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->setImageQualityvalue(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, v0

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_1
    return v3
.end method
