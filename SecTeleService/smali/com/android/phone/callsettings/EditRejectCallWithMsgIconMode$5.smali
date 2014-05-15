.class Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    new-instance v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;Landroid/content/Context;)V

    #setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageDlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$202(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageDlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$200(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    move-result-object v0

    const v1, 0x7f0908cb

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->setTitle(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageDlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$200(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->show()V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageDlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$200(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageDlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$200(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
