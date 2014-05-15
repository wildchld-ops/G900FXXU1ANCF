.class Lorg/chromium/chrome/browser/autofill/AutofillPopup$1;
.super Ljava/lang/Object;
.source "AutofillPopup.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/autofill/AutofillPopup;-><init>(Landroid/content/Context;Lorg/chromium/ui/ViewAndroidDelegate;Lorg/chromium/chrome/browser/autofill/AutofillPopup$AutofillPopupDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/AutofillPopup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/AutofillPopup;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillPopup;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->access$000(Lorg/chromium/chrome/browser/autofill/AutofillPopup;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillPopup;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->show()V

    :cond_0
    return-void
.end method
