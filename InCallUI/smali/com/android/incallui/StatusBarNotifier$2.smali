.class Lcom/android/incallui/StatusBarNotifier$2;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;

.field final synthetic val$allowFullScreenIntent:Z

.field final synthetic val$callList:Lcom/android/incallui/CallList;

.field final synthetic val$state:Lcom/android/incallui/InCallPresenter$InCallState;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/CallList;ZLcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$callList:Lcom/android/incallui/CallList;

    iput-boolean p3, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$allowFullScreenIntent:Z

    iput-object p4, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$state:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$callList:Lcom/android/incallui/CallList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$callList:Lcom/android/incallui/CallList;

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->existsLiveCall()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    #getter for: Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/incallui/StatusBarNotifier;->access$100(Lcom/android/incallui/StatusBarNotifier;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    #getter for: Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/incallui/StatusBarNotifier;->access$100(Lcom/android/incallui/StatusBarNotifier;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    const/16 v4, 0x64

    if-lt v1, v4, :cond_2

    invoke-virtual {v3, v1}, Landroid/os/PersonaManager;->setPhoneCaller(I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.knox.bridge"

    const-string v6, "com.sec.knox.bridge.activity.BlackScreen"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v7, v2}, Landroid/os/PersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iget-boolean v5, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$allowFullScreenIntent:Z

    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$state:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v7, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$callList:Lcom/android/incallui/CallList;

    #calls: Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/incallui/StatusBarNotifier;->access$200(Lcom/android/incallui/StatusBarNotifier;ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->switchUser(I)Z

    goto :goto_0
.end method
