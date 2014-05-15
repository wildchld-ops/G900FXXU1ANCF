.class Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$1;
.super Ljava/lang/Object;
.source "AutofillDialogContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSteadyLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
