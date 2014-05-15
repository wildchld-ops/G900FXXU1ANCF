.class Lcom/samsung/dialer/widget/CallLogListFragment$1;
.super Ljava/lang/Object;
.source "CallLogListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/widget/CallLogListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/widget/CallLogListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/widget/CallLogListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/widget/CallLogListFragment$1;->this$0:Lcom/samsung/dialer/widget/CallLogListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/widget/CallLogListFragment$1;->this$0:Lcom/samsung/dialer/widget/CallLogListFragment;

    iget-object v0, v0, Lcom/samsung/dialer/widget/CallLogListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v1, p0, Lcom/samsung/dialer/widget/CallLogListFragment$1;->this$0:Lcom/samsung/dialer/widget/CallLogListFragment;

    iget-object v1, v1, Lcom/samsung/dialer/widget/CallLogListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
