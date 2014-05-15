.class Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread$1;
.super Ljava/lang/Object;
.source "SettingsSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread$1;->this$1:Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Lcom/android/settings/settingssearch/SettingsSearchManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$102(Lcom/android/settings/settingssearch/SettingsSearchManager;)Lcom/android/settings/settingssearch/SettingsSearchManager;

    :cond_0
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$302(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Lcom/android/settings/settingssearch/SettingsSearchManager;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread$1;->this$1:Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$300()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/settingssearch/SettingsSearchActivity;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$400(Lcom/android/settings/settingssearch/SettingsSearchActivity;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
