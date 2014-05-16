.class public final Lcom/android/systemui/statusbar/policy/DateView;
.super Landroid/widget/LinearLayout;
.source "DateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DateView$SettingsObserver;
    }
.end annotation


# static fields
.field public static mdaycheck:Ljava/lang/String;


# instance fields
.field private intent:Landroid/content/Intent;

.field private mAttachedToWindow:Z

.field private mDate:Landroid/widget/TextView;

.field private mDoW:Landroid/widget/TextView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLongClick:Ljava/lang/String;

.field private mShortClick:Ljava/lang/String;

.field private mUpdating:Z

.field private mWindowVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    const v12, 0x7f1f0014

    const/high16 v11, 0x3f80

    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v8, Lcom/android/systemui/statusbar/policy/DateView$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/policy/DateView$1;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/DateView;->setOrientation(I)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDoW:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDoW:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDoW:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDoW:Landroid/widget/TextView;

    invoke-virtual {v8, p1, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDoW:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v8, p1, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v8, 0x7f0b000e

    :try_start_0
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v10, :cond_5

    move v3, v7

    :goto_0
    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eq v8, v10, :cond_6

    move v2, v6

    :cond_0
    :goto_1
    if-nez v3, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDoW:Landroid/widget/TextView;

    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/DateView;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_8

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    :goto_3
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/DateView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/DateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/DateView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v5, Lcom/android/systemui/statusbar/policy/DateView$SettingsObserver;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/statusbar/policy/DateView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/DateView;Landroid/os/Handler;)V

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/DateView$SettingsObserver;->observe()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateSettings()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->mShortClick:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->mShortClick:Ljava/lang/String;

    const-string v7, ""

    if-ne v6, v7, :cond_2

    :cond_1
    const-string v6, "**nothing**"

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->mShortClick:Ljava/lang/String;

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLongClick:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLongClick:Ljava/lang/String;

    const-string v7, ""

    if-ne v6, v7, :cond_4

    :cond_3
    const-string v6, "**nothing**"

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLongClick:Ljava/lang/String;

    :cond_4
    return-void

    :cond_5
    move v3, v6

    goto :goto_0

    :cond_6
    move v2, v7

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "DateView"

    const-string v7, "Error extracting DoW and Date positions"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDoW:Landroid/widget/TextView;

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/DateView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/DateView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isVisible()Z
    .locals 3

    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setUpdates()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mWindowVisible:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdating:Z

    if-eq v1, v2, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdating:Z

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method

.method private final updateClock()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v5, "date_format"

    const/4 v4, 0x0

    invoke-static {v6, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const v4, 0x0

    if-eq v4, v5, :cond_0

    const v4, 0x1

    if-eq v4, v5, :cond_1

    const v4, 0x2

    if-eq v4, v5, :cond_2

    :cond_0
    const-string v4, "EEEE dd MMMM yyyy"

    goto :goto_0

    :cond_1
    const-string v4, "dd MMMM yyyy"

    goto :goto_0

    :cond_2
    const-string v4, "EEEE dd MMMM"

    :goto_0
    invoke-static {v4, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_test"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, "blank"

    :cond_3
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_test"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->randomcolor()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/DateView;->updatecolor(I)V

    :goto_1
    invoke-static {v0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDoW:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "link_dropdown_date"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_color"

    const v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDoW:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_color"

    const v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDoW:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public final getDate()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDoW()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDoW:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mShortClick:Ljava/lang/String;

    const-string v6, "**nothing**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mShortClick:Ljava/lang/String;

    const-string v6, "**today**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v5, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "time"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;

    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mShortClick:Ljava/lang/String;

    const-string v6, "**event**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mShortClick:Ljava/lang/String;

    const-string v6, "**assist**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mShortClick:Ljava/lang/String;

    const-string v6, "**custom**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_app_short"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "##"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/ComponentName;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x1400

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mShortClick:Ljava/lang/String;

    const-string v6, "**alarm**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SET_ALARM"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mShortClick:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLongClick:Ljava/lang/String;

    const-string v6, "**nothing**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return v7

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLongClick:Ljava/lang/String;

    const-string v6, "**today**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v5, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "time"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;

    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLongClick:Ljava/lang/String;

    const-string v6, "**event**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLongClick:Ljava/lang/String;

    const-string v6, "**assist**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLongClick:Ljava/lang/String;

    const-string v6, "**custom**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_app_long"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "##"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/ComponentName;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {v1, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x1400

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mShortClick:Ljava/lang/String;

    const-string v6, "**alarm**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SET_ALARM"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLongClick:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->intent:Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mWindowVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public randomcolor()I
    .locals 6

    const/16 v5, 0x100

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xff

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method protected updateSettings()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_date_shortclick"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mShortClick:Ljava/lang/String;

    const-string v1, "notification_date_longclick"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLongClick:Ljava/lang/String;

    return-void
.end method

.method public updatecolor(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "random_color"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_color"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "panel_bg_color2"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "pkill -TERM -f com.android.systemui"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    :cond_0
    return-void
.end method
