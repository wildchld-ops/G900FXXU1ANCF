.class Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter$1;
.super Ljava/lang/Object;
.source "BackgroundColorPicker.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter$1;->this$1:Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter$1;->this$1:Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/BackgroundColorPicker;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->access$002(Lcom/android/mms/ui/BackgroundColorPicker;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter$1;->this$1:Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/BackgroundColorPicker;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->access$002(Lcom/android/mms/ui/BackgroundColorPicker;Z)Z

    return-void
.end method
