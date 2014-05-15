.class Lcom/samsung/mms/ui/AutoSendingTestActivity$2;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/AutoSendingTestActivity;->showDialogPassword(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$2;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$500()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$500()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$500()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$502(Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$2;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    invoke-virtual {v0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->finish()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
