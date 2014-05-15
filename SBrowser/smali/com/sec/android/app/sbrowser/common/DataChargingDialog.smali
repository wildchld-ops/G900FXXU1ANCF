.class public Lcom/sec/android/app/sbrowser/common/DataChargingDialog;
.super Landroid/app/Activity;
.source "DataChargingDialog.java"


# static fields
.field private static final NETWORK_STATE_MOBILE:I = 0x1

.field private static final NETWORK_STATE_NONE:I = 0x0

.field private static final NETWORK_STATE_WIFI:I = 0x2

.field public static adb:Landroid/app/AlertDialog$Builder;

.field public static dontShowAgain:Landroid/widget/CheckBox;


# instance fields
.field intent:Landroid/content/Intent;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->showDialogDataCharging()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public showDialogDataCharging()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->checkNetwork(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->show_checkbox_dialog(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->show_checkbox_dialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public show_checkbox_dialog(I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0325

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0326

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sput-object v4, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->adb:Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f040031

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a0114

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    sput-object v4, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->dontShowAgain:Landroid/widget/CheckBox;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01d1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/sbrowser/common/DataChargingDialog$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog$1;-><init>(Lcom/sec/android/app/sbrowser/common/DataChargingDialog;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c007c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/sbrowser/common/DataChargingDialog$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog$2;-><init>(Lcom/sec/android/app/sbrowser/common/DataChargingDialog;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->adb:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/sec/android/app/sbrowser/common/DataChargingDialog$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog$3;-><init>(Lcom/sec/android/app/sbrowser/common/DataChargingDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0327

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/DataChargingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0328

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method
