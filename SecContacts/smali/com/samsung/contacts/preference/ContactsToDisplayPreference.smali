.class public final Lcom/samsung/contacts/preference/ContactsToDisplayPreference;
.super Landroid/preference/Preference;
.source "ContactsToDisplayPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/contacts/preference/ContactsToDisplayPreference;->prepare()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/contacts/preference/ContactsToDisplayPreference;->prepare()V

    return-void
.end method

.method private prepare()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/ContactsToDisplayPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/preference/ContactsToDisplayPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/contacts/preference/ContactsToDisplayPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/preference/ContactsToDisplayPreference;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    iget-object v0, p0, Lcom/samsung/contacts/preference/ContactsToDisplayPreference;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->checkFilterValidity(Z)V

    invoke-virtual {p0, p0}, Lcom/samsung/contacts/preference/ContactsToDisplayPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/preference/ContactsToDisplayPreference;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/preference/ContactsToDisplayPreference;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Activity;ILcom/android/contacts/common/list/ContactListFilter;)V

    const/4 v0, 0x1

    return v0
.end method
