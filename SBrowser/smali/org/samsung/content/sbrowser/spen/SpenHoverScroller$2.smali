.class Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$2;
.super Ljava/lang/Object;
.source "SpenHoverScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$2;->this$0:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$2;->this$0:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    #getter for: Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->access$500(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;)Landroid/view/Choreographer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$2;->this$0:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$2;->this$0:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    #getter for: Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->access$500(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;)Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->doVSync(J)V

    :cond_0
    return-void
.end method
