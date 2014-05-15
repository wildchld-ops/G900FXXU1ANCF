.class public final Lcom/samsung/contacts/preference/SpeedDialSettingPreference;
.super Landroid/preference/Preference;
.source "SpeedDialSettingPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/contacts/preference/SpeedDialSettingPreference;->prepare()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/contacts/preference/SpeedDialSettingPreference;->prepare()V

    return-void
.end method

.method private prepare()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.contacts.action.SPEED_DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/preference/SpeedDialSettingPreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
