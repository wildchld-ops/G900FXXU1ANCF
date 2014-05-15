.class Lorg/chromium/content/browser/input/InputDialogContainer$DateTimeListener;
.super Ljava/lang/Object;
.source "InputDialogContainer.java"

# interfaces
.implements Lorg/chromium/content/browser/input/DateTimePickerDialog$OnDateTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/InputDialogContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateTimeListener"
.end annotation


# instance fields
.field private final mDialogType:I

.field private final mLocal:Z

.field final synthetic this$0:Lorg/chromium/content/browser/input/InputDialogContainer;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/InputDialogContainer;I)V
    .locals 1

    iput-object p1, p0, Lorg/chromium/content/browser/input/InputDialogContainer$DateTimeListener;->this$0:Lorg/chromium/content/browser/input/InputDialogContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/content/browser/input/InputDialogContainer;->access$300()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer$DateTimeListener;->mLocal:Z

    iput p2, p0, Lorg/chromium/content/browser/input/InputDialogContainer$DateTimeListener;->mDialogType:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDateTimeSet(Landroid/widget/DatePicker;Landroid/widget/TimePicker;IIIII)V
    .locals 8

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer$DateTimeListener;->this$0:Lorg/chromium/content/browser/input/InputDialogContainer;

    #getter for: Lorg/chromium/content/browser/input/InputDialogContainer;->mDialogAlreadyDismissed:Z
    invoke-static {v0}, Lorg/chromium/content/browser/input/InputDialogContainer;->access$000(Lorg/chromium/content/browser/input/InputDialogContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer$DateTimeListener;->this$0:Lorg/chromium/content/browser/input/InputDialogContainer;

    iget v1, p0, Lorg/chromium/content/browser/input/InputDialogContainer$DateTimeListener;->mDialogType:I

    iget-boolean v2, p0, Lorg/chromium/content/browser/input/InputDialogContainer$DateTimeListener;->mLocal:Z

    if-eqz v2, :cond_1

    const-string v7, "%Y-%m-%dT%H:%M"

    :goto_0
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    #calls: Lorg/chromium/content/browser/input/InputDialogContainer;->setFieldDateTimeValue(IIIIIILjava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lorg/chromium/content/browser/input/InputDialogContainer;->access$200(Lorg/chromium/content/browser/input/InputDialogContainer;IIIIIILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v7, "%Y-%m-%dT%H:%MZ"

    goto :goto_0
.end method
