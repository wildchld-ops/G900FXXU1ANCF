.class Lcom/android/dialer/calllog/CallLogFragment$4;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
    .locals 5

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #setter for: Lcom/android/dialer/calllog/CallLogFragment;->mScrollState:I
    invoke-static {v0, p2}, Lcom/android/dialer/calllog/CallLogFragment;->access$502(Lcom/android/dialer/calllog/CallLogFragment;I)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->setScrollState(I)V

    if-nez p2, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment$4$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/calllog/CallLogFragment$4$1;-><init>(Lcom/android/dialer/calllog/CallLogFragment$4;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    invoke-virtual {v0, v4}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->sendEmptyMessage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq v0, p2, :cond_2

    if-ne v4, p2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->sendEmptyMessage(I)V

    goto :goto_0
.end method
