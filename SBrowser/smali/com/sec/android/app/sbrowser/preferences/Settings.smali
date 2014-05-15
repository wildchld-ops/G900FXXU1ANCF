.class public Lcom/sec/android/app/sbrowser/preferences/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# instance fields
.field public header:Landroid/preference/PreferenceActivity$Header;

.field private mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->onBuildHeaders(Ljava/util/List;Landroid/preference/PreferenceActivity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/Settings;->setMultiPane(Z)V

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->onDestroy()V

    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 8

    const/4 v7, 0x1

    const-string v4, "CscFeature_Web_DisableBookmarkSync"

    invoke-static {v4}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_1

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->getContext()Landroid/preference/PreferenceActivity;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string v0, "default"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->getContext()Landroid/preference/PreferenceActivity;

    move-result-object v4

    const-string v5, "default"

    const-string v6, ""

    invoke-static {v4, v5, v6, v3}, Landroid/os/PersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-nez v1, :cond_4

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    if-ne p2, v7, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    sget-boolean v4, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccountSignedUp:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    sget-object v4, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccount:Ljava/lang/String;

    if-eqz v4, :cond_0

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    sget v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mSelectedId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signup:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->checkStatus()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->header:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->header:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->header:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signup:Landroid/preference/PreferenceActivity$Header;

    :cond_2
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->onResume()V

    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->getListAdapter()Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Settings;->mSettingsController:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->setSelectedHeaderID(Landroid/preference/PreferenceActivity$Header;)V

    return-void
.end method
