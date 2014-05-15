.class Lcom/android/settings/easymode/EasyModeApp$2;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/easymode/EasyModeApp;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/easymode/EasyModeApp;


# direct methods
.method constructor <init>(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$000(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v3

    const-string v6, "easy_mode_switch"

    invoke-virtual {v3, v6}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$100(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v3, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK onClick mPrevModeState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mModeState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v7}, Lcom/android/settings/easymode/EasyModeApp;->access$200(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK onClick isDefaultEasyLauncher : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #calls: Lcom/android/settings/easymode/EasyModeApp;->isDefaultEasyLauncher()Z
    invoke-static {v7}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #calls: Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$400(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_select_all"

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$500(Lcom/android/settings/easymode/EasyModeApp;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$200(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #calls: Lcom/android/settings/easymode/EasyModeApp;->checkLeastOnEasyMode()Z
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0908e6

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    :goto_1
    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$200(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3, v5}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$000(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeEnabler;->startStandardMode()V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$000(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeEnabler;->startLauncher()V

    goto :goto_1

    :cond_2
    if-ne v2, v4, :cond_3

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$200(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #calls: Lcom/android/settings/easymode/EasyModeApp;->saveEasyModeApps()V
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$700(Lcom/android/settings/easymode/EasyModeApp;)V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3, v4}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->setLargeFont()V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$000(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeEnabler;->startEasyMode()V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$000(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeEnabler;->startLauncher()V

    goto :goto_1

    :cond_3
    if-ne v2, v4, :cond_5

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$200(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #calls: Lcom/android/settings/easymode/EasyModeApp;->isDefaultEasyLauncher()Z
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3, v5}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$000(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeEnabler;->startLauncher()V

    goto :goto_1

    :cond_5
    if-nez v2, :cond_7

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$200(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #calls: Lcom/android/settings/easymode/EasyModeApp;->saveEasyModeApps()V
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$700(Lcom/android/settings/easymode/EasyModeApp;)V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #calls: Lcom/android/settings/easymode/EasyModeApp;->isDefaultEasyLauncher()Z
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3, v4}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    #getter for: Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;
    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$000(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeEnabler;->startLauncher()V

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto/16 :goto_1
.end method
