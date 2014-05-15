.class public Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;
.super Landroid/app/DialogFragment;
.source "ClearBrowsingDataDialogFragment.java"


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->getUI()Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getSelectAll()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->getUI()Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getSelectAll()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setClickable(Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;-><init>(Landroid/app/DialogFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->onDestroy()V

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method
