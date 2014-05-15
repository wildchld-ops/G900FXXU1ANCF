.class Lcom/android/contacts/datepicker/DatePicker$5;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mDateFormat:I
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$700(Lcom/android/contacts/datepicker/DatePicker;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    const/4 v1, 0x1

    #calls: Lcom/android/contacts/datepicker/DatePicker;->setOrderByDateFormat(I)V
    invoke-static {v0, v1}, Lcom/android/contacts/datepicker/DatePicker;->access$800(Lcom/android/contacts/datepicker/DatePicker;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mDateFormat:I
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$700(Lcom/android/contacts/datepicker/DatePicker;)I

    move-result v0

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    const/4 v1, 0x0

    #calls: Lcom/android/contacts/datepicker/DatePicker;->setOrderByDateFormat(I)V
    invoke-static {v0, v1}, Lcom/android/contacts/datepicker/DatePicker;->access$800(Lcom/android/contacts/datepicker/DatePicker;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    const/4 v1, 0x2

    #calls: Lcom/android/contacts/datepicker/DatePicker;->setOrderByDateFormat(I)V
    invoke-static {v0, v1}, Lcom/android/contacts/datepicker/DatePicker;->access$800(Lcom/android/contacts/datepicker/DatePicker;I)V

    goto :goto_0
.end method
