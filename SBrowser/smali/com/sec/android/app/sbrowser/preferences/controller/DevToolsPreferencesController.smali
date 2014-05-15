.class public Lcom/sec/android/app/sbrowser/preferences/controller/DevToolsPreferencesController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "DevToolsPreferencesController.java"


# static fields
.field public static final STORAGE_PHONE:Ljava/lang/String; = "PHONE"

.field private static mCurrentPage:Ljava/lang/String;


# instance fields
.field private LOGTAG:Ljava/lang/String;

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/DevToolsPreferencesModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/controller/DevToolsPreferencesController;->mCurrentPage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    const-string v0, "DevToolsPreferencesController"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DevToolsPreferencesController;->LOGTAG:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/DevToolsPreferencesModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/model/DevToolsPreferencesModel;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DevToolsPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DevToolsPreferencesModel;

    return-void
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

.method public static setCurrentPage(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/preferences/controller/DevToolsPreferencesController;->mCurrentPage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitleColor(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c00ce

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/controller/DevToolsPreferencesController;->mCurrentPage:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "chrome://debug/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v3, "enable_reader"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enable_remote_debugging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DevToolsPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DevToolsPreferencesModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/model/DevToolsPreferencesModel;->setRemoteDebuggingEnabled(Z)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method updateListPreferenceSummary(Landroid/preference/ListPreference;)V
    .locals 1

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
