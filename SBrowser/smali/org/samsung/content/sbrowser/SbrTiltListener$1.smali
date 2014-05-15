.class Lorg/samsung/content/sbrowser/SbrTiltListener$1;
.super Ljava/lang/Object;
.source "SbrTiltListener.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/SbrTiltListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/SbrTiltListener;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/SbrTiltListener;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrTiltListener$1;->this$0:Lorg/samsung/content/sbrowser/SbrTiltListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener$1;->this$0:Lorg/samsung/content/sbrowser/SbrTiltListener;

    #calls: Lorg/samsung/content/sbrowser/SbrTiltListener;->onMREvent(Landroid/hardware/motion/MREvent;)V
    invoke-static {v0, p1}, Lorg/samsung/content/sbrowser/SbrTiltListener;->access$000(Lorg/samsung/content/sbrowser/SbrTiltListener;Landroid/hardware/motion/MREvent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method
