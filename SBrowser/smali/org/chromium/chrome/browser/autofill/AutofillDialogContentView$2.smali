.class Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$2;
.super Ljava/lang/Object;
.source "AutofillDialogContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->updateMenuItemsForSection(ILjava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

.field final synthetic val$selectedMenuItem:I

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;Landroid/widget/Spinner;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$2;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$2;->val$spinner:Landroid/widget/Spinner;

    iput p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$2;->val$selectedMenuItem:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$2;->val$spinner:Landroid/widget/Spinner;

    iget v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$2;->val$selectedMenuItem:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$2;->val$spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$2;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->access$100(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method
