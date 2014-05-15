.class Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;
.super Landroid/os/Handler;
.source "RingtoneRecommendationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/util/RingtoneRecommendationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "RingtoneRecommendationHelper"

    const-string v1, "Nothing selected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "RingtoneRecommendationHelper"

    const-string v1, "Ringtone does not support recommendation"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    iget-object v1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    #getter for: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$100(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mRecommendUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$002(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    #calls: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->returnResult()V
    invoke-static {v0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$200(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "RingtoneRecommendationHelper"

    const-string v1, "Ringtone supports recommendation"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    #getter for: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$300(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    #getter for: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$100(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    #getter for: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mOffset:I
    invoke-static {v2}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$400(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)I

    move-result v2

    new-instance v3, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1$1;-><init>(Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->show(Landroid/app/FragmentManager;Landroid/net/Uri;ILcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    iget-object v1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    #getter for: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$300(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    #getter for: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$300(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0366

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$502(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
