.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$33;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->createDialog()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$33;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$33;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setReturnTabDefault()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$33;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isDialogVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$33;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isCheckBoxChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$33;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$33;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isCheckBoxChecked:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setDoNotShowIncognitoCheck(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$33;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->createNewIncognitoTab()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$33;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finish()V

    return-void
.end method
