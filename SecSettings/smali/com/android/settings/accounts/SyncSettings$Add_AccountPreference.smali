.class public Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;
.super Landroid/preference/Preference;
.source "SyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/SyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Add_AccountPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/SyncSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/SyncSettings;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;->this$0:Lcom/android/settings/accounts/SyncSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0201d5

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;->setIcon(I)V

    const v0, 0x7f090adb

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;->setTitle(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
