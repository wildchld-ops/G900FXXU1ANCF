.class Lcom/android/mms/ui/MessageUtils$9$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageUtils$9;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$9;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$9$1;->this$0:Lcom/android/mms/ui/MessageUtils$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$9$1;->this$0:Lcom/android/mms/ui/MessageUtils$9;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$9;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$9$1;->this$0:Lcom/android/mms/ui/MessageUtils$9;

    iget-object v1, v1, Lcom/android/mms/ui/MessageUtils$9;->val$address:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$9$1;->this$0:Lcom/android/mms/ui/MessageUtils$9;

    iget-object v2, v2, Lcom/android/mms/ui/MessageUtils$9;->val$mmsId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$9$1;->this$0:Lcom/android/mms/ui/MessageUtils$9;

    iget v3, v3, Lcom/android/mms/ui/MessageUtils$9;->val$status:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$9$1;->this$0:Lcom/android/mms/ui/MessageUtils$9;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$9;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$9$1;->this$0:Lcom/android/mms/ui/MessageUtils$9;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$9;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
