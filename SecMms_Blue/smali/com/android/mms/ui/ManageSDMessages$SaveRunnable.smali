.class Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSDMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSDMessages;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ManageSDMessages;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->finish:Z
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1200(Lcom/android/mms/ui/ManageSDMessages;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1300(Lcom/android/mms/ui/ManageSDMessages;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-virtual {v2}, Lcom/android/mms/ui/ManageSDMessages;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    long-to-int v3, v0

    #calls: Lcom/android/mms/ui/ManageSDMessages;->copyToPhoneMemory(I)Z
    invoke-static {v2, v3}, Lcom/android/mms/ui/ManageSDMessages;->access$1400(Lcom/android/mms/ui/ManageSDMessages;I)Z

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mUncheckItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1500(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v2

    long-to-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1300(Lcom/android/mms/ui/ManageSDMessages;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$800(Lcom/android/mms/ui/ManageSDMessages;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #setter for: Lcom/android/mms/ui/ManageSDMessages;->finish:Z
    invoke-static {v2, v5}, Lcom/android/mms/ui/ManageSDMessages;->access$1202(Lcom/android/mms/ui/ManageSDMessages;Z)Z

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$800(Lcom/android/mms/ui/ManageSDMessages;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
