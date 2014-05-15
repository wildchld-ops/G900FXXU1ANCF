.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    instance-of v3, p1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_4

    move-object v2, p1

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-nez v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$500(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v3, v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return v4

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$600(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/diotek/ime/implement/setting/ConnectSetting;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$400(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/widget/Toast;

    move-result-object v3

    const v5, 0x7f0d0051

    invoke-virtual {v3, v5}, Landroid/widget/Toast;->setText(I)V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$400(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$500(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_3
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v3, v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$600(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)I

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/diotek/ime/implement/setting/ConnectSetting;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    #getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3
.end method
