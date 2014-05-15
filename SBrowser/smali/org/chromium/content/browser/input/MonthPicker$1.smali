.class Lorg/chromium/content/browser/input/MonthPicker$1;
.super Ljava/lang/Object;
.source "MonthPicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/MonthPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/MonthPicker;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/MonthPicker;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/MonthPicker$1;->this$0:Lorg/chromium/content/browser/input/MonthPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 7

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x2

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker$1;->this$0:Lorg/chromium/content/browser/input/MonthPicker;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/content/browser/input/MonthPicker$1;->this$0:Lorg/chromium/content/browser/input/MonthPicker;

    #getter for: Lorg/chromium/content/browser/input/MonthPicker;->mCurrentLocale:Ljava/util/Locale;
    invoke-static {v3}, Lorg/chromium/content/browser/input/MonthPicker;->access$000(Lorg/chromium/content/browser/input/MonthPicker;)Ljava/util/Locale;

    move-result-object v3

    #calls: Lorg/chromium/content/browser/input/MonthPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    invoke-static {v1, v2, v3}, Lorg/chromium/content/browser/input/MonthPicker;->access$100(Lorg/chromium/content/browser/input/MonthPicker;Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker$1;->this$0:Lorg/chromium/content/browser/input/MonthPicker;

    #getter for: Lorg/chromium/content/browser/input/MonthPicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/chromium/content/browser/input/MonthPicker;->access$200(Lorg/chromium/content/browser/input/MonthPicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker$1;->this$0:Lorg/chromium/content/browser/input/MonthPicker;

    #getter for: Lorg/chromium/content/browser/input/MonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lorg/chromium/content/browser/input/MonthPicker;->access$300(Lorg/chromium/content/browser/input/MonthPicker;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_2

    if-ne p2, v6, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    :goto_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker$1;->this$0:Lorg/chromium/content/browser/input/MonthPicker;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    #calls: Lorg/chromium/content/browser/input/MonthPicker;->setDate(II)V
    invoke-static {v1, v2, v3}, Lorg/chromium/content/browser/input/MonthPicker;->access$500(Lorg/chromium/content/browser/input/MonthPicker;II)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker$1;->this$0:Lorg/chromium/content/browser/input/MonthPicker;

    #calls: Lorg/chromium/content/browser/input/MonthPicker;->updateSpinners()V
    invoke-static {v1}, Lorg/chromium/content/browser/input/MonthPicker;->access$600(Lorg/chromium/content/browser/input/MonthPicker;)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker$1;->this$0:Lorg/chromium/content/browser/input/MonthPicker;

    #calls: Lorg/chromium/content/browser/input/MonthPicker;->notifyDateChanged()V
    invoke-static {v1}, Lorg/chromium/content/browser/input/MonthPicker;->access$700(Lorg/chromium/content/browser/input/MonthPicker;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    if-ne p3, v6, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    sub-int v1, p3, p2

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPicker$1;->this$0:Lorg/chromium/content/browser/input/MonthPicker;

    #getter for: Lorg/chromium/content/browser/input/MonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lorg/chromium/content/browser/input/MonthPicker;->access$400(Lorg/chromium/content/browser/input/MonthPicker;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_3

    invoke-virtual {v0, v5, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
