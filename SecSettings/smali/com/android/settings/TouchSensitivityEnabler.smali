.class public Lcom/android/settings/TouchSensitivityEnabler;
.super Ljava/lang/Object;
.source "TouchSensitivityEnabler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

.field private mToggleImageView:Lcom/android/settings/ToggleImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/ToggleImageView;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/TouchSensitivityEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TouchSensitivityEnabler$1;-><init>(Lcom/android/settings/TouchSensitivityEnabler;)V

    iput-object v0, p0, Lcom/android/settings/TouchSensitivityEnabler;->mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

    iput-object p1, p0, Lcom/android/settings/TouchSensitivityEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/TouchSensitivityEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-direct {p0}, Lcom/android/settings/TouchSensitivityEnabler;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TouchSensitivityEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TouchSensitivityEnabler;->onToggleChanged()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/TouchSensitivityEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    const v1, 0x7f0200f2

    const v2, 0x7f0200f3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ToggleImageView;->setToggleRes(II)V

    iget-object v0, p0, Lcom/android/settings/TouchSensitivityEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    iget-object v1, p0, Lcom/android/settings/TouchSensitivityEnabler;->mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/ToggleImageView;->setOnToggleListener(Lcom/android/settings/ToggleImageView$OnToggleListener;)V

    return-void
.end method

.method private onToggleChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/TouchSensitivityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_adjust_touch"

    iget-object v0, p0, Lcom/android/settings/TouchSensitivityEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v0}, Lcom/android/settings/ToggleImageView;->getToggleState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TouchSensitivityEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v0}, Lcom/android/settings/ToggleImageView;->getToggleState()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->enableGloveMode(Z)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public resume()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/TouchSensitivityEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    iget-object v2, p0, Lcom/android/settings/TouchSensitivityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_adjust_touch"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/ToggleImageView;->updateToggleState(Z)V

    return-void
.end method
