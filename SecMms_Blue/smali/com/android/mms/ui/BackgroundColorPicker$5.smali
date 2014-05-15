.class Lcom/android/mms/ui/BackgroundColorPicker$5;
.super Ljava/lang/Object;
.source "BackgroundColorPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackgroundColorPicker;

.field final synthetic val$sent:Landroid/widget/GridView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/widget/GridView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$5;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iput-object p2, p0, Lcom/android/mms/ui/BackgroundColorPicker$5;->val$sent:Landroid/widget/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$5;->val$sent:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$5;->val$sent:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$5;->val$sent:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$5;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$5;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method
