.class public Lcom/android/keyguard/sec/SecContextualClock;
.super Landroid/widget/LinearLayout;
.source "SecContextualClock.java"


# instance fields
.field private mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDate:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClock$1;-><init>(Lcom/android/keyguard/sec/SecContextualClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClock$1;-><init>(Lcom/android/keyguard/sec/SecContextualClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClock$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecContextualClock$2;-><init>(Lcom/android/keyguard/sec/SecContextualClock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClock$1;-><init>(Lcom/android/keyguard/sec/SecContextualClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecContextualClock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecContextualClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecContextualClock;->handleUpdateClock()V

    return-void
.end method

.method private handleUpdateClock()V
    .locals 3

    const-string v1, "SecContextualClock"

    const-string v2, "handleUpdateClock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClock;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 11

    const/16 v10, 0x8

    const/4 v8, -0x2

    const/16 v9, 0x12cb

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v6, "SecContextualClock"

    const-string v7, "onAttachedToWindow()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecContextualClock;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v3, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v5, :cond_5

    move v1, v4

    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "emergency_mode"

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v5, :cond_6

    move v2, v5

    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_0

    if-eqz v3, :cond_7

    const-string v6, "ko"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    :cond_0
    :goto_2
    if-nez v1, :cond_1

    if-eqz v2, :cond_8

    :cond_1
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00af

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00b1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/SecContextualClock;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_5
    move v1, v5

    goto/16 :goto_0

    :cond_6
    move v2, v4

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00ab

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00ad

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00ac

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    :cond_9
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00ac

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    goto/16 :goto_3
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "SecContextualClock"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0103

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecContextualClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const v0, 0x7f0b0105

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecContextualClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    const v0, 0x7f0b0104

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecContextualClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const v0, 0x7f0b0102

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecContextualClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    return-void
.end method
