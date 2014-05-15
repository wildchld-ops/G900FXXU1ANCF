.class public Lcom/android/mms/ui/FontSizePreference;
.super Landroid/preference/ListPreference;
.source "FontSizePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "FontListPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

.field private mFontSize:[Ljava/lang/String;

.field private mFontSizeName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    goto :goto_0
.end method

.method private savePreferences(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_font_size"

    iget-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_key_font_size_by_volume_key_font_size"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FontSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/mms/ui/FontSizePreference;->savePreferences(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/mms/ui/FontSizeAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/mms/ui/FontSizeAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSelectedFontSizeIndexByPref(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    invoke-virtual {p1, v3, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public setSummaryByIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FontSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FontSizePreference;->setEntries(I)V

    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FontSizePreference;->setEntryValues(I)V

    :goto_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FontSizePreference;->setEntries(I)V

    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FontSizePreference;->setEntryValues(I)V

    goto :goto_0
.end method
