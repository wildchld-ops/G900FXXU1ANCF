.class public Lcom/android/keyguard/sec/SecContextualClockFlightMode;
.super Landroid/widget/LinearLayout;
.source "SecContextualClockFlightMode.java"


# instance fields
.field private mAmPmFlightKor:Landroid/widget/TextClock;

.field private mAmPmFlightOpen:Landroid/widget/TextClock;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDate:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;-><init>(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;-><init>(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecContextualClockFlightMode$2;-><init>(Lcom/android/keyguard/sec/SecContextualClockFlightMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;-><init>(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->handleUpdateClock()V

    return-void
.end method

.method private handleUpdateClock()V
    .locals 3

    const-string v1, "SecContextualClockFlightMode"

    const-string v2, "handleUpdateClock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/16 v4, 0x12cb

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightOpen:Landroid/widget/TextClock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightKor:Landroid/widget/TextClock;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    const-string v2, "ko"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightOpen:Landroid/widget/TextClock;

    invoke-virtual {v2, v6}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightKor:Landroid/widget/TextClock;

    invoke-virtual {v2, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightOpen:Landroid/widget/TextClock;

    invoke-virtual {v2, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightKor:Landroid/widget/TextClock;

    invoke-virtual {v2, v6}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b010a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mDate:Landroid/widget/TextView;

    const v0, 0x7f0b0109

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightOpen:Landroid/widget/TextClock;

    const v0, 0x7f0b0107

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightKor:Landroid/widget/TextClock;

    return-void
.end method
