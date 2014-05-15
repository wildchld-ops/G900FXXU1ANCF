.class public abstract Lcom/sec/android/app/sbrowser/preferences/controller/DialogFragmentController;
.super Ljava/lang/Object;
.source "DialogFragmentController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;
.implements Lcom/sec/android/app/sbrowser/preferences/controller/IDialogFragmentController;


# instance fields
.field protected mDialogFragment:Landroid/app/DialogFragment;


# direct methods
.method public constructor <init>(Landroid/app/DialogFragment;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DialogFragmentController;->mDialogFragment:Landroid/app/DialogFragment;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public abstract onClick(Landroid/content/DialogInterface;I)V
.end method

.method public abstract onClick(Landroid/content/DialogInterface;IZ)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
