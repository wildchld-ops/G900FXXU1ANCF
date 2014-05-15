.class public Lcom/android/settings/informativescreen/InformativeScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InformativeScreenSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DIALOG_CURRENT_TIMEPICKER:I


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlwaysPref:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mEndhour:I

.field private mEndmin:I

.field private mHelpPref:Lcom/android/settings/UnclickablePreference;

.field private mInformativeScreenEnabler:Lcom/android/settings/informativescreen/InformativeScreenEnabler;

.field private final mInformativeScreenObserver:Landroid/database/ContentObserver;

.field private mNewsPref:Landroid/preference/CheckBoxPreference;

.field private mScreenColorPreference:Landroid/preference/ListPreference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSetTimPref:Landroid/preference/PreferenceCategory;

.field private mSetTimeDialogPref:Landroid/preference/Preference;

.field private mStarthour:I

.field private mStartmin:I

.field private mTimeFromBtn:Landroid/widget/Button;

.field private mTimePickerDlg:Landroid/app/Dialog;

.field private mTimeToBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->DIALOG_CURRENT_TIMEPICKER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/informativescreen/InformativeScreenSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/informativescreen/InformativeScreenSettings$1;-><init>(Lcom/android/settings/informativescreen/InformativeScreenSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mInformativeScreenObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/informativescreen/InformativeScreenSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/informativescreen/InformativeScreenSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/informativescreen/InformativeScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/informativescreen/InformativeScreenSettings;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->setEndTime(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/informativescreen/InformativeScreenSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/informativescreen/InformativeScreenSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStarthour:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/informativescreen/InformativeScreenSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStartmin:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/informativescreen/InformativeScreenSettings;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->setStartTime(II)V

    return-void
.end method

.method static synthetic access$502(I)I
    .locals 0

    sput p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->DIALOG_CURRENT_TIMEPICKER:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/informativescreen/InformativeScreenSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/informativescreen/InformativeScreenSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/informativescreen/InformativeScreenSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/informativescreen/InformativeScreenSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndhour:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/informativescreen/InformativeScreenSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndmin:I

    return v0
.end method

.method private setEndTime(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "informative_screen_end_hour"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "informative_screen_end_min"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/settings/informativescreen/InformativeScreenUtils;->TimeFormat(Landroid/content/Context;II)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeToBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setStartTime(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "informative_screen_start_hour"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "informative_screen_start_min"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/settings/informativescreen/InformativeScreenUtils;->TimeFormat(Landroid/content/Context;II)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeFromBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method initInformativeScreenswitchBtn()V
    .locals 9

    const/16 v5, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mActionBarLayout:Landroid/view/View;

    :cond_1
    new-instance v3, Lcom/android/settings/informativescreen/InformativeScreenEnabler;

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4, v7}, Lcom/android/settings/informativescreen/InformativeScreenEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Z)V

    iput-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mInformativeScreenEnabler:Lcom/android/settings/informativescreen/InformativeScreenEnabler;

    return-void
.end method

.method public initPref()V
    .locals 15

    const/4 v3, 0x0

    const/4 v10, 0x0

    const-string v11, "informative_screen_help"

    invoke-virtual {p0, v11}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/UnclickablePreference;

    iput-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mHelpPref:Lcom/android/settings/UnclickablePreference;

    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mHelpPref:Lcom/android/settings/UnclickablePreference;

    const v12, 0x7f0914cb

    invoke-virtual {v11, v12}, Lcom/android/settings/UnclickablePreference;->setTitle(I)V

    const-string v11, "set_time"

    invoke-virtual {p0, v11}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "informative_screen_set_time"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v11, 0x1

    if-ne v9, v11, :cond_5

    const v11, 0x7f0905f5

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const v14, 0x7f0914ce

    invoke-virtual {p0, v14}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v11, "set_color"

    invoke-virtual {p0, v11}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenColorPreference:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "informative_screen_set_color"

    const/4 v13, 0x3

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenColorPreference:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenColorPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0022

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    new-array v7, v11, [Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0022

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_7

    aget-object v8, v0, v5

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-nez v4, :cond_1

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d000a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    const/4 v11, 0x1

    if-ne v4, v11, :cond_2

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d000c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    const/4 v11, 0x2

    if-ne v4, v11, :cond_3

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d000d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    const/4 v11, 0x3

    if-ne v4, v11, :cond_4

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d000f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    aput-object v2, v7, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x2

    if-ne v9, v11, :cond_6

    const v11, 0x7f0905f5

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const v14, 0x7f0914cf

    invoke-virtual {p0, v14}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_6
    if-nez v9, :cond_0

    const v11, 0x7f0905f5

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const v14, 0x7f0914cd

    invoke-virtual {p0, v14}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_7
    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenColorPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    if-nez v1, :cond_a

    const v11, 0x7f0914d1

    invoke-virtual {p0, v11}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_8
    :goto_2
    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenColorPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v11, "news"

    invoke-virtual {p0, v11}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mNewsPref:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mNewsPref:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "informative_screen_news"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v11, "always"

    invoke-virtual {p0, v11}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "informative_screen_always"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v11, "set_time_category"

    invoke-virtual {p0, v11}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mSetTimPref:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    if-nez v11, :cond_9

    new-instance v11, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, p0, v12}, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;-><init>(Lcom/android/settings/informativescreen/InformativeScreenSettings;Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-nez v11, :cond_f

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    const v12, 0x7f0400f2

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v11, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mSetTimPref:Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_9
    return-void

    :cond_a
    const/4 v11, 0x1

    if-ne v1, v11, :cond_b

    const v11, 0x7f0914d2

    invoke-virtual {p0, v11}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_b
    const/4 v11, 0x2

    if-ne v1, v11, :cond_c

    const v11, 0x7f0914d3

    invoke-virtual {p0, v11}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_c
    const/4 v11, 0x3

    if-ne v1, v11, :cond_8

    const v11, 0x7f0914d4

    invoke-virtual {p0, v11}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_d
    const/4 v11, 0x0

    goto :goto_3

    :cond_e
    const/4 v11, 0x0

    goto :goto_4

    :cond_f
    const/4 v11, 0x0

    goto :goto_5
.end method

.method loadInformativeScreenTime()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "informative_screen_start_hour"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStarthour:I

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "informative_screen_end_hour"

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndhour:I

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "informative_screen_start_min"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStartmin:I

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "informative_screen_end_min"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndmin:I

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->initInformativeScreenswitchBtn()V

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->initPref()V

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->updateInformativeScreenPage()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimePickerDlg:Landroid/app/Dialog;

    :cond_0
    packed-switch p1, :pswitch_data_0

    iput-object v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimePickerDlg:Landroid/app/Dialog;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimePickerDlg:Landroid/app/Dialog;

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStarthour:I

    iget v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStartmin:I

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimePickerDlg:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndhour:I

    iget v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndmin:I

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimePickerDlg:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "InformativeScreenSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mInformativeScreenEnabler:Lcom/android/settings/informativescreen/InformativeScreenEnabler;

    invoke-virtual {v0}, Lcom/android/settings/informativescreen/InformativeScreenEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mInformativeScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x2

    const v7, 0x7f0905f5

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "set_color"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "informative_screen_set_color"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenColorPreference:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    if-nez v2, :cond_2

    const v3, 0x7f0914d1

    invoke-virtual {p0, v3}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenColorPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return v5

    :cond_2
    if-ne v2, v5, :cond_3

    const v3, 0x7f0914d2

    invoke-virtual {p0, v3}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-ne v2, v8, :cond_4

    const v3, 0x7f0914d3

    invoke-virtual {p0, v3}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const v3, 0x7f0914d4

    invoke-virtual {p0, v3}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v3, "set_time"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "informative_screen_set_time"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    if-ne v2, v5, :cond_7

    new-array v3, v5, [Ljava/lang/Object;

    const v4, 0x7f0914ce

    invoke-virtual {p0, v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v7, v3}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    if-ne v2, v8, :cond_8

    new-array v3, v5, [Ljava/lang/Object;

    const v4, 0x7f0914cf

    invoke-virtual {p0, v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v7, v3}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    if-nez v2, :cond_6

    new-array v3, v5, [Ljava/lang/Object;

    const v4, 0x7f0914cd

    invoke-virtual {p0, v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v7, v3}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_1

    sget v4, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    sget v4, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mSettingValue:I

    if-ne v4, v2, :cond_3

    move v1, v2

    :goto_0
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mNewsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mNewsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "informative_screen_news"

    if-eqz v1, :cond_4

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "informative_screen_always"

    if-eqz v1, :cond_6

    move v4, v2

    :goto_3
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_7

    :goto_4
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    move v4, v3

    goto :goto_3

    :cond_7
    move v2, v3

    goto :goto_4
.end method

.method public onResume()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const v9, 0x7f0905f5

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "InformativeScreenSettings"

    const-string v5, "onResume() "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mInformativeScreenEnabler:Lcom/android/settings/informativescreen/InformativeScreenEnabler;

    invoke-virtual {v4}, Lcom/android/settings/informativescreen/InformativeScreenEnabler;->resume()V

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "informative_screen_switch_onoff"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mInformativeScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->updatePref()V

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->updateInformativeScreenPage()V

    const-string v4, "set_time"

    invoke-virtual {p0, v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "informative_screen_set_time"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    if-ne v2, v7, :cond_6

    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0914ce

    invoke-virtual {p0, v5}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v4, "set_color"

    invoke-virtual {p0, v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenColorPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "informative_screen_set_color"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenColorPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    if-nez v0, :cond_8

    const v4, 0x7f0914d1

    invoke-virtual {p0, v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenColorPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->loadInformativeScreenTime()V

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeFromBtn:Landroid/widget/Button;

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStarthour:I

    iget v5, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStartmin:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->setStartTime(II)V

    :cond_4
    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeFromBtn:Landroid/widget/Button;

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndhour:I

    iget v5, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndmin:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->setEndTime(II)V

    :cond_5
    return-void

    :cond_6
    if-ne v2, v10, :cond_7

    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0914cf

    invoke-virtual {p0, v5}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_7
    if-nez v2, :cond_1

    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0914cd

    invoke-virtual {p0, v5}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_8
    if-ne v0, v7, :cond_9

    const v4, 0x7f0914d2

    invoke-virtual {p0, v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    if-ne v0, v10, :cond_a

    const v4, 0x7f0914d3

    invoke-virtual {p0, v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_a
    if-ne v0, v11, :cond_2

    const v4, 0x7f0914d4

    invoke-virtual {p0, v4}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    const-string v0, "InformativeScreenSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->DIALOG_CURRENT_TIMEPICKER:I

    if-ne v0, v2, :cond_2

    iput p2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStarthour:I

    iput p3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStartmin:I

    invoke-direct {p0, p2, p3}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->setStartTime(II)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStarthour:I

    iget v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndhour:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mStartmin:I

    iget v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndmin:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndmin:I

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndhour:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndhour:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndmin:I

    iget v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndhour:I

    iget v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndmin:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->setEndTime(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0914b4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    sget v0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->DIALOG_CURRENT_TIMEPICKER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput p2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndhour:I

    iput p3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndmin:I

    invoke-direct {p0, p2, p3}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->setEndTime(II)V

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mTimeToBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndmin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndmin:I

    iget v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndhour:I

    iget v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mEndmin:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->setEndTime(II)V

    goto :goto_1
.end method

.method updateInformativeScreenPage()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "informative_screen_switch_onoff"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mNewsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenColorPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mNewsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenColorPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updatePref()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mNewsPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mNewsPref:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "informative_screen_news"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "informative_screen_always"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
