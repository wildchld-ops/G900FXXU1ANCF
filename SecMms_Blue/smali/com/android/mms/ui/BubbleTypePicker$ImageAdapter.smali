.class Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "BubbleTypePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BubbleTypePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mType:I

.field final synthetic this$0:Lcom/android/mms/ui/BubbleTypePicker;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BubbleTypePicker;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mDensity:F

    iput p3, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_H_ID:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_H_ID:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-ne v0, v1, :cond_4

    :cond_3
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    if-nez p2, :cond_a

    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    :cond_0
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v5, 0x430a

    iget v6, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mDensity:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x42d2

    iget v7, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-boolean v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    :cond_1
    :try_start_0
    sget-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_H_ID:[I

    aget v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    if-eq p1, v4, :cond_5

    :cond_3
    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-nez v4, :cond_10

    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    if-ne p1, v4, :cond_10

    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-virtual {v4}, Lcom/android/mms/ui/BubbleTypePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-boolean v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #getter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z
    invoke-static {v4}, Lcom/android/mms/ui/BubbleTypePicker;->access$800(Lcom/android/mms/ui/BubbleTypePicker;)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_12

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v5, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v6, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v6, v6, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    sget-object v7, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v7, v7

    iget-object v8, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v8, v8, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    iget-object v9, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v9, v9, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_GRID_HEIGHT:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/mms/ui/BubbleTypePicker;->calculateScrollPosition(IIII)I

    move-result v5

    iput v5, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    :goto_4
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v6, v6, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    const/4 v5, 0x0

    #setter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z
    invoke-static {v4, v5}, Lcom/android/mms/ui/BubbleTypePicker;->access$802(Lcom/android/mms/ui/BubbleTypePicker;Z)Z

    :cond_6
    :goto_5
    add-int/lit8 v3, p1, 0x1

    const/4 v0, 0x0

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-virtual {v5}, Lcom/android/mms/ui/BubbleTypePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c034f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_6
    if-eqz v0, :cond_9

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    return-object v2

    :cond_a
    move-object v2, p2

    check-cast v2, Landroid/widget/ImageView;

    goto/16 :goto_0

    :cond_b
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v5, 0x42f4

    iget v6, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mDensity:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x42bc

    iget v7, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    const-string v4, "Mms/BubbleTypePicker"

    const-string v5, "OutOfMemoryError caught @ imageView.setImageResource and throw"

    invoke-static {v4, v5, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_c
    sget-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_H_ID:[I

    aget v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_d
    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-eqz v4, :cond_e

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    :cond_e
    sget-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    aget v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_f
    sget-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    aget v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_10
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-virtual {v4}, Lcom/android/mms/ui/BubbleTypePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_11
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    goto/16 :goto_4

    :cond_12
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #getter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z
    invoke-static {v4}, Lcom/android/mms/ui/BubbleTypePicker;->access$900(Lcom/android/mms/ui/BubbleTypePicker;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_6

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v5, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v6, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v6, v6, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    sget-object v7, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v7, v7

    iget-object v8, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v8, v8, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    iget-object v9, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v9, v9, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_GRID_HEIGHT:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/mms/ui/BubbleTypePicker;->calculateScrollPosition(IIII)I

    move-result v5

    iput v5, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    :goto_7
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v6, v6, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    const/4 v5, 0x0

    #setter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z
    invoke-static {v4, v5}, Lcom/android/mms/ui/BubbleTypePicker;->access$902(Lcom/android/mms/ui/BubbleTypePicker;Z)Z

    goto/16 :goto_5

    :cond_13
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    goto :goto_7

    :cond_14
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #getter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z
    invoke-static {v4}, Lcom/android/mms/ui/BubbleTypePicker;->access$800(Lcom/android/mms/ui/BubbleTypePicker;)Z

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_16

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-nez v4, :cond_16

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v5, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v6

    sget-object v7, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v7, v7

    iget-object v8, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v8, v8, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    iget-object v9, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v9, v9, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_GRID_WIDTH:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/mms/ui/BubbleTypePicker;->calculateScrollPosition(IIII)I

    move-result v5

    iput v5, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    :goto_8
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v5, v5, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    const/4 v5, 0x0

    #setter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z
    invoke-static {v4, v5}, Lcom/android/mms/ui/BubbleTypePicker;->access$802(Lcom/android/mms/ui/BubbleTypePicker;Z)Z

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    const/4 v5, 0x0

    #setter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z
    invoke-static {v4, v5}, Lcom/android/mms/ui/BubbleTypePicker;->access$802(Lcom/android/mms/ui/BubbleTypePicker;Z)Z

    goto/16 :goto_5

    :cond_15
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    goto :goto_8

    :cond_16
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #getter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z
    invoke-static {v4}, Lcom/android/mms/ui/BubbleTypePicker;->access$900(Lcom/android/mms/ui/BubbleTypePicker;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_6

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v5, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v6

    sget-object v7, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v7, v7

    iget-object v8, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v8, v8, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    iget-object v9, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v9, v9, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_GRID_WIDTH:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/mms/ui/BubbleTypePicker;->calculateScrollPosition(IIII)I

    move-result v5

    iput v5, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    :goto_9
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v5, v5, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    const/4 v5, 0x0

    #setter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z
    invoke-static {v4, v5}, Lcom/android/mms/ui/BubbleTypePicker;->access$802(Lcom/android/mms/ui/BubbleTypePicker;Z)Z

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    const/4 v5, 0x0

    #setter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z
    invoke-static {v4, v5}, Lcom/android/mms/ui/BubbleTypePicker;->access$902(Lcom/android/mms/ui/BubbleTypePicker;Z)Z

    goto/16 :goto_5

    :cond_17
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    goto :goto_9

    :cond_18
    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_19

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-virtual {v5}, Lcom/android/mms/ui/BubbleTypePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c034f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6
.end method
