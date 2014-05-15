.class public Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "HomePagePreferenceController.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HomePagePreferencesFragment"

.field static mCurrentPage:Ljava/lang/String;


# instance fields
.field mChoices:[Ljava/lang/String;

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

.field private mUI:Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;

.field mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mCurrentPage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;

    return-void
.end method

.method public static setCurrentPage(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mCurrentPage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method getHomepageLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mChoices:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getHomepageSummary()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "most_visited"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->getHomepageLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getHomepageValue()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->getHomePage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "most_visited"

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "default"

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mCurrentPage:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "current"

    goto :goto_0

    :cond_2
    const-string v2, "other"

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;IILandroid/preference/Preference;)V
    .locals 2

    const v1, 0x104000a

    if-ne p3, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->appendUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->setHomePage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->getHomepageValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->getHomepageSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/high16 v1, 0x104

    if-ne p3, v1, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mChoices:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mValues:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0116

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v2, "homepage_picker"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->getHomepageSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->getHomepageValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->getAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->getAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const-string v1, "homepage_picker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "current"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    sget-object v3, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mCurrentPage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->setHomePage(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/preference/ListPreference;

    const-string v3, "current"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    const-string v3, "current"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->setHomePagePicker(Ljava/lang/String;)V

    :cond_1
    const-string v1, "most_visited"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->setHomePage(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/preference/ListPreference;

    const-string v3, "most_visited"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    const-string v3, "most_visited"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->setHomePagePicker(Ljava/lang/String;)V

    :cond_2
    const-string v1, "default"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->setHomePage(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/preference/ListPreference;

    const-string v3, "default"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    const-string v3, "default"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->setHomePagePicker(Ljava/lang/String;)V

    :cond_3
    const-string v1, "other"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;

    move-object v1, p1

    check-cast v1, Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->getHomePage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->promptForHomepage(Landroid/preference/ListPreference;Ljava/lang/String;)V

    check-cast p1, Landroid/preference/ListPreference;

    const-string v1, "other"

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;

    const-string v3, "other"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;->setHomePagePicker(Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->getHomepageSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->getHomepageValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onResume()V

    return-void
.end method
