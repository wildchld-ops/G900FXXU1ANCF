.class Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$3;
.super Landroid/database/ContentObserver;
.source "ToolbarSwipeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setHomeScreenModeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$3;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$3;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$3;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$400(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;->getHomeScreenMode()I

    move-result v1

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHomeScreenMode:I
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$302(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;I)I

    const-string v0, "ToolbarSwipeHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAB_SWIPE Home screen mode is changed new mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$3;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHomeScreenMode:I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$300(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$3;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->notifyDataSetChanged(I)V

    return-void
.end method
