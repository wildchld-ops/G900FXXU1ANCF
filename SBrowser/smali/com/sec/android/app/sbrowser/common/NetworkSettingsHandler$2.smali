.class Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$2;
.super Ljava/lang/Object;
.source "NetworkSettingsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->showDialogSelectMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$2;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$2;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    #calls: Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->isAirplaneModeOn()Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->access$000(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NetworkSettingsHandler"

    const-string v2, "showDialogSelectMessage: AirplaneMode is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$2;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    #getter for: Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->access$100(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$2;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$2;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    const v3, 0x7f0c0191

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->access$102(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$2;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    #getter for: Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->access$100(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$2;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    #calls: Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->showDialogSelectMessage()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->access$200(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$2;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    #calls: Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->isRoamingArea()Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->access$300(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$2;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->startRoamingSettingActivity()Z

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14a0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$2;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
