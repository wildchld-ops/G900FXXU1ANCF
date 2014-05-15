.class public final Lcom/samsung/contacts/preference/ImportExportPreference;
.super Landroid/preference/Preference;
.source "ImportExportPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/contacts/preference/ImportExportPreference;->prepare()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/contacts/preference/ImportExportPreference;->prepare()V

    return-void
.end method

.method private prepare()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/ImportExportPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/preference/ImportExportPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/contacts/preference/ImportExportPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/preference/ImportExportPreference;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    return-void
.end method


# virtual methods
.method public areContactsAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/preference/ImportExportPreference;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/preference/ImportExportPreference;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/preference/ImportExportPreference;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/ImportExportPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/ImportExportPreference;->areContactsAvailable()Z

    move-result v1

    const-class v2, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;ZLjava/lang/Class;)V

    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    return-void
.end method
