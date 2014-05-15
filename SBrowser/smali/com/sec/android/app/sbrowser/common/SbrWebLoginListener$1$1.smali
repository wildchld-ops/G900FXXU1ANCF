.class Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;
.super Ljava/lang/Object;
.source "SbrWebLoginListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "SbrWebLoginListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v2, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event Result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v2, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "event Status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v2, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    #setter for: Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mFPScanDone:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->access$102(Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_1

    const-string v0, "SbrWebLoginListener"

    const-string v1, " Scanning is Successfull or Password is correct "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    #calls: Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->NativeOrScriptLogin(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->access$200(Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    :cond_2
    const-string v0, "SbrWebLoginListener"

    const-string v1, " Back Key is pressed "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->access$300(Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SbrWebLoginListener"

    const-string v1, " canGoBack"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "SbrWebLoginListener"

    const-string v1, "Cannot Go Back !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
