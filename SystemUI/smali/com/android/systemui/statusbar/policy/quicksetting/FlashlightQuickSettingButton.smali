.class public Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "FlashlightQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-FlashlightQuickSettingButton"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlashlight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const v2, 0x7f0b0217

    const v1, 0x7f0b0212

    const/4 v5, 0x0

    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    const v3, 0x7f02029c

    const v4, 0x7f02029b

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->initLayout(IIIIIII)V

    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    return-void

    :cond_0
    const v0, 0x7f0202a1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->initLayout(III)V

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

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 6

    const/4 v2, 0x1

    if-nez p1, :cond_2

    move v1, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:Z

    if-eq v1, v3, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "net.cactii.flash2.EXTRA_DISABLE_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setActivateStatus(I)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "collapse_panel"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setActivateStatus(I)V

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 0

    return-void
.end method
