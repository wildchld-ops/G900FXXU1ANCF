.class Lcom/android/dialer/CallDetailActivity$1;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;
    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity;->access$100(Lcom/android/dialer/CallDetailActivity;)Lcom/samsung/contacts/util/ImsLowSignalHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->isLowSignal()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;
    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity;->access$100(Lcom/android/dialer/CallDetailActivity;)Lcom/samsung/contacts/util/ImsLowSignalHelper;

    move-result-object v0

    const v1, 0x7f0e0402

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->showErrorDialog(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-boolean v0, v0, Lcom/android/dialer/CallDetailActivity;->keyPressed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/dialer/CallDetailActivity;->keyPressed:Z

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
