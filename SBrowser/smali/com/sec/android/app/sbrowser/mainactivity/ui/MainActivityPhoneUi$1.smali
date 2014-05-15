.class Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$1;
.super Landroid/os/Handler;
.source "MainActivityPhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isPageLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isUrlBarActive:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0, v2, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setUrlBarActive(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->startCapturingToolBarBitmap(Z)V

    :cond_0
    return-void
.end method
