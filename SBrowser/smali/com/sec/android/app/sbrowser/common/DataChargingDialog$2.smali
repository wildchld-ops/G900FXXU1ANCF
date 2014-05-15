.class Lcom/sec/android/app/sbrowser/common/DataChargingDialog$2;
.super Ljava/lang/Object;
.source "DataChargingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/DataChargingDialog$2;->this$0:Lcom/sec/android/app/sbrowser/common/DataChargingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    sget-object v2, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/DataChargingDialog$2;->this$0:Lcom/sec/android/app/sbrowser/common/DataChargingDialog;

    const-string v3, "data_charging_Setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "data_charging_checkbox"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/DataChargingDialog$2;->this$0:Lcom/sec/android/app/sbrowser/common/DataChargingDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->finish()V

    return-void
.end method
