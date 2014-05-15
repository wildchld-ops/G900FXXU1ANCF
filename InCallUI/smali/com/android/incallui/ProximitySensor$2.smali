.class Lcom/android/incallui/ProximitySensor$2;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ProximitySensor;->onCoverStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ProximitySensor;


# direct methods
.method constructor <init>(Lcom/android/incallui/ProximitySensor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ProximitySensor$2;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$2;->this$0:Lcom/android/incallui/ProximitySensor;

    #calls: Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V
    invoke-static {v0}, Lcom/android/incallui/ProximitySensor;->access$100(Lcom/android/incallui/ProximitySensor;)V

    return-void
.end method
