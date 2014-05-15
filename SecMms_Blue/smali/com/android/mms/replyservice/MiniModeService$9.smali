.class Lcom/android/mms/replyservice/MiniModeService$9;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/replyservice/MiniModeService;->endDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/replyservice/MiniModeService;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/MiniModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v1, v1, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->x:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v1, v1, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->y:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v2, v2, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
