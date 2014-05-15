.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
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

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    #calls: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->clearToolBox()V
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    #calls: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z
    invoke-static {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    #calls: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    return-void
.end method
