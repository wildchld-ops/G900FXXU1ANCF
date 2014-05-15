.class Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
.super Ljava/lang/Object;
.source "CmasReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/CmasReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmasDialogData"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field msgId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/transaction/CmasReceiverService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/CmasReceiverService;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->msgId:Ljava/lang/String;

    return-void
.end method
