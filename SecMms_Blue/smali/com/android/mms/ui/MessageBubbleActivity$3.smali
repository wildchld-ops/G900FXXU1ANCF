.class Lcom/android/mms/ui/MessageBubbleActivity$3;
.super Ljava/lang/Object;
.source "MessageBubbleActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBubbleActivity;->setWindowResizingEventHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageBubbleActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBubbleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageBubbleActivity$3;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 12

    const/4 v11, 0x0

    const-string v7, "Mms/MessageBubbleActivity"

    const-string v8, "onGlobalLayout()"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mms/ui/MessageBubbleActivity$3;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    const v8, 0x7f0b018a

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v7, p0, Lcom/android/mms/ui/MessageBubbleActivity$3;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    const v8, 0x7f0b0182

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v7, p0, Lcom/android/mms/ui/MessageBubbleActivity$3;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageBubbleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/mms/ui/MessageBubbleActivity$3;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageBubbleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0046

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    if-lt v1, v6, :cond_1

    if-lt v0, v5, :cond_1

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableBackgroundStyleWithImage()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/ui/MessageBubbleActivity$3;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    iget v7, v7, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    if-nez v7, :cond_2

    :goto_1
    return-void

    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/MessageBubbleActivity$3;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    iget v7, v7, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v8, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne v7, v8, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/ui/MessageBubbleActivity$3;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    invoke-virtual {v7, v11}, Lcom/android/mms/ui/MessageBubbleActivity;->setBackground(Z)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->releaseBackgroundBitmapDrawable()V

    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/MessageBubbleActivity$3;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    iget-object v7, v7, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageBubbleActivity$3;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageBubbleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v9, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    iget-object v10, p0, Lcom/android/mms/ui/MessageBubbleActivity$3;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    iget v10, v10, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v7, p0, Lcom/android/mms/ui/MessageBubbleActivity$3;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    iget-object v7, v7, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    iget-object v7, p0, Lcom/android/mms/ui/MessageBubbleActivity$3;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    iget-object v7, v7, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
