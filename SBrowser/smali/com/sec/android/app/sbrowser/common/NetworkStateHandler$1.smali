.class Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$1;
.super Ljava/lang/Thread;
.source "NetworkStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    sput-boolean v2, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mWifiAPListPopuped:Z

    return-void
.end method
