.class Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonEnableBoradcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mIsActiveSimDisable:Z
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$2000(Lcom/android/phone/NetworkModePreference;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkModePreference"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "action.ButtonEnable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v1}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v1}, Lcom/android/phone/NetworkModePreference;->checkAndSetEnabled()V

    goto :goto_0
.end method
