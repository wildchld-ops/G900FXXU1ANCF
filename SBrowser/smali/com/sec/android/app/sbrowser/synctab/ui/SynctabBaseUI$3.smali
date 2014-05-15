.class Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$3;
.super Ljava/lang/Object;
.source "SynctabBaseUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->startTabSyncing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->access$100(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;)Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->access$100(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;)Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->access$100(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;)Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->finishActivityWithResult(I)V

    :cond_1
    return-void
.end method
