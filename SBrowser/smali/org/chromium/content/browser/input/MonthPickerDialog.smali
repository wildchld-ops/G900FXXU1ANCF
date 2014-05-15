.class public Lorg/chromium/content/browser/input/MonthPickerDialog;
.super Landroid/app/AlertDialog;
.source "MonthPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lorg/chromium/content/browser/input/MonthPicker$OnMonthChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/MonthPickerDialog$OnMonthSetListener;
    }
.end annotation


# static fields
.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCallBack:Lorg/chromium/content/browser/input/MonthPickerDialog$OnMonthSetListener;

.field private final mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/chromium/content/browser/input/MonthPickerDialog$OnMonthSetListener;II)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mCallBack:Lorg/chromium/content/browser/input/MonthPickerDialog$OnMonthSetListener;

    const/4 v0, -0x1

    const v1, 0x7f0c0082

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lorg/chromium/content/browser/input/MonthPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    const/high16 v0, 0x104

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v0}, Lorg/chromium/content/browser/input/MonthPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/MonthPickerDialog;->setIcon(I)V

    const v0, 0x7f0c0085

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/MonthPickerDialog;->setTitle(I)V

    new-instance v0, Lorg/chromium/content/browser/input/MonthPicker;

    invoke-direct {v0, p1}, Lorg/chromium/content/browser/input/MonthPicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/MonthPickerDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;

    invoke-virtual {v0, p4, p5, p0}, Lorg/chromium/content/browser/input/MonthPicker;->init(IILorg/chromium/content/browser/input/MonthPicker$OnMonthChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/input/MonthPickerDialog$OnMonthSetListener;II)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/MonthPickerDialog;-><init>(Landroid/content/Context;ILorg/chromium/content/browser/input/MonthPickerDialog$OnMonthSetListener;II)V

    return-void
.end method

.method private tryNotifyMonthSet()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mCallBack:Lorg/chromium/content/browser/input/MonthPickerDialog$OnMonthSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/MonthPicker;->clearFocus()V

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mCallBack:Lorg/chromium/content/browser/input/MonthPickerDialog$OnMonthSetListener;

    iget-object v1, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/MonthPicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/MonthPicker;->getMonth()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/content/browser/input/MonthPickerDialog$OnMonthSetListener;->onMonthSet(Lorg/chromium/content/browser/input/MonthPicker;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMonthPicker()Lorg/chromium/content/browser/input/MonthPicker;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/MonthPickerDialog;->tryNotifyMonthSet()V

    return-void
.end method

.method public onMonthChanged(Lorg/chromium/content/browser/input/MonthPicker;II)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lorg/chromium/content/browser/input/MonthPicker;->init(IILorg/chromium/content/browser/input/MonthPicker$OnMonthChangedListener;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v2, "year"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "month"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;

    invoke-virtual {v2, v1, v0, p0}, Lorg/chromium/content/browser/input/MonthPicker;->init(IILorg/chromium/content/browser/input/MonthPicker$OnMonthChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "year"

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/MonthPicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "month"

    iget-object v2, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/MonthPicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onStop()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/MonthPickerDialog;->tryNotifyMonthSet()V

    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    return-void
.end method

.method public updateDate(II)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/MonthPickerDialog;->mMonthPicker:Lorg/chromium/content/browser/input/MonthPicker;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/input/MonthPicker;->updateMonth(II)V

    return-void
.end method
