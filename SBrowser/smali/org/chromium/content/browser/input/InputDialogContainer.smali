.class public Lorg/chromium/content/browser/input/InputDialogContainer;
.super Ljava/lang/Object;
.source "InputDialogContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/InputDialogContainer$MonthListener;,
        Lorg/chromium/content/browser/input/InputDialogContainer$DateTimeListener;,
        Lorg/chromium/content/browser/input/InputDialogContainer$TimeListener;,
        Lorg/chromium/content/browser/input/InputDialogContainer$DateListener;,
        Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;
    }
.end annotation


# static fields
.field private static final HOUR_DEFAULT:I = 0x0

.field private static final HTML_DATE_FORMAT:Ljava/lang/String; = "%Y-%m-%d"

.field private static final HTML_DATE_TIME_FORMAT:Ljava/lang/String; = "%Y-%m-%dT%H:%MZ"

.field private static final HTML_DATE_TIME_LOCAL_FORMAT:Ljava/lang/String; = "%Y-%m-%dT%H:%M"

.field private static final HTML_MONTH_FORMAT:Ljava/lang/String; = "%Y-%m"

.field private static final HTML_TIME_FORMAT:Ljava/lang/String; = "%H:%M"

.field private static final MINUTE_DEFAULT:I = 0x0

.field private static final MONTHDAY_DEFAULT:I = 0x1

.field private static final MONTH_DEFAULT:I = 0x0

.field private static final YEAR_DEFAULT:I = 0x7b2

.field private static sTextInputTypeDate:I

.field private static sTextInputTypeDateTime:I

.field private static sTextInputTypeDateTimeLocal:I

.field private static sTextInputTypeMonth:I

.field private static sTextInputTypeTime:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogAlreadyDismissed:Z

.field private mInputActionDelegate:Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mInputActionDelegate:Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/InputDialogContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialogAlreadyDismissed:Z

    return v0
.end method

.method static synthetic access$002(Lorg/chromium/content/browser/input/InputDialogContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialogAlreadyDismissed:Z

    return p1
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/InputDialogContainer;)Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mInputActionDelegate:Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/InputDialogContainer;IIIIIILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/chromium/content/browser/input/InputDialogContainer;->setFieldDateTimeValue(IIIIIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeDateTimeLocal:I

    return v0
.end method

.method static initializeInputTypes(IIIII)V
    .locals 0

    sput p0, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeDate:I

    sput p1, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeDateTime:I

    sput p2, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeDateTimeLocal:I

    sput p3, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeMonth:I

    sput p4, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeTime:I

    return-void
.end method

.method static isDialogInputType(I)Z
    .locals 1

    sget v0, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeDate:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeTime:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeDateTime:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeDateTimeLocal:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeMonth:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizeTime(IIIIII)Landroid/text/format/Time;
    .locals 8

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v1, 0xd

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    :goto_0
    return-object v0

    :cond_0
    move v1, p6

    move v2, p5

    move v3, p4

    move v4, p3

    move v5, p2

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0
.end method

.method private setFieldDateTimeValue(IIIIIILjava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialogAlreadyDismissed:Z

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mInputActionDelegate:Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;->replaceDateTime(IIIIIII)V

    return-void
.end method


# virtual methods
.method dismissDialog()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/InputDialogContainer;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method isDialogShowing()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showDialog(IIIIIII)V
    .locals 10

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/InputDialogContainer;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/input/InputDialogContainer;->normalizeTime(IIIIII)Landroid/text/format/Time;

    move-result-object v9

    sget v0, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeDate:I

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mContext:Landroid/content/Context;

    new-instance v2, Lorg/chromium/content/browser/input/InputDialogContainer$DateListener;

    invoke-direct {v2, p0, p1}, Lorg/chromium/content/browser/input/InputDialogContainer$DateListener;-><init>(Lorg/chromium/content/browser/input/InputDialogContainer;I)V

    iget v3, v9, Landroid/text/format/Time;->year:I

    iget v4, v9, Landroid/text/format/Time;->month:I

    iget v5, v9, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0236

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_6

    :goto_1
    return-void

    :cond_2
    sget v0, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeTime:I

    if-ne p1, v0, :cond_3

    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mContext:Landroid/content/Context;

    new-instance v2, Lorg/chromium/content/browser/input/InputDialogContainer$TimeListener;

    invoke-direct {v2, p0, p1}, Lorg/chromium/content/browser/input/InputDialogContainer$TimeListener;-><init>(Lorg/chromium/content/browser/input/InputDialogContainer;I)V

    iget v3, v9, Landroid/text/format/Time;->hour:I

    iget v4, v9, Landroid/text/format/Time;->minute:I

    iget-object v5, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    sget v0, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeDateTime:I

    if-eq p1, v0, :cond_4

    sget v0, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeDateTimeLocal:I

    if-ne p1, v0, :cond_5

    :cond_4
    new-instance v0, Lorg/chromium/content/browser/input/DateTimePickerDialog;

    iget-object v1, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mContext:Landroid/content/Context;

    new-instance v2, Lorg/chromium/content/browser/input/InputDialogContainer$DateTimeListener;

    invoke-direct {v2, p0, p1}, Lorg/chromium/content/browser/input/InputDialogContainer$DateTimeListener;-><init>(Lorg/chromium/content/browser/input/InputDialogContainer;I)V

    iget v3, v9, Landroid/text/format/Time;->year:I

    iget v4, v9, Landroid/text/format/Time;->month:I

    iget v5, v9, Landroid/text/format/Time;->monthDay:I

    iget v6, v9, Landroid/text/format/Time;->hour:I

    iget v7, v9, Landroid/text/format/Time;->minute:I

    iget-object v8, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/input/DateTimePickerDialog;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/input/DateTimePickerDialog$OnDateTimeSetListener;IIIIIZ)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_5
    sget v0, Lorg/chromium/content/browser/input/InputDialogContainer;->sTextInputTypeMonth:I

    if-ne p1, v0, :cond_1

    new-instance v0, Lorg/chromium/content/browser/input/MonthPickerDialog;

    iget-object v1, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mContext:Landroid/content/Context;

    new-instance v2, Lorg/chromium/content/browser/input/InputDialogContainer$MonthListener;

    invoke-direct {v2, p0, p1}, Lorg/chromium/content/browser/input/InputDialogContainer$MonthListener;-><init>(Lorg/chromium/content/browser/input/InputDialogContainer;I)V

    iget v3, v9, Landroid/text/format/Time;->year:I

    iget v4, v9, Landroid/text/format/Time;->month:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/input/MonthPickerDialog;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/input/MonthPickerDialog$OnMonthSetListener;II)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0082

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mContext:Landroid/content/Context;

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lorg/chromium/content/browser/input/InputDialogContainer$1;

    invoke-direct {v3, p0}, Lorg/chromium/content/browser/input/InputDialogContainer$1;-><init>(Lorg/chromium/content/browser/input/InputDialogContainer;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    iget-object v2, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0083

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lorg/chromium/content/browser/input/InputDialogContainer$2;

    invoke-direct {v3, p0, p1}, Lorg/chromium/content/browser/input/InputDialogContainer$2;-><init>(Lorg/chromium/content/browser/input/InputDialogContainer;I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialogAlreadyDismissed:Z

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1
.end method
