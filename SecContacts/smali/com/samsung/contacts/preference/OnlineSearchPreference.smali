.class public final Lcom/samsung/contacts/preference/OnlineSearchPreference;
.super Landroid/preference/CheckBoxPreference;
.source "OnlineSearchPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/contacts/preference/OnlineSearchPreference;->prepare()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/contacts/preference/OnlineSearchPreference;->prepare()V

    return-void
.end method

.method private prepare()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/OnlineSearchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/preference/OnlineSearchPreference;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/samsung/contacts/preference/OnlineSearchPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/preference/OnlineSearchPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v0, p0, Lcom/samsung/contacts/preference/OnlineSearchPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/preference/OnlineSearchPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/preference/OnlineSearchPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected persistBoolean(Z)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v0, p1

    iget-object v4, p0, Lcom/samsung/contacts/preference/OnlineSearchPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v4}, Lcom/android/contacts/common/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    :goto_0
    if-eq v0, v1, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/preference/OnlineSearchPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v4, v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->setOnlineSearch(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/OnlineSearchPreference;->notifyChanged()V

    :cond_1
    return v3

    :cond_2
    move v1, v3

    goto :goto_0
.end method
