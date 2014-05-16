.class public Lcom/android/systemui/statusbar/policy/quicksetting/PowerOffQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "PowerOffQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PowerOffQuickSettingButton"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const v2, 0x7f0b021b

    const v1, 0x7f0b0216

    const/4 v5, 0x0

    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    const v3, 0x7f02029d

    const v4, 0x7f02029d

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerOffQuickSettingButton;->initLayout(IIIIIII)V

    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerOffQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    return-void

    :cond_0
    const v0, 0x7f0202a2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerOffQuickSettingButton;->initLayout(III)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public deinit()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerOffQuickSettingButton;->setActivateStatus(I)V

    return-void
.end method

.method public onClick(Z)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Power Off"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Your device will turn off"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Ok"

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/PowerOffQuickSettingButton$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerOffQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/PowerOffQuickSettingButton;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Cancel"

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/PowerOffQuickSettingButton$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerOffQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/PowerOffQuickSettingButton;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7da

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "collapse_panel"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method

.method public onLongClick()V
    .locals 2

    return-void
.end method
