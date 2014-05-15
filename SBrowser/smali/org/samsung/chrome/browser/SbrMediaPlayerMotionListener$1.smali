.class Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$1;
.super Landroid/content/BroadcastReceiver;
.source "SbrMediaPlayerMotionListener.java"


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

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$1;->this$0:Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SbrMediaPlayerMotionListener"

    const-string v2, "[HTML5]BroadcastReceiver : Palm down. pause all vieos."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$1;->this$0:Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;

    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$1;->this$0:Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;

    #getter for: Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mNativeSbrMediaPlayerMotionListener:I
    invoke-static {v2}, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->access$000(Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;)I

    move-result v2

    #calls: Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->nativePauseMedia(I)V
    invoke-static {v1, v2}, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->access$100(Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SbrMediaPlayerMotionListener"

    const-string v2, "[HTML5]BroadcastReceiver : Headset Un-plugged. pause all vieos."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$1;->this$0:Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;

    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$1;->this$0:Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;

    #getter for: Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mNativeSbrMediaPlayerMotionListener:I
    invoke-static {v2}, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->access$000(Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;)I

    move-result v2

    #calls: Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->nativePauseMedia(I)V
    invoke-static {v1, v2}, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->access$100(Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;I)V

    goto :goto_0
.end method
