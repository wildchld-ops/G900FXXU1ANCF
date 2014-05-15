.class public Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;
.super Ljava/lang/Object;
.source "AutofillFormDeleteController.java"

# interfaces
.implements Landroid/app/IActivityController;


# instance fields
.field private mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

.field private mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUI()Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/high16 v1, 0x100

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->setAutofillFormDeleteActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->Initialise()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setFullScreen()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    return-void
.end method

.method public setParentActivity(Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    return-void
.end method

.method public setUi(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    return-void
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
