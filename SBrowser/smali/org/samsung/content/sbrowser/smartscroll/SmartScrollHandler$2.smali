.class Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler$2;
.super Ljava/lang/Object;
.source "SmartScrollHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->access$000(Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;)Landroid/view/Choreographer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->access$000(Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;)Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->doVSync(J)V

    :cond_0
    return-void
.end method
