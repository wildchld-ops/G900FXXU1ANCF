.class public Lcom/android/systemui/statusbar/policy/ClockStock;
.super Landroid/widget/TextView;
.source "ClockStock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ClockStock$SettingsObserver;
    }
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field protected mClockColor:I

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLongClick:Ljava/lang/String;

.field private mShortClick:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ClockStock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ClockStock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/android/systemui/statusbar/policy/ClockStock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/ClockStock$1;-><init>(Lcom/android/systemui/statusbar/policy/ClockStock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/ClockStock$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/ClockStock$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/ClockStock;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ClockStock$SettingsObserver;->observe()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->updateSettings()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "**nothing**"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_3

    :cond_2
    const-string v1, "**nothing**"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ClockStock;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/ClockStock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ClockStock;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/ClockStock;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/ClockStock;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->updateClock()V

    return-void
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    const v15, 0x10400d4

    :goto_0
    const v2, 0xef00

    const v3, 0xef01

    invoke-virtual {v8, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const/4 v4, -0x1

    const/4 v14, 0x0

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    if-nez v14, :cond_3

    const/4 v14, 0x1

    :cond_0
    :goto_2
    if-nez v14, :cond_4

    const/16 v18, 0x61

    move/from16 v0, v18

    if-ne v7, v0, :cond_4

    move v4, v11

    :cond_1
    if-ltz v4, :cond_6

    move v5, v4

    :goto_3
    if-lez v4, :cond_5

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v18

    if-eqz v18, :cond_5

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_2
    const v15, 0x10400d3

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0xef00

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "a"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0xef01

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v5, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_6
    new-instance v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormatString:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    const v18, 0xef00

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const v18, 0xef01

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v12, :cond_8

    if-le v13, v12, :cond_8

    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v12, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :goto_5
    return-object v10

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    goto :goto_4

    :cond_8
    move-object/from16 v10, v16

    goto :goto_5
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->updateClock()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

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
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

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

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

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
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

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

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    const-string v6, "**assist**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    const-string v6, "**alarm**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SET_ALARM"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    goto :goto_2

    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mAttached:Z

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

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
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

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

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

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
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

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

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    const-string v6, "**assist**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    const-string v6, "**alarm**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SET_ALARM"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    goto :goto_2

    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3
.end method

.method final updateClock()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ClockStock;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "link_dropdown_clock"

    const v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_color"

    const v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ClockStock;->setTextColor(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_clock_color"

    const v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ClockStock;->setTextColor(I)V

    return-void
.end method

.method protected updateSettings()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_clock_shortclick"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    const-string v1, "notification_clock_longclick"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->updateClock()V

    return-void
.end method
