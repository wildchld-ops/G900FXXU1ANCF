.class Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$2;
.super Ljava/lang/Object;
.source "RingtoneRecommendationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

.field final synthetic val$adapter:Landroid/widget/BaseAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;Landroid/widget/BaseAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$2;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    iput-object p2, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$2;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$2;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    #getter for: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mSelectedPosition:I
    invoke-static {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$000(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)I

    move-result v0

    if-eq v0, p2, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$2;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    #setter for: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mSelectedPosition:I
    invoke-static {v0, p2}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$002(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;I)I

    if-eq p2, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$2;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    #getter for: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$100(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$2;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    packed-switch p2, :pswitch_data_0

    const-string v0, "RingtoneRecommendationDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$2;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    const/4 v1, 0x0

    #calls: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->playRingtone(Z)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$200(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$2;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    #calls: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->playRingtone(Z)V
    invoke-static {v0, v2}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$200(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
