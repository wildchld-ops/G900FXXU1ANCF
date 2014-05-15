.class Lcom/android/keyguard/MSimKeyguardSimPukView$5;
.super Landroid/os/Handler;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MSimKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPukView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$5;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$5;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/keyguard/MSimKeyguardSimPukView;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$800(Lcom/android/keyguard/MSimKeyguardSimPukView;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
