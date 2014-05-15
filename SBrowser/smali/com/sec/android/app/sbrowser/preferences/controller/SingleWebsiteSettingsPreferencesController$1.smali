.class Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController$1;
.super Ljava/lang/Object;
.source "SingleWebsiteSettingsPreferencesController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/preferences/Website$StoredDataClearedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStoredDataCleared()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "clear_data"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;

    #calls: Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->popBackIfNoSettings()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->access$000(Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;)V

    return-void
.end method
