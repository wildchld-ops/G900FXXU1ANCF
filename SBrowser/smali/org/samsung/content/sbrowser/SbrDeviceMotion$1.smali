.class Lorg/samsung/content/sbrowser/SbrDeviceMotion$1;
.super Ljava/lang/Object;
.source "SbrDeviceMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/content/sbrowser/SbrDeviceMotion;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/SbrDeviceMotion;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/SbrDeviceMotion;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion$1;->this$0:Lorg/samsung/content/sbrowser/SbrDeviceMotion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion$1;->this$0:Lorg/samsung/content/sbrowser/SbrDeviceMotion;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #calls: Lorg/samsung/content/sbrowser/SbrDeviceMotion;->setHandler(Landroid/os/Handler;)V
    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->access$000(Lorg/samsung/content/sbrowser/SbrDeviceMotion;Landroid/os/Handler;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
