.class Lcom/android/dialer/dialpad/DialpadFragment$2;
.super Landroid/os/Handler;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    #getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$100(Lcom/android/dialer/dialpad/DialpadFragment;)Lcom/samsung/contacts/util/ImsLowSignalHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->isImsOn()Z

    move-result v1

    #calls: Lcom/android/dialer/dialpad/DialpadFragment;->updateCallIcon(Z)V
    invoke-static {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$200(Lcom/android/dialer/dialpad/DialpadFragment;Z)V

    :cond_0
    return-void
.end method
