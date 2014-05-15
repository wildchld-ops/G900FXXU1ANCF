.class Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$4;
.super Landroid/os/AsyncTask;
.source "SBrowserSmartcardWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->deinitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$4;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const-string v0, "SBrowserSmartcardWrapper"

    const-string v1, "deinitialize() mSmartCardHelper.deinitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$4;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mSmartCardHelper:Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->access$200(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;)Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;->unregisterProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SBrowserSmartcardWrapper"

    const-string v1, "deinitialize() mSmartCardHelper.unregisterProvider success"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$4;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->isEnabled:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->access$300(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$4;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mSmartCardHelper:Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->access$200(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;)Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;->deinitialize()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    const-string v0, "SBrowserSmartcardWrapper"

    const-string v1, "SBrowserSmartcardWrapper > onPostExecute > mSmartCardHelper.onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$4;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    #setter for: Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->access$402(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;)Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$4;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->shouldInit:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->access$500(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$4;->init()V

    :cond_0
    return-void
.end method
