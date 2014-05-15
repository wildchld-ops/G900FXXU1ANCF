.class Lorg/chromium/content/browser/input/InputDialogContainer$DateListener;
.super Ljava/lang/Object;
.source "InputDialogContainer.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/InputDialogContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateListener"
.end annotation


# instance fields
.field private final mDialogType:I

.field final synthetic this$0:Lorg/chromium/content/browser/input/InputDialogContainer;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/InputDialogContainer;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/InputDialogContainer$DateListener;->this$0:Lorg/chromium/content/browser/input/InputDialogContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/content/browser/input/InputDialogContainer$DateListener;->mDialogType:I

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer$DateListener;->this$0:Lorg/chromium/content/browser/input/InputDialogContainer;

    #getter for: Lorg/chromium/content/browser/input/InputDialogContainer;->mDialogAlreadyDismissed:Z
    invoke-static {v0}, Lorg/chromium/content/browser/input/InputDialogContainer;->access$000(Lorg/chromium/content/browser/input/InputDialogContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer$DateListener;->this$0:Lorg/chromium/content/browser/input/InputDialogContainer;

    iget v1, p0, Lorg/chromium/content/browser/input/InputDialogContainer$DateListener;->mDialogType:I

    const-string v7, "%Y-%m-%d"

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    #calls: Lorg/chromium/content/browser/input/InputDialogContainer;->setFieldDateTimeValue(IIIIIILjava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lorg/chromium/content/browser/input/InputDialogContainer;->access$200(Lorg/chromium/content/browser/input/InputDialogContainer;IIIIIILjava/lang/String;)V

    :cond_0
    return-void
.end method
