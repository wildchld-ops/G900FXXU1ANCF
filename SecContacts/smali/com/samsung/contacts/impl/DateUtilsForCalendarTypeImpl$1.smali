.class final Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$1;
.super Ljava/lang/Object;
.source "DateUtilsForCalendarTypeImpl.java"

# interfaces
.implements Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl;->createDatePickerDialog(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/account/AccountType$EventEditType;Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$Listener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$column:Ljava/lang/String;

.field final synthetic val$isYearOptional:Z

.field final synthetic val$kind:Lcom/android/contacts/common/model/dataitem/DataKind;

.field final synthetic val$listener:Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$Listener;


# direct methods
.method constructor <init>(ZLcom/android/contacts/common/model/dataitem/DataKind;Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$Listener;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$1;->val$isYearOptional:Z

    iput-object p2, p0, Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$1;->val$kind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iput-object p3, p0, Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$1;->val$listener:Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$Listener;

    iput-object p4, p0, Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$1;->val$column:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/android/contacts/datepicker/DatePicker;III)V
    .locals 8

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$1;->val$isYearOptional:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    sget-object v1, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    if-nez p2, :cond_1

    const/16 v1, 0x7d0

    :goto_0
    const/16 v4, 0x8

    move v2, p3

    move v3, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$1;->val$kind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v1, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    iget-object v1, p0, Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$1;->val$listener:Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$Listener;

    iget-object v2, p0, Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$1;->val$column:Ljava/lang/String;

    invoke-interface {v1, v2, v7}, Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$Listener;->onDateChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    move v1, p2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl$1;->val$kind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v1, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method
