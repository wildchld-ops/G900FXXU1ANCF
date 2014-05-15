.class public Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditorContainerActivity;
.super Landroid/preference/PreferenceActivity;
.source "SBrowserProfileEditorContainerActivity.java"


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditorContainerActivity;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditorContainerActivity;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditorContainerActivity;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditorContainerActivity;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
