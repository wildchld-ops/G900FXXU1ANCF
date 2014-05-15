.class public Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;
.super Ljava/lang/Object;
.source "SBrowserProfileEditorContainerController.java"


# instance fields
.field private mActivity:Landroid/preference/PreferenceActivity;

.field private mDialogActivity:Lcom/sec/android/app/sbrowser/common/WindowLayoutControl;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->mActivity:Landroid/preference/PreferenceActivity;

    return-void
.end method

.method private updateWindowLayout()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->mActivity:Landroid/preference/PreferenceActivity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->mDialogActivity:Lcom/sec/android/app/sbrowser/common/WindowLayoutControl;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/WindowLayoutControl;->updateWindowLayout(Landroid/app/Activity;Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->updateWindowLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditor;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditor;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    new-instance v2, Lcom/sec/android/app/sbrowser/common/WindowLayoutControl;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/common/WindowLayoutControl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->mDialogActivity:Lcom/sec/android/app/sbrowser/common/WindowLayoutControl;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->updateWindowLayout()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v2

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SBrowserProfileEditorContainerController;->updateWindowLayout()V

    return-void
.end method
