.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;
.super Landroid/os/AsyncTask;
.source "MultiTabBrowserUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadClippedBitmap(Ljava/lang/ref/WeakReference;I)V
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

.field final synthetic val$handler:Ljava/lang/ref/WeakReference;

.field final synthetic val$tabId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;Ljava/lang/ref/WeakReference;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->val$handler:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->val$tabId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$400(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->val$tabId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->val$handler:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->val$handler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->val$handler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->val$handler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->val$handler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->cancel(Z)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$5;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
