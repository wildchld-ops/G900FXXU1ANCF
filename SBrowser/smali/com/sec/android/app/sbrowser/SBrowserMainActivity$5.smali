.class Lcom/sec/android/app/sbrowser/SBrowserMainActivity$5;
.super Ljava/lang/Thread;
.source "SBrowserMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$5;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$5;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$5;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    #getter for: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$000(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "current_url"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
