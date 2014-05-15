.class public Lcom/sec/android/app/sbrowser/preferences/SyncWithPCDialogFragment;
.super Landroid/app/DialogFragment;
.source "SyncWithPCDialogFragment.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/SyncWithPCDialogFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SyncWithPCDialogFragment;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SyncWithPCDialogFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getCurrentActiveSBrowserMainActivityContextIdString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->showSyncWithPcDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method
