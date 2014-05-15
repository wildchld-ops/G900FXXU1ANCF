.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initializePrivilegedApp(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    #getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    #getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    #calls: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->screenCapture()V
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
