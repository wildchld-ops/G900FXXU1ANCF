.class Lcom/android/mms/util/TelephonyPermission$1;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "TelephonyPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/TelephonyPermission;->startOperationModeMonitor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/TelephonyPermission;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/util/TelephonyPermission;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/TelephonyPermission$1;->this$0:Lcom/android/mms/util/TelephonyPermission;

    iput-object p2, p0, Lcom/android/mms/util/TelephonyPermission$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .locals 2

    const-string v0, "Mms/TelephonyPermission"

    const-string v1, "########## OP_WRITE_SMS mode changed, get permission forcely #########"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/TelephonyPermission;->getPermissionWithoutRef()Z

    invoke-static {}, Lcom/android/mms/util/TelephonyPermission;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDefaultAppChanged(Landroid/content/Context;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission$1;->this$0:Lcom/android/mms/util/TelephonyPermission;

    #calls: Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsAppInternal()Z
    invoke-static {v0}, Lcom/android/mms/util/TelephonyPermission;->access$100(Lcom/android/mms/util/TelephonyPermission;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->checkBadgeCount(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission$1;->this$0:Lcom/android/mms/util/TelephonyPermission;

    invoke-virtual {v0}, Lcom/android/mms/util/TelephonyPermission;->clearCache()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowWriteMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->checkBadgeCount(Landroid/content/Context;)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/prioritysender/SmartAssistant;->removeAllCards(Landroid/content/Context;)Z

    const-string v0, "Mms/TelephonyPermission"

    const-string v1, "samsung msg is not default app. close self"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->killMessage()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    goto :goto_1
.end method
