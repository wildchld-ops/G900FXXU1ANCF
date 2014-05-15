.class Lorg/chromium/content/browser/input/InputDialogContainer$TimeListener;
.super Ljava/lang/Object;
.source "InputDialogContainer.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/InputDialogContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeListener"
.end annotation


# instance fields
.field private final mDialogType:I

.field final synthetic this$0:Lorg/chromium/content/browser/input/InputDialogContainer;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/InputDialogContainer;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/InputDialogContainer$TimeListener;->this$0:Lorg/chromium/content/browser/input/InputDialogContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/content/browser/input/InputDialogContainer$TimeListener;->mDialogType:I

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer$TimeListener;->this$0:Lorg/chromium/content/browser/input/InputDialogContainer;

    #getter for: Lorg/chromium/content/browser/input/InputDialogContainer;->mDialogAlreadyDismissed:Z
    invoke-static {v0}, Lorg/chromium/content/browser/input/InputDialogContainer;->access$000(Lorg/chromium/content/browser/input/InputDialogContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer$TimeListener;->this$0:Lorg/chromium/content/browser/input/InputDialogContainer;

    iget v1, p0, Lorg/chromium/content/browser/input/InputDialogContainer$TimeListener;->mDialogType:I

    const/16 v2, 0x7b2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v7, "%H:%M"

    move v5, p2

    move v6, p3

    #calls: Lorg/chromium/content/browser/input/InputDialogContainer;->setFieldDateTimeValue(IIIIIILjava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lorg/chromium/content/browser/input/InputDialogContainer;->access$200(Lorg/chromium/content/browser/input/InputDialogContainer;IIIIIILjava/lang/String;)V

    :cond_0
    return-void
.end method
