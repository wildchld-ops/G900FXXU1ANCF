.class public Lcom/sec/android/app/sbrowser/preferences/ContexualContentPreference;
.super Landroid/preference/PreferenceFragment;
.source "ContexualContentPreference.java"


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ContexualContentPreference;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/ContexualContentPreference;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ContexualContentPreference;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ContexualContentPreference;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method
