.class Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$6;
.super Ljava/lang/Object;
.source "ToolBarController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->reSetDefaultPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

.field final synthetic val$homepage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$6;->val$homepage:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$6;->val$homepage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setHomePage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReSetDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->access$500(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReSetDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->access$502(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
