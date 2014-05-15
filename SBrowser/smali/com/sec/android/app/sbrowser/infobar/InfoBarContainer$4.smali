.class Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$4;
.super Ljava/lang/Object;
.source "InfoBarContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->showAndAnimateNextInfoBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

.field final synthetic val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$4;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$4;->val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$4;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$602(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$4;->val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$4;->val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->dismissAlertInfo()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$4;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$700(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$4;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$702(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method
