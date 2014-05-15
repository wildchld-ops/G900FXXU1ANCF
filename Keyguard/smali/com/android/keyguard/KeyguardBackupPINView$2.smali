.class Lcom/android/keyguard/KeyguardBackupPINView$2;
.super Ljava/lang/Object;
.source "KeyguardBackupPINView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardBackupPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardBackupPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardBackupPINView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    #getter for: Lcom/android/keyguard/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardBackupPINView;->access$000(Lcom/android/keyguard/KeyguardBackupPINView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    #getter for: Lcom/android/keyguard/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardBackupPINView;->access$000(Lcom/android/keyguard/KeyguardBackupPINView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
