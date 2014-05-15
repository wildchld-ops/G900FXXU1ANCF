.class Lorg/chromium/content/browser/input/InputDialogContainer$1;
.super Ljava/lang/Object;
.source "InputDialogContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/InputDialogContainer;->showDialog(IIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/InputDialogContainer;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/InputDialogContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/InputDialogContainer$1;->this$0:Lorg/chromium/content/browser/input/InputDialogContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer$1;->this$0:Lorg/chromium/content/browser/input/InputDialogContainer;

    const/4 v1, 0x1

    #setter for: Lorg/chromium/content/browser/input/InputDialogContainer;->mDialogAlreadyDismissed:Z
    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/InputDialogContainer;->access$002(Lorg/chromium/content/browser/input/InputDialogContainer;Z)Z

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputDialogContainer$1;->this$0:Lorg/chromium/content/browser/input/InputDialogContainer;

    #getter for: Lorg/chromium/content/browser/input/InputDialogContainer;->mInputActionDelegate:Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;
    invoke-static {v0}, Lorg/chromium/content/browser/input/InputDialogContainer;->access$100(Lorg/chromium/content/browser/input/InputDialogContainer;)Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;->cancelDateTimeDialog()V

    return-void
.end method
