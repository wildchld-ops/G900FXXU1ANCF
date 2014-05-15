.class Lcom/sec/android/app/sbrowser/common/DataChargingDialog$3;
.super Ljava/lang/Object;
.source "DataChargingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->show_checkbox_dialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/DataChargingDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/DataChargingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/DataChargingDialog$3;->this$0:Lcom/sec/android/app/sbrowser/common/DataChargingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/DataChargingDialog$3;->this$0:Lcom/sec/android/app/sbrowser/common/DataChargingDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/DataChargingDialog$3;->this$0:Lcom/sec/android/app/sbrowser/common/DataChargingDialog;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/DataChargingDialog$3;->this$0:Lcom/sec/android/app/sbrowser/common/DataChargingDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->finish()V

    return-void
.end method
