.class Lcom/android/dialer/calllog/CallLogFragment$UpdateOnEntry;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateOnEntry"
.end annotation


# instance fields
.field public mResetMissed:Z

.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$UpdateOnEntry;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/dialer/calllog/CallLogFragment$UpdateOnEntry;->mResetMissed:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x258

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$UpdateOnEntry;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment$UpdateOnEntry;->mResetMissed:Z

    #calls: Lcom/android/dialer/calllog/CallLogFragment;->updateOnTransition(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$2800(Lcom/android/dialer/calllog/CallLogFragment;ZZ)V

    return-void
.end method
