.class Lcom/android/settings/nfc/SBeam$1;
.super Ljava/lang/Object;
.source "SBeam.java"

# interfaces
.implements Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/SBeam;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/SBeam;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/SBeam;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "[SBeam]"

    const-string v1, "SBeam ON, createHelpStep2Dialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    #calls: Lcom/android/settings/nfc/SBeam;->createHelpStep2Dialog()V
    invoke-static {v0}, Lcom/android/settings/nfc/SBeam;->access$000(Lcom/android/settings/nfc/SBeam;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    #calls: Lcom/android/settings/nfc/SBeam;->createHelpDialog()V
    invoke-static {v0}, Lcom/android/settings/nfc/SBeam;->access$100(Lcom/android/settings/nfc/SBeam;)V

    goto :goto_0
.end method
