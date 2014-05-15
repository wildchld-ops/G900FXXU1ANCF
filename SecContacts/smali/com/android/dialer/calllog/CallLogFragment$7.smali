.class Lcom/android/dialer/calllog/CallLogFragment$7;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment;->showDeleteConfirmDlg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;

.field final synthetic val$iOpIndex:I


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$7;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iput p2, p0, Lcom/android/dialer/calllog/CallLogFragment$7;->val$iOpIndex:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment$7;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$7;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v4, 0x5

    if-le v0, v4, :cond_1

    move v0, v1

    :goto_0
    #setter for: Lcom/android/dialer/calllog/CallLogFragment;->mShowDelProgressDlg:Z
    invoke-static {v3, v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$2402(Lcom/android/dialer/calllog/CallLogFragment;Z)Z

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$7;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    new-instance v3, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogFragment$7;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {v3, v4}, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    #setter for: Lcom/android/dialer/calllog/CallLogFragment;->preformScanThread:Lcom/android/dialer/calllog/CallLogFragment$PerformScan;
    invoke-static {v0, v3}, Lcom/android/dialer/calllog/CallLogFragment;->access$2502(Lcom/android/dialer/calllog/CallLogFragment;Lcom/android/dialer/calllog/CallLogFragment$PerformScan;)Lcom/android/dialer/calllog/CallLogFragment$PerformScan;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$7;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->preformScanThread:Lcom/android/dialer/calllog/CallLogFragment$PerformScan;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$2500(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment$PerformScan;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Integer;

    iget v3, p0, Lcom/android/dialer/calllog/CallLogFragment$7;->val$iOpIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$7;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mShowDelProgressDlg:Z
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$2400(Lcom/android/dialer/calllog/CallLogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$7;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #calls: Lcom/android/dialer/calllog/CallLogFragment;->showProgress()V
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$2600(Lcom/android/dialer/calllog/CallLogFragment;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method
