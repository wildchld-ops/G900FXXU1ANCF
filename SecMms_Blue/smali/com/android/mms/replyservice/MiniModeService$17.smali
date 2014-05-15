.class Lcom/android/mms/replyservice/MiniModeService$17;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/replyservice/MiniModeService;->initOverlayFrameWindow()V
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

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mIsMinimized:Z
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$2800(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/replyservice/MiniModeService;->mIsMinimized:Z
    invoke-static {v0, v1}, Lcom/android/mms/replyservice/MiniModeService;->access$2802(Lcom/android/mms/replyservice/MiniModeService;Z)Z

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v0}, Lcom/android/mms/replyservice/MiniModeService;->onMinimized()Z

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/minimode/MainView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$2900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService;->mSavedWindowAttributesForMinimize:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v1, v1, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->MINIMIZED_TITLE_BAR_WIDTH:I
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$3000(Lcom/android/mms/replyservice/MiniModeService;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$3100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$2900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mTitleView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$3200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mTitleView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$3200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$2900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBarTouchListener:Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$3300(Lcom/android/mms/replyservice/MiniModeService;)Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$3400(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v1, v1, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$17;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$2900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_2
    return-void
.end method
