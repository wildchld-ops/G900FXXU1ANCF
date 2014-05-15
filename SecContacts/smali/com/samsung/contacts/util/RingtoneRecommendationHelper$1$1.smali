.class Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1$1;
.super Ljava/lang/Object;
.source "RingtoneRecommendationHelper.java"

# interfaces
.implements Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;

    iget-object v0, v0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    #getter for: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$500(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;

    iget-object v0, v0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    #getter for: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$500(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;

    iget-object v0, v0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    #getter for: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;
    invoke-static {v0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$600(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;

    iget-object v0, v0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    #getter for: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;
    invoke-static {v0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$600(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;->onCanceled()V

    :cond_1
    return-void
.end method

.method public onSelected(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;

    iget-object v0, v0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    #setter for: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mRecommendUri:Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$002(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;

    iget-object v0, v0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    #calls: Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->returnResult()V
    invoke-static {v0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->access$200(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)V

    return-void
.end method
