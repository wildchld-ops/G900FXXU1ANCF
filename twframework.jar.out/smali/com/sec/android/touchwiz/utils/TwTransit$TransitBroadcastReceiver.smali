.class Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TwTransit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/utils/TwTransit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransitBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/utils/TwTransit;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/utils/TwTransit;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/utils/TwTransit;Lcom/sec/android/touchwiz/utils/TwTransit$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;-><init>(Lcom/sec/android/touchwiz/utils/TwTransit;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    const-string v1, "TwTransitBroadcastMessageIsCanceled"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/sec/android/touchwiz/utils/TwTransit;->mIsCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$402(Lcom/sec/android/touchwiz/utils/TwTransit;Z)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/utils/TwTransit;->reverseInternalIn(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/utils/TwTransit;->mReceiver:Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$802(Lcom/sec/android/touchwiz/utils/TwTransit;Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;)Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;

    return-void
.end method
