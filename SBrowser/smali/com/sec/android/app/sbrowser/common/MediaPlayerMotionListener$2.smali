.class Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$2;
.super Ljava/lang/Object;
.source "MediaPlayerMotionListener.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$000(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$000(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$000(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    #setter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$102(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;Lorg/chromium/content/browser/ContentView;)Lorg/chromium/content/browser/ContentView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$100(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "MediaPlayerMotionListener"

    const-string v1, "onMotionListener() : Turn Over. pause all vieos."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
