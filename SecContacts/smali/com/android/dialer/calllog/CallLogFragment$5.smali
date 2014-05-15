.class Lcom/android/dialer/calllog/CallLogFragment$5;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment;->setSweepActionEnabled(Z)V
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

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$5;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CallLogFragment"

    const-string v1, "after 700ms, trigger setSweepActionEnabled"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$5;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #calls: Lcom/android/dialer/calllog/CallLogFragment;->updateSweepActionFeasibility()V
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$1000(Lcom/android/dialer/calllog/CallLogFragment;)V

    return-void
.end method
