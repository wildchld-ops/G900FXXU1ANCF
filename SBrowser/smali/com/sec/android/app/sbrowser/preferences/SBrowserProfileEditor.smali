.class public Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditor;
.super Landroid/preference/PreferenceFragment;
.source "SBrowserProfileEditor.java"


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditor;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    return-void
.end method

.method public static closeEditor(Landroid/app/Activity;Landroid/view/View;Landroid/app/FragmentManager;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->closeEditor(Landroid/app/Activity;Landroid/view/View;Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditor;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditor;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditor;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p3}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditor;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->getUI()Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditor;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SBrowserProfileEditor;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->updateSaveMenuState()V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
