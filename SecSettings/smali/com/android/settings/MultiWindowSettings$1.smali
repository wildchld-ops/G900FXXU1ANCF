.class Lcom/android/settings/MultiWindowSettings$1;
.super Landroid/database/ContentObserver;
.source "MultiWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MultiWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiWindowSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MultiWindowSettings$1;->this$0:Lcom/android/settings/MultiWindowSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "MultiWindowSettings"

    const-string v1, "onChange() MULTI_WINDOW_SWITCH_CHANGED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings$1;->this$0:Lcom/android/settings/MultiWindowSettings;

    #getter for: Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/MultiWindowSettings;->access$100(Lcom/android/settings/MultiWindowSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MultiWindowSettings$1;->this$0:Lcom/android/settings/MultiWindowSettings;

    #getter for: Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/MultiWindowSettings;->access$000(Lcom/android/settings/MultiWindowSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings$1;->this$0:Lcom/android/settings/MultiWindowSettings;

    #getter for: Lcom/android/settings/MultiWindowSettings;->mTrayPosition:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/settings/MultiWindowSettings;->access$200(Lcom/android/settings/MultiWindowSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MultiWindowSettings$1;->this$0:Lcom/android/settings/MultiWindowSettings;

    #getter for: Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/MultiWindowSettings;->access$000(Lcom/android/settings/MultiWindowSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method
