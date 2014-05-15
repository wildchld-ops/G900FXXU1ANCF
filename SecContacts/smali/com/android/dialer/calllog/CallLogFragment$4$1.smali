.class Lcom/android/dialer/calllog/CallLogFragment$4$1;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment$4;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/calllog/CallLogFragment$4;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mScrollState:I
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$500(Lcom/android/dialer/calllog/CallLogFragment;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CallLogFragment"

    const-string v1, "mAdonScrollStateChangedapter notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
