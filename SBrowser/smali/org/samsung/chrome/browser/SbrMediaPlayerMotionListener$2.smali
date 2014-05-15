.class Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$2;
.super Ljava/lang/Object;
.source "SbrMediaPlayerMotionListener.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;


# direct methods
.method constructor <init>(Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$2;->this$0:Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "SbrMediaPlayerMotionListener"

    const-string v1, "[HTML5]onMotionListener() : Turn Over. pause all vieos."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$2;->this$0:Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$2;->this$0:Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;

    #getter for: Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mNativeSbrMediaPlayerMotionListener:I
    invoke-static {v1}, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->access$000(Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;)I

    move-result v1

    #calls: Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->nativePauseMedia(I)V
    invoke-static {v0, v1}, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->access$100(Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
