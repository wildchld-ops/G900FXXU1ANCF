.class Lcom/samsung/mms/ui/AutoSendingTestActivity$5;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/AutoSendingTestActivity;->createRecipientDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$5;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$5;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$600(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$5;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #calls: Lcom/samsung/mms/ui/AutoSendingTestActivity;->getAddressPreference()[Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$1400(Lcom/samsung/mms/ui/AutoSendingTestActivity;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$5;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$600(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/widget/EditText;

    move-result-object v2

    aget-object v3, v1, p2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$5;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$600(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
