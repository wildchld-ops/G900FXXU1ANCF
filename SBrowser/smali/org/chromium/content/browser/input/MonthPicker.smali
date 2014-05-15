.class public Lorg/chromium/content/browser/input/MonthPicker;
.super Landroid/widget/FrameLayout;
.source "MonthPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/MonthPicker$SavedState;,
        Lorg/chromium/content/browser/input/MonthPicker$OnMonthChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthChangedListener:Lorg/chromium/content/browser/input/MonthPicker$OnMonthChangedListener;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private mNumberOfMonths:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mYearSpinner:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/input/MonthPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/input/MonthPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v8, p0, Lorg/chromium/content/browser/input/MonthPicker;->mIsEnabled:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/chromium/content/browser/input/MonthPicker;->setCurrentLocale(Ljava/util/Locale;)V

    const/16 v3, 0x76c

    const/16 v0, 0x834

    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f04004e

    invoke-virtual {v1, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v2, Lorg/chromium/content/browser/input/MonthPicker$1;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/input/MonthPicker$1;-><init>(Lorg/chromium/content/browser/input/MonthPicker;)V

    const v5, 0x7f0a0024

    invoke-virtual {p0, v5}, Lorg/chromium/content/browser/input/MonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    iput-object v5, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v5, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v5, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v6, p0, Lorg/chromium/content/browser/input/MonthPicker;->mNumberOfMonths:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v5, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Lorg/chromium/content/browser/input/MonthPicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v5, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v5, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    const v5, 0x7f0a0025

    invoke-virtual {p0, v5}, Lorg/chromium/content/browser/input/MonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    iput-object v5, p0, Lorg/chromium/content/browser/input/MonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v5, p0, Lorg/chromium/content/browser/input/MonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v5, p0, Lorg/chromium/content/browser/input/MonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v5, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v10, v5}, Lorg/chromium/content/browser/input/MonthPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v3, v9, v8}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lorg/chromium/content/browser/input/MonthPicker;->setMinDate(J)V

    const/16 v5, 0xb

    const/16 v6, 0x1f

    invoke-virtual {v4, v0, v5, v6}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lorg/chromium/content/browser/input/MonthPicker;->setMaxDate(J)V

    iget-object v5, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v5, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v5, v6, v10}, Lorg/chromium/content/browser/input/MonthPicker;->init(IILorg/chromium/content/browser/input/MonthPicker$OnMonthChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/MonthPicker;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/MonthPicker;Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/MonthPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/MonthPicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/input/MonthPicker;)Landroid/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/input/MonthPicker;)Landroid/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/input/MonthPicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/MonthPicker;->setDate(II)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/input/MonthPicker;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/MonthPicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/input/MonthPicker;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/MonthPicker;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(II)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/MonthPicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthChangedListener:Lorg/chromium/content/browser/input/MonthPicker$OnMonthChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthChangedListener:Lorg/chromium/content/browser/input/MonthPicker$OnMonthChangedListener;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/MonthPicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/MonthPicker;->getMonth()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lorg/chromium/content/browser/input/MonthPicker$OnMonthChangedListener;->onMonthChanged(Lorg/chromium/content/browser/input/MonthPicker;II)V

    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentLocale:Ljava/util/Locale;

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/input/MonthPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMinDate:Ljava/util/Calendar;

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/input/MonthPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/input/MonthPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mShortMonths:[Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mShortMonths:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mNumberOfMonths:I

    goto :goto_0
.end method

.method private setDate(II)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :goto_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/MonthPicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/MonthPicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getDayOfMonth()I
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IILorg/chromium/content/browser/input/MonthPicker$OnMonthChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/MonthPicker;->setDate(II)V

    invoke-direct {p0}, Lorg/chromium/content/browser/input/MonthPicker;->updateSpinners()V

    iput-object p3, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthChangedListener:Lorg/chromium/content/browser/input/MonthPicker$OnMonthChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/MonthPicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/16 v0, 0x14

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/MonthPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lorg/chromium/content/browser/input/MonthPicker$SavedState;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/MonthPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #getter for: Lorg/chromium/content/browser/input/MonthPicker$SavedState;->mYear:I
    invoke-static {v0}, Lorg/chromium/content/browser/input/MonthPicker$SavedState;->access$900(Lorg/chromium/content/browser/input/MonthPicker$SavedState;)I

    move-result v1

    #getter for: Lorg/chromium/content/browser/input/MonthPicker$SavedState;->mMonth:I
    invoke-static {v0}, Lorg/chromium/content/browser/input/MonthPicker$SavedState;->access$1000(Lorg/chromium/content/browser/input/MonthPicker$SavedState;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/input/MonthPicker;->setDate(II)V

    invoke-direct {p0}, Lorg/chromium/content/browser/input/MonthPicker;->updateSpinners()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lorg/chromium/content/browser/input/MonthPicker$SavedState;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/MonthPicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/MonthPicker;->getMonth()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/chromium/content/browser/input/MonthPicker$SavedState;-><init>(Landroid/os/Parcelable;IILorg/chromium/content/browser/input/MonthPicker$1;)V

    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/input/MonthPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/MonthPicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/input/MonthPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/MonthPicker;->updateSpinners()V

    goto :goto_0
.end method

.method public updateMonth(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/MonthPicker;->isNewDate(II)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/MonthPicker;->setDate(II)V

    invoke-direct {p0}, Lorg/chromium/content/browser/input/MonthPicker;->updateSpinners()V

    invoke-direct {p0}, Lorg/chromium/content/browser/input/MonthPicker;->notifyDateChanged()V

    goto :goto_0
.end method
