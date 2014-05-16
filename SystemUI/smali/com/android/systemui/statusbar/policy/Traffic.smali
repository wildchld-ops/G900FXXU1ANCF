.class public Lcom/android/systemui/statusbar/policy/Traffic;
.super Landroid/widget/TextView;
.source "Traffic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/Traffic$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mColor:I

.field mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mRunnable:Ljava/lang/Runnable;

.field protected mTrafficColor:I

.field mTrafficHandler:Landroid/os/Handler;

.field mTrafficStats:Landroid/net/TrafficStats;

.field showTraffic:Z

.field speed:F

.field totalRxBytes:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Traffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Traffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/android/systemui/statusbar/policy/Traffic$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Traffic$1;-><init>(Lcom/android/systemui/statusbar/policy/Traffic;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/Traffic$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Traffic$3;-><init>(Lcom/android/systemui/statusbar/policy/Traffic;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/Traffic$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/Traffic$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/Traffic;Landroid/os/Handler;)V

    new-instance v1, Landroid/net/TrafficStats;

    invoke-direct {v1}, Landroid/net/TrafficStats;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficStats:Landroid/net/TrafficStats;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Traffic$SettingsObserver;->observe()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->updateSettings()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/Traffic;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/Traffic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->updateSettings()V

    return-void
.end method

.method private getConnectAvailable()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    const-string v4, "traffic_color"

    iget v5, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficColor:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficColor:I

    if-eq v0, v4, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficColor:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->color_traffic()V

    iget v4, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mColor:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/Traffic;->setTextColor(I)V

    :cond_0
    const-string v4, "traffic_display"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Traffic;->showTraffic:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Traffic;->showTraffic:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->getConnectAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mAttached:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->updateTraffic()V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Traffic;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/Traffic;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method color_traffic()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "link_traffic"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_color"

    const v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mColor:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "traffic_color"

    const v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mColor:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficColor:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->updateSettings()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mAttached:Z

    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateTraffic()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/Traffic$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/Traffic$2;-><init>(Lcom/android/systemui/statusbar/policy/Traffic;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficStats:Landroid/net/TrafficStats;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->totalRxBytes:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
