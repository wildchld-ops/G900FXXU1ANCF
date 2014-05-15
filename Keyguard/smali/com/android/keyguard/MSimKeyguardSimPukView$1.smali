.class Lcom/android/keyguard/MSimKeyguardSimPukView$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPukView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPukView;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #calls: Lcom/android/keyguard/MSimKeyguardSimPukView;->getSimPukRetry()I
    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$300(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v1

    #setter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I
    invoke-static {v0, v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$202(Lcom/android/keyguard/MSimKeyguardSimPukView;I)I

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->doHapticKeyClick()V

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->verifyPasswordAndUnlock()V

    return-void
.end method
