.class Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$3;
.super Ljava/lang/Object;
.source "ClearBrowsingDataDialogFragmentController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->access$200(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    move-result-object v0

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->setButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->access$200(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->adapter:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->setCountselectall(I)V

    return-void
.end method
