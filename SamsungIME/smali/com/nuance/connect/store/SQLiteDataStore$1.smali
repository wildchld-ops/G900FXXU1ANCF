.class Lcom/nuance/connect/store/SQLiteDataStore$1;
.super Ljava/lang/Object;
.source "SQLiteDataStore.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/store/SQLiteDataStore;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/store/SQLiteDataStore;


# direct methods
.method constructor <init>(Lcom/nuance/connect/store/SQLiteDataStore;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/store/SQLiteDataStore$1;->this$0:Lcom/nuance/connect/store/SQLiteDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const-wide/16 v5, 0x2710

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore$1;->this$0:Lcom/nuance/connect/store/SQLiteDataStore;

    #getter for: Lcom/nuance/connect/store/SQLiteDataStore;->lastUsed:J
    invoke-static {v1}, Lcom/nuance/connect/store/SQLiteDataStore;->access$100(Lcom/nuance/connect/store/SQLiteDataStore;)J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore$1;->this$0:Lcom/nuance/connect/store/SQLiteDataStore;

    #getter for: Lcom/nuance/connect/store/SQLiteDataStore;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nuance/connect/store/SQLiteDataStore;->access$200(Lcom/nuance/connect/store/SQLiteDataStore;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore$1;->this$0:Lcom/nuance/connect/store/SQLiteDataStore;

    #calls: Lcom/nuance/connect/store/SQLiteDataStore;->close()V
    invoke-static {v1}, Lcom/nuance/connect/store/SQLiteDataStore;->access$300(Lcom/nuance/connect/store/SQLiteDataStore;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
