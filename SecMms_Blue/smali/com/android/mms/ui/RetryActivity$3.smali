.class Lcom/android/mms/ui/RetryActivity$3;
.super Ljava/lang/Object;
.source "RetryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RetryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RetryActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RetryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    sget v0, Lcom/android/mms/transaction/SmsReceiverService;->sRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/transaction/SmsReceiverService;->sRetryCount:I

    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    iget-object v1, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    #getter for: Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/RetryActivity;->access$100(Lcom/android/mms/ui/RetryActivity;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    #getter for: Lcom/android/mms/ui/RetryActivity;->mError:I
    invoke-static {v3}, Lcom/android/mms/ui/RetryActivity;->access$200(Lcom/android/mms/ui/RetryActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    const-class v5, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RetryActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity$3;->this$0:Lcom/android/mms/ui/RetryActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/RetryActivity;->finish()V

    return-void
.end method
