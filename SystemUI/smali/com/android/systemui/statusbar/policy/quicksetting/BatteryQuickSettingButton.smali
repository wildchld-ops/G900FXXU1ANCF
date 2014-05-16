.class public Lcom/android/systemui/statusbar/policy/quicksetting/BatteryQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "BatteryQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-BatteryQuickSettingButton"


# instance fields
.field private mBattery:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const v2, 0x7f0b0219

    const v1, 0x7f0b0215

    const/4 v5, 0x0

    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    const v3, 0x7f020298

    const v4, 0x7f020298

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/BatteryQuickSettingButton;->initLayout(IIIIIII)V

    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/BatteryQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    return-void

    :cond_0
    const v0, 0x7f02029e

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/BatteryQuickSettingButton;->initLayout(III)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 1

    return-void
.end method

.method public init()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BatteryQuickSettingButton;->mBattery:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BatteryQuickSettingButton;->mBattery:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/BatteryQuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 2

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.fuelgauge.PowerUsageSummary"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/BatteryQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLongClick()V
    .locals 2

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.BatteryInfo"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/BatteryQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
