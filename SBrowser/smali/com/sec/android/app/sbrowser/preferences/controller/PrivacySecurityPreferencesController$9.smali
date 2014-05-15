.class Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$9;
.super Ljava/lang/Object;
.source "PrivacySecurityPreferencesController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->imideoEulaSecondPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$9;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$9;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$9;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checked_imideo_eula"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "enable_video_link"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "apccepted_imideo_eula"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$9;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->LOGTAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Imideo service ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$9;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$300(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;->setImideoDebugMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$9;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_Video_Link:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$200(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$9;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mEnable_Video_Link:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$200(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$9;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->LOGTAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mEnable_Video_Link is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
