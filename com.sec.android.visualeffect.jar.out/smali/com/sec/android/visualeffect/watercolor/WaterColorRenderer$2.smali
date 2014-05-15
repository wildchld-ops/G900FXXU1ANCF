.class Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;
.super Ljava/lang/Object;
.source "WaterColorRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "mDefaultRunnable run, and toucn down()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$300()Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    iget-object v4, v3, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    iget-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    iget-object v5, v3, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    iget-object v0, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$402(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    #setter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->calledScreenTurnedOn:Z
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$502(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;Z)Z

    return-void
.end method
