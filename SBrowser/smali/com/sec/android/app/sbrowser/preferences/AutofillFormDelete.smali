.class public Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;
.super Landroid/app/Activity;
.source "AutofillFormDelete.java"


# instance fields
.field private delPos:I

.field mAutofillFormDeletePhoneUi:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;

.field mAutofillFormDeleteUi:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

.field mAutofillFormDeleteXlargeUi:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mAutofillFormDeletePhoneUi:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mAutofillFormDeleteXlargeUi:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->delPos:I

    return-void
.end method

.method private createUi()Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-class v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mAutofillFormDeleteXlargeUi:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mAutofillFormDeleteXlargeUi:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    const-class v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mAutofillFormDeletePhoneUi:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mAutofillFormDeletePhoneUi:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getController()Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    return-object v0
.end method

.method public getDelPos()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->delPos:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "AUTO_FILL_PROFILE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->delPos:I

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;-><init>(Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->createUi()Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mAutofillFormDeleteUi:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mAutofillFormDeleteUi:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->setUi(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->setParentActivity(Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->onCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->setFullScreen()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;->onResume()V

    return-void
.end method
