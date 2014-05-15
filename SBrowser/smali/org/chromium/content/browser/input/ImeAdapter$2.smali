.class Lorg/chromium/content/browser/input/ImeAdapter$2;
.super Landroid/os/Handler;
.source "ImeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ImeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ImeAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ImeAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "ImeAdapter"

    const-string v1, "Unknown Message Type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    #getter for: Lorg/chromium/content/browser/input/ImeAdapter;->mIsJavaScriptSuspended:Z
    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->access$300(Lorg/chromium/content/browser/input/ImeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    #getter for: Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I
    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->access$400(Lorg/chromium/content/browser/input/ImeAdapter;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    #setter for: Lorg/chromium/content/browser/input/ImeAdapter;->mIsJavaScriptSuspended:Z
    invoke-static {v0, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->access$302(Lorg/chromium/content/browser/input/ImeAdapter;Z)Z

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    #getter for: Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I
    invoke-static {v1}, Lorg/chromium/content/browser/input/ImeAdapter;->access$400(Lorg/chromium/content/browser/input/ImeAdapter;)I

    move-result v1

    #calls: Lorg/chromium/content/browser/input/ImeAdapter;->nativeInformJSDeferrState(IZ)V
    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->access$500(Lorg/chromium/content/browser/input/ImeAdapter;IZ)V

    const-string v0, "ImeAdapter"

    const-string v1, "KEYLAG : Resuming javaScript"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
