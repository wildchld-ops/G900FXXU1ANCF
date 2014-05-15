.class Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$3;
.super Ljava/lang/Object;
.source "NetworkStateHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->showDialogWifiSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$3;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$3;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    #getter for: Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->access$000(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$3;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    #getter for: Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->access$000(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$3;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->access$002(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
