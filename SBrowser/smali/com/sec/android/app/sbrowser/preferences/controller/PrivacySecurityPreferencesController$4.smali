.class Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$4;
.super Ljava/lang/Object;
.source "PrivacySecurityPreferencesController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->imideoEULA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

.field final synthetic val$mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$4;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$4;->val$mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$4;->val$mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checked_imideo_eula"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "enable_video_link"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "apccepted_imideo_eula"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$4;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c02d3

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
