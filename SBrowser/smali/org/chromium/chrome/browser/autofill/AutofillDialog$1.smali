.class Lorg/chromium/chrome/browser/autofill/AutofillDialog$1;
.super Ljava/lang/Object;
.source "AutofillDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/autofill/AutofillDialog;->updateNotificationArea([Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/AutofillDialog;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    iput p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog$1;->val$type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialog;)Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog$1;->val$type:I

    invoke-interface {v0, v1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->notificationCheckboxStateChanged(IZ)V

    return-void
.end method
