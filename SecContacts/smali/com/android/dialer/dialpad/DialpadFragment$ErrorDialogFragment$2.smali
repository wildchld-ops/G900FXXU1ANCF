.class Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment$2;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-virtual {v1, v0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
