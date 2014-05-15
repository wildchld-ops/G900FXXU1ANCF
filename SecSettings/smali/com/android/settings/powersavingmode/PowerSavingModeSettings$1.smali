.class Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;
.super Landroid/database/ContentObserver;
.source "PowerSavingModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string v0, "PowerSavingModeSettings"

    const-string v1, "onChange() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    #getter for: Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->access$100(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    #calls: Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->access$000(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "powersaving_switch"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09092f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    return-void

    :cond_0
    const v0, 0x7f090930

    goto :goto_0
.end method
