.class Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$2;
.super Ljava/lang/Object;
.source "PrivacySecurityPreferencesController.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "apccepted_imideo_eula"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_Video_Link:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$200(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_Video_Link:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$200(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->imideoEULA()V

    :goto_0
    return v5

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$300(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setImideoDebugMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->LOGTAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Imideo service ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->LOGTAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Imideo service OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$300(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setImideoDebugMode(I)V

    goto :goto_0
.end method
