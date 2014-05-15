.class Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$9;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isPageLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->getEmbeddedHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->updateView(I)V

    :cond_0
    return-void
.end method
