.class public Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/datepicker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private isMonth:Z

.field private mCheck:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePicker;


# direct methods
.method public constructor <init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V
    .locals 2

    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mMaxLen:I

    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    iput-boolean p4, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->isMonth:Z

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mCheck:I

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mCheck:I

    if-gez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mCheck:I

    :cond_0
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mNext:I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 2

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mNext:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-boolean v0, v0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$900(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mNext:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v1, v1, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$900(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mCheck:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$900(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mNext:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$900(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$900(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$900(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "onClick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onLongClick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->isMonth:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$000(Lcom/android/contacts/datepicker/DatePicker;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$900(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$900(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$900(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$900(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v2, v2, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "6"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "7"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "8"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "9"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "10"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "11"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mMaxLen:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$900(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0
.end method
