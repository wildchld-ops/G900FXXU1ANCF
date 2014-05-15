.class Lcom/android/settings/fingerprint/FingerPrintManagerUI$1;
.super Ljava/lang/Object;
.source "FingerPrintManagerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerUI;->showFingerprintLockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerUI;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerUI;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
