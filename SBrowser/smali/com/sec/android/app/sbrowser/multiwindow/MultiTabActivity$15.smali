.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$15;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$15;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "client_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_secret"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mypackage"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$15;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSP_VER"

    const-string v2, "OSP_02"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v2, "ADD_ACCOUNT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$15;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$15;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setSignedInWithDialog(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$15;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->signInDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$15;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->signInDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
