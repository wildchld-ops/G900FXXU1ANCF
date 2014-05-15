.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;
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

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    #getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownX:I
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    #getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownY:I
    invoke-static {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v2

    #calls: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchDown(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;II)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postInvalidate()V

    return-void
.end method
