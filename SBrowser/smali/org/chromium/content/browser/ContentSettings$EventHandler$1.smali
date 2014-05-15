.class Lorg/chromium/content/browser/ContentSettings$EventHandler$1;
.super Landroid/os/Handler;
.source "ContentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentSettings$EventHandler;-><init>(Lorg/chromium/content/browser/ContentSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/ContentSettings$EventHandler;

.field final synthetic val$this$0:Lorg/chromium/content/browser/ContentSettings;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentSettings$EventHandler;Landroid/os/Looper;Lorg/chromium/content/browser/ContentSettings;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentSettings$EventHandler$1;->this$1:Lorg/chromium/content/browser/ContentSettings$EventHandler;

    iput-object p3, p0, Lorg/chromium/content/browser/ContentSettings$EventHandler$1;->val$this$0:Lorg/chromium/content/browser/ContentSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentSettings$EventHandler$1;->this$1:Lorg/chromium/content/browser/ContentSettings$EventHandler;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentSettings$EventHandler;->this$0:Lorg/chromium/content/browser/ContentSettings;

    #getter for: Lorg/chromium/content/browser/ContentSettings;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentSettings;->access$000(Lorg/chromium/content/browser/ContentSettings;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentSettings$EventHandler$1;->this$1:Lorg/chromium/content/browser/ContentSettings$EventHandler;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentSettings$EventHandler;->this$0:Lorg/chromium/content/browser/ContentSettings;

    #getter for: Lorg/chromium/content/browser/ContentSettings;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentSettings;->access$000(Lorg/chromium/content/browser/ContentSettings;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->updateMultiTouchZoomSupport()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
