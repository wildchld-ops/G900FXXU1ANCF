.class Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler$1;
.super Landroid/os/Handler;
.source "SbrContentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;-><init>(Lorg/samsung/content/sbrowser/SbrContentSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;

.field final synthetic val$this$0:Lorg/samsung/content/sbrowser/SbrContentSettings;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;Lorg/samsung/content/sbrowser/SbrContentSettings;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler$1;->this$1:Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;

    iput-object p2, p0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler$1;->val$this$0:Lorg/samsung/content/sbrowser/SbrContentSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler$1;->this$1:Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->this$0:Lorg/samsung/content/sbrowser/SbrContentSettings;

    #getter for: Lorg/samsung/content/sbrowser/SbrContentSettings;->mContentSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentSettings;->access$000(Lorg/samsung/content/sbrowser/SbrContentSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler$1;->this$1:Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->this$0:Lorg/samsung/content/sbrowser/SbrContentSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentSettings;->syncToNativeOnUiThread()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler$1;->this$1:Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->this$0:Lorg/samsung/content/sbrowser/SbrContentSettings;

    const/4 v2, 0x0

    #setter for: Lorg/samsung/content/sbrowser/SbrContentSettings;->mIsSyncMessagePending:Z
    invoke-static {v0, v2}, Lorg/samsung/content/sbrowser/SbrContentSettings;->access$102(Lorg/samsung/content/sbrowser/SbrContentSettings;Z)Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler$1;->this$1:Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->this$0:Lorg/samsung/content/sbrowser/SbrContentSettings;

    #getter for: Lorg/samsung/content/sbrowser/SbrContentSettings;->mContentSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentSettings;->access$000(Lorg/samsung/content/sbrowser/SbrContentSettings;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
