.class Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$5;
.super Ljava/lang/Object;
.source "NetworkSettingsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->showDialogPDPResetInRoaming()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$5;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PDP_RESET_TEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionNum"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$5;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "NetworkSettingsHandler"

    const-string v2, "showDialogPDPResetInRoaming: PDP_RESET_TEST"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
