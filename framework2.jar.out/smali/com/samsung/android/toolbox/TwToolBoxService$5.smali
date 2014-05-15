.class Lcom/samsung/android/toolbox/TwToolBoxService$5;
.super Landroid/content/BroadcastReceiver;
.source "TwToolBoxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxService;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxService$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxService$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxService$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    #getter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$000(Lcom/samsung/android/toolbox/TwToolBoxService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "toolbox_apps"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageList:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$202(Lcom/samsung/android/toolbox/TwToolBoxService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxService$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxService$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    #getter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$000(Lcom/samsung/android/toolbox/TwToolBoxService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "toolbox_earphones_only"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_1
    #setter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mEarphonesOnly:Z
    invoke-static {v3, v1}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$302(Lcom/samsung/android/toolbox/TwToolBoxService;Z)Z

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    #calls: Lcom/samsung/android/toolbox/TwToolBoxService;->reloadContentObserver()V
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$500(Lcom/samsung/android/toolbox/TwToolBoxService;)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
