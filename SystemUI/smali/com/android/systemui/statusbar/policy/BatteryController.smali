.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.BatteryController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-BatteryController"


# instance fields
.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastIntent:Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private getBattery()I
    .locals 8

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "statusbar_battery_icon"

    invoke-static {p0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-eq v2, v0, :cond_1

    const/4 v2, 0x4

    if-eq v2, v0, :cond_2

    const/4 v2, 0x5

    if-eq v2, v0, :cond_3

    const/4 v2, 0x6

    if-eq v2, v0, :cond_4

    const/4 v2, 0x7

    if-eq v2, v0, :cond_5

    const/4 v2, -0x2

    if-eq v2, v0, :cond_6

    const/4 v2, -0x3

    if-eq v2, v0, :cond_7

    const/4 v2, -0x4

    if-eq v2, v0, :cond_8

    const/4 v2, -0x5

    if-eq v2, v0, :cond_9

    const/4 v2, -0x6

    if-eq v2, v0, :cond_a

    const/4 v2, -0x7

    if-eq v2, v0, :cond_b

    const/4 v2, -0x8

    if-eq v2, v0, :cond_c

    const/4 v2, 0x0

    if-eq v2, v0, :cond_d

    const/4 v2, -0x1

    if-eq v2, v0, :cond_e

    const/4 v2, -0x8

    if-eq v2, v0, :cond_f

    :cond_0
    const v1, 0x50203d4

    goto :goto_0

    :cond_1
    const v1, 0x50203c0

    goto :goto_0

    :cond_2
    const v1, 0x50203c2

    goto :goto_0

    :cond_3
    const v1, 0x50203c4

    goto :goto_0

    :cond_4
    const v1, 0x50203c6

    goto :goto_0

    :cond_5
    const v1, 0x5020d10

    goto :goto_0

    :cond_6
    const v1, 0x50204aa

    goto :goto_0

    :cond_7
    const v1, 0x5020576

    goto :goto_0

    :cond_8
    const v1, 0x5020643

    goto :goto_0

    :cond_9
    const v1, 0x502070f

    goto :goto_0

    :cond_a
    const v1, 0x50207dc

    goto :goto_0

    :cond_b
    const v1, 0x50208a8

    goto :goto_0

    :cond_c
    const v1, 0x5020974

    goto :goto_0

    :cond_d
    const v1, 0x5020a40

    goto :goto_0

    :cond_e
    const v1, 0x5020b0d

    goto :goto_0

    :cond_f
    const v1, 0x50203c2

    goto :goto_0

    :goto_0
    return v1
.end method

.method private getBatteryCharge()I
    .locals 8

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "battery_type_key"

    invoke-static {p0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-eq v2, v0, :cond_1

    const/4 v2, 0x4

    if-eq v2, v0, :cond_2

    const/4 v2, 0x5

    if-eq v2, v0, :cond_3

    const/4 v2, 0x6

    if-eq v2, v0, :cond_4

    const/4 v2, 0x7

    if-eq v2, v0, :cond_5

    const/4 v2, -0x2

    if-eq v2, v0, :cond_6

    const/4 v2, -0x3

    if-eq v2, v0, :cond_7

    const/4 v2, -0x4

    if-eq v2, v0, :cond_8

    const/4 v2, -0x5

    if-eq v2, v0, :cond_9

    const/4 v2, -0x6

    if-eq v2, v0, :cond_a

    const/4 v2, -0x7

    if-eq v2, v0, :cond_b

    const/4 v2, -0x8

    if-eq v2, v0, :cond_c

    const/4 v2, 0x0

    if-eq v2, v0, :cond_d

    const/4 v2, -0x1

    if-eq v2, v0, :cond_e

    const/4 v2, -0x8

    if-eq v2, v0, :cond_f

    :cond_0
    const v1, 0x502043a

    goto :goto_0

    :cond_1
    const v1, 0x50203c1

    goto :goto_0

    :cond_2
    const v1, 0x50203c3

    goto :goto_0

    :cond_3
    const v1, 0x50203c5

    goto :goto_0

    :cond_4
    const v1, 0x50203c7

    goto :goto_0

    :cond_5
    const v1, 0x5020d11

    goto :goto_0

    :cond_6
    const v1, 0x5020510

    goto :goto_0

    :cond_7
    const v1, 0x50205dc

    goto :goto_0

    :cond_8
    const v1, 0x50206a9

    goto :goto_0

    :cond_9
    const v1, 0x5020775

    goto :goto_0

    :cond_a
    const v1, 0x5020842

    goto :goto_0

    :cond_b
    const v1, 0x502090e

    goto :goto_0

    :cond_c
    const v1, 0x50209da

    goto :goto_0

    :cond_d
    const v1, 0x5020aa6

    goto :goto_0

    :cond_e
    const v1, 0x5020b73

    goto :goto_0

    :cond_f
    const v1, 0x50203c5

    goto :goto_0

    :goto_0
    return v1
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "STATUSBAR-BatteryController"

    const-string v9, "onReceive() - ACTION_BATTERY_CHANGED"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "level"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v8, "STATUSBAR-BatteryController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() - level:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "plugged"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "STATUSBAR-BatteryController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() - plugged:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    const v3, 0x7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBatteryCharge()I

    move-result v3

    :goto_0
    const-string v8, "status"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    const-string v8, "STATUSBAR-BatteryController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() - : BatteryManager.EXTRA_STATUS  -  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "status"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_8

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "link_battery_icon"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "theme_color"

    const v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "batt_color"

    const v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :goto_3
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v9, 0x7f0b008d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBattery()I

    move-result v3

    goto/16 :goto_0

    :pswitch_0
    const-string v8, "STATUSBAR-BatteryController"

    const-string v9, "onReceive() - BATTERY_STATUS_CHARGING:"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBatteryCharge()I

    move-result v3

    goto :goto_1

    :pswitch_1
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v8, :cond_2

    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-nez v8, :cond_3

    :cond_2
    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    const v3, 0x7f020295

    const-string v8, "STATUSBAR-BatteryController"

    const-string v9, "onReceive() - BATTERY_STATUS_DISCHARGING: tw_stat_sys_battery_usb_not_charge"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBattery()I

    move-result v3

    const-string v8, "STATUSBAR-BatteryController"

    const-string v9, "onReceive() - BATTERY_STATUS_DISCHARGING: stat_sys_battery"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_2
    const-string v8, "health"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v8, "STATUSBAR-BatteryController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() - BATTERY_STATUS_NOT_CHARGING:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "KOR"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x3

    if-eq v5, v8, :cond_4

    const/4 v8, 0x7

    if-ne v5, v8, :cond_5

    :cond_4
    const v3, 0x7f02028a

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBattery()I

    move-result v3

    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x5

    if-ne v5, v8, :cond_7

    const v3, 0x7f020273

    goto/16 :goto_1

    :cond_7
    const v3, 0x7f02028a

    goto/16 :goto_1

    :pswitch_3
    const-string v8, "STATUSBAR-BatteryController"

    const-string v9, "onReceive() - BATTERY_STATUS_FULL:"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBattery()I

    move-result v3

    goto/16 :goto_1

    :pswitch_4
    const-string v8, "STATUSBAR-BatteryController"

    const-string v9, "onReceive() - BATTERY_STATUS_UNKNOWN:"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBattery()I

    move-result v3

    goto/16 :goto_1

    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_a

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0027

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "link_battery_text"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "theme_color"

    const v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_9
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "batt_text_color"

    const v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateBatteryResources()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
