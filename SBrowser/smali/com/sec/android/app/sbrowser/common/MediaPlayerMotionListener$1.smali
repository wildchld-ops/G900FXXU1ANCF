.class Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlayerMotionListener.java"


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.PALM_DOWN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$000(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$000(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$000(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    #setter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$102(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;Lorg/chromium/content/browser/ContentView;)Lorg/chromium/content/browser/ContentView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$100(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "MediaPlayerMotionListener"

    const-string v3, "BroadcastReceiver : Palm down. pause all vieos."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mIsHeadsetPlugged:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$200(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$000(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$000(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$000(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    #setter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$102(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;Lorg/chromium/content/browser/ContentView;)Lorg/chromium/content/browser/ContentView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$100(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "MediaPlayerMotionListener"

    const-string v4, "BroadcastReceiver : Headset Un-plugged. pause all vieos."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #setter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mIsHeadsetPlugged:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$202(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;Z)Z

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;

    #setter for: Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mIsHeadsetPlugged:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->access$202(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;Z)Z

    goto :goto_0
.end method
