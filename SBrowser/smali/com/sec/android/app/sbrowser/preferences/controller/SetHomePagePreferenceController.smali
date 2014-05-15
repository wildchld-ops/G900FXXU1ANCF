.class public Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "SetHomePagePreferenceController.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SetHomePagePreferenceFragment"

.field public static final current_index:I = 0x1

.field public static final default_index:I = 0x0

.field static mCurrentPage:Ljava/lang/String; = null

.field public static final other_index:I = 0x4

.field public static final pinned_index:I = 0x2

.field public static final visited_index:I = 0x3


# instance fields
.field private OTHER_URL:Ljava/lang/String;

.field private cancelActionView:Landroid/view/View;

.field mChoices:[Ljava/lang/String;

.field mChromePref:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mLastSelectedIndex:I

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

.field private mNewValue:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

.field private mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

.field mValues:[Ljava/lang/String;

.field private saveActionView:Landroid/view/View;

.field private txt:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mCurrentPage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->OTHER_URL:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mLastSelectedIndex:I

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mLastSelectedIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;)Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    return-object v0
.end method

.method public static setCurrentPage(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mCurrentPage:Ljava/lang/String;

    return-void
.end method

.method private updateDeleteMenuItemState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mDeleteMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public UpdateHomepge()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mChoices:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "most_visited"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "pinned_most_visited"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->setHomePage(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "pinned_page"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "pinned_most_visited"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->setHomePage(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v3, "default"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    const-string v4, "http://www.google.com"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->setHomePage(Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.app.sbrowser"

    const-string v5, "0004"

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/sbrowser/applogging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->setHomePage(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v3, "current"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mCurrentPage:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    sget-object v4, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mCurrentPage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->setHomePage(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->setHomePageIndex(I)V

    goto :goto_2

    :cond_8
    const-string v3, "other"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->OTHER_URL:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->OTHER_URL:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->OTHER_URL:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->OTHER_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->setHomePage(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public UpdateSummaryAndGui(I)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getHomepageValue()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    const-string v4, "most_visited"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p1, 0x3

    :cond_0
    :goto_0
    iget v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mLastSelectedIndex:I

    if-eq v4, p1, :cond_1

    iput p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mLastSelectedIndex:I

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mChoices:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_7

    if-nez v3, :cond_7

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getHomepageSummary(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const v4, 0x7f060015

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "other_url"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getHomepageSummary(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "pinned_page"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    const-string v4, "default"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    const-string v4, "current"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 p1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x4

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_8

    if-eq v1, v7, :cond_8

    const/4 v4, 0x3

    if-ne v1, v4, :cond_9

    :cond_8
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getHomepageSummary(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const v4, 0x7f060014

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_a
    return-void
.end method

.method public UpdateSummaryAndGuiForTablet(I)V
    .locals 3

    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mLastSelectedIndex:I

    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mLastSelectedIndex:I

    if-ne p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGui(I)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mLastSelectedIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->setHomePageIndex(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateHomepge()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getHomepageLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mChoices:[Ljava/lang/String;

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

.method getHomepageSummary(I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, p1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "current"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mCurrentPage:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v3, "most_visited"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "pinned_page"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "http://www.google.com"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->OTHER_URL:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getHomepageValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->OTHER_URL:Ljava/lang/String;

    goto :goto_0
.end method

.method getHomepageValue()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePageIndex()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->getHomePage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getHomepageSummary(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "http://www.google.com"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "http://www.google.com"

    :goto_0
    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "most_visited"

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "pinned_page"

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "default"

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    sget-object v4, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mCurrentPage:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "current"

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;IILandroid/preference/Preference;)V
    .locals 4

    const/4 v3, 0x4

    const v2, 0x104000a

    if-ne p3, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->getHomePage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "other"

    invoke-virtual {p4, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->OTHER_URL:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->isXLarge()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGuiForTablet(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/utilities/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGui(I)V

    goto :goto_1

    :cond_4
    const/high16 v2, 0x104

    if-ne p3, v2, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mLastSelectedIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGui(I)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v8, 0x7f060012

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v7}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v7, 0x7f040002

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0xf

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v7, 0x7f0a0062

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->cancelActionView:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->cancelActionView:Landroid/view/View;

    new-instance v8, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$1;

    invoke-direct {v8, p0, v6}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;Landroid/app/Activity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a0064

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->saveActionView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0065

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->txt:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->txt:Landroid/widget/TextView;

    const v8, 0x7f0c0156

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->saveActionView:Landroid/view/View;

    new-instance v8, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$2;

    invoke-direct {v8, p0, v6}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;Landroid/app/Activity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f070094

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mChoices:[Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f070095

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mValues:[Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mChoices:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_0

    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, v6}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mChoices:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mValues:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGui(I)V

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v7, 0x4

    const/4 v8, 0x4

    invoke-virtual {v2, v7, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->isXLarge()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const v0, 0x7f0e0016

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0027

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->updateDeleteMenuItemState()V

    const-string v0, "SetHomePagePreference"

    const-string v1, "onCreateOptionsMenu function call!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mLastSelectedIndex:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->setHomePageIndex(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateHomepge()V

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0027
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    if-nez v6, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mNewValue:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0a0065

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->saveActionView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setEnabled(Z)V

    const-string v6, "current"

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mNewValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->isXLarge()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGuiForTablet(I)V

    :goto_1
    sget-object v6, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mCurrentPage:Ljava/lang/String;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080033

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->saveActionView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    const-string v6, "most_visited"

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mNewValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->isXLarge()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGuiForTablet(I)V

    :cond_2
    :goto_2
    const-string v6, "pinned_page"

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mNewValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->isXLarge()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGuiForTablet(I)V

    :cond_3
    :goto_3
    const-string v6, "default"

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mNewValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->isXLarge()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGuiForTablet(I)V

    :cond_4
    :goto_4
    const-string v6, "other"

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mNewValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->OTHER_URL:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->OTHER_URL:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mNewValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_5
    move-object v2, p2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->getHomePage()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "other_url"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

    invoke-virtual {v4, p2, v1, v3}, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->promptForHomepage(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGui(I)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0, v9}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGui(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGui(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGui(I)V

    goto :goto_4

    :cond_a
    move v4, v5

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mLastSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateSummaryAndGui(I)V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onResume()V

    return-void
.end method
