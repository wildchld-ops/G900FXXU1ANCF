.class Lcom/android/settings/settingssearch/SettingsSearchActivity$2;
.super Ljava/lang/Object;
.source "SettingsSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$2;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x42

    if-ne p2, v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$2;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    #getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$700(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$800()Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$800()Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v3

    iget v2, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "rowId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
