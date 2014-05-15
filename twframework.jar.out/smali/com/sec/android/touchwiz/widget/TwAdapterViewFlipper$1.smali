.class Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;
.super Landroid/content/BroadcastReceiver;
.source "TwAdapterViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;

    #setter for: Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mUserPresent:Z
    invoke-static {v1, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->access$002(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;Z)Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;

    #calls: Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning()V
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->access$100(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mUserPresent:Z
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->access$002(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;Z)Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;

    #calls: Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning(Z)V
    invoke-static {v1, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->access$200(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;Z)V

    goto :goto_0
.end method
