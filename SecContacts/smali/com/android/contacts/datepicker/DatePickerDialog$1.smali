.class Lcom/android/contacts/datepicker/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/datepicker/DatePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePickerDialog$1;->this$0:Lcom/android/contacts/datepicker/DatePickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog$1;->this$0:Lcom/android/contacts/datepicker/DatePickerDialog;

    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog$1;->this$0:Lcom/android/contacts/datepicker/DatePickerDialog;

    #getter for: Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePickerDialog;->access$000(Lcom/android/contacts/datepicker/DatePickerDialog;)Lcom/android/contacts/datepicker/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog$1;->this$0:Lcom/android/contacts/datepicker/DatePickerDialog;

    #getter for: Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePickerDialog;->access$000(Lcom/android/contacts/datepicker/DatePickerDialog;)Lcom/android/contacts/datepicker/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker;->clearFocus()V

    return-void
.end method
