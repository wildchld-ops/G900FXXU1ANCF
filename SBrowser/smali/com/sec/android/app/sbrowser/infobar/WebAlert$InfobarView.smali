.class Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;
.super Landroid/widget/LinearLayout;
.source "WebAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobar/WebAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfobarView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobar/WebAlert;Landroid/content/Context;)V
    .locals 11

    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;->this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400b6

    invoke-virtual {v4, v5, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    sget-object v4, Lcom/sec/android/app/sbrowser/infobar/WebAlert$4;->$SwitchMap$com$sec$android$app$sbrowser$infobar$WebAlert$AlertInfoType:[I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->getAlertInfoType()Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v4, 0x7f0a02a0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->getIconResourceId()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/ImageView;

    check-cast v2, Landroid/graphics/Bitmap;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_1
    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f80

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->createWebAlertView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    check-cast v2, Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->isIconInCenter()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0a029f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->isCloseButtonShown()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0a02a1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c02f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView$1;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView$1;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/ImageView;

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
