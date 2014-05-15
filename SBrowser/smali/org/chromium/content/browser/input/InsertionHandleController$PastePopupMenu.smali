.class Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;
.super Ljava/lang/Object;
.source "InsertionHandleController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/InsertionHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PastePopupMenu"
.end annotation


# instance fields
.field private mClipboardTextView:Landroid/widget/TextView;

.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContentView:Landroid/view/ViewGroup;

.field private mDividerImageView:Landroid/widget/ImageView;

.field private mPasteTextView:Landroid/widget/TextView;

.field private mPasteViewLayouts:[I

.field private mPasteViews:[Landroid/view/View;

.field private mPositionX:I

.field private mPositionY:I

.field final synthetic this$0:Lorg/chromium/content/browser/input/InsertionHandleController;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/InsertionHandleController;)V
    .locals 10

    const/4 v9, -0x2

    const/4 v8, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/widget/PopupWindow;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x10102c8

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v4, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSelectionToolTipFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020231

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v4, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v4, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Landroid/widget/LinearLayout;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object v3, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContentView:Landroid/view/ViewGroup;

    :cond_1
    const/4 v4, 0x4

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    array-length v4, v0

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    array-length v4, v0

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteViewLayouts:[I

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteViewLayouts:[I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    invoke-virtual {v1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x14t 0x3t 0x1t 0x1t
        0x15t 0x3t 0x1t 0x1t
        0x5et 0x3t 0x1t 0x1t
        0x5ft 0x3t 0x1t 0x1t
    .end array-data
.end method

.method private updateContent(Z)V
    .locals 14

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->viewIndex(Z)I

    move-result v8

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    aget-object v7, v10, v8

    if-nez v7, :cond_3

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteViewLayouts:[I

    aget v4, v10, v8

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    if-eqz v3, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unable to inflate TextEdit paste window"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez p1, :cond_2

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v0, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    float-to-int v10, v10

    mul-int/lit8 v10, v10, 0x4c

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSelectionToolTipFlag()Z

    move-result v10

    if-eqz v10, :cond_4

    const v10, 0x7f0400b0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContentView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    const v11, 0x7f0c0221

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080022

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020235

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v2, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    aput-object v7, v10, v8

    const v10, 0x7f0400ae

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mDividerImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mDividerImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContentView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mDividerImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v10, 0x7f0400b0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContentView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    const v11, 0x7f0c0222

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080022

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02022b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v1, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v11, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_4
    const v10, 0x7f0400b0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContentView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    const v11, 0x7f0c0221

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080022

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020235

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v2, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    aput-object v7, v10, v8

    const v10, 0x7f0400ae

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mDividerImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mDividerImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContentView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mDividerImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v10, 0x7f0400b0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContentView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    const v11, 0x7f0c0222

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080022

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02022b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v1, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v5, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    aput-object v7, v10, v8

    goto/16 :goto_0

    :cond_6
    iget-object v10, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v10, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method private viewIndex(Z)I
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/InsertionHandleController;->canPaste()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method hide()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method isShowing()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->paste()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->hide()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->pasteByClipboardEx()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->paste()V

    goto :goto_0
.end method

.method positionAtCursor()V
    .locals 18

    const/16 v1, 0x14

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;
    invoke-static {v13}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$100(Lorg/chromium/content/browser/input/InsertionHandleController;)Lorg/chromium/content/browser/input/HandleView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/chromium/content/browser/input/HandleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v13}, Lorg/chromium/content/browser/input/InsertionHandleController;->getLineHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v13}, Lorg/chromium/content/browser/input/InsertionHandleController;->getSelectPopupHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;
    invoke-static {v13}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$100(Lorg/chromium/content/browser/input/InsertionHandleController;)Lorg/chromium/content/browser/input/HandleView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/chromium/content/browser/input/HandleView;->getAdjustedPositionX()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionX:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;
    invoke-static {v13}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$100(Lorg/chromium/content/browser/input/InsertionHandleController;)Lorg/chromium/content/browser/input/HandleView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/chromium/content/browser/input/HandleView;->getAdjustedPositionY()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionY:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionY:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mParent:Landroid/view/View;
    invoke-static {v13}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$200(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v13}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v13

    invoke-virtual {v13}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v13

    invoke-virtual {v13}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v13

    float-to-int v13, v13

    sub-int v13, v14, v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionY:I

    :cond_0
    const/4 v12, 0x0

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mParent:Landroid/view/View;
    invoke-static {v13}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$200(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v13}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v13

    invoke-virtual {v13}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v13

    invoke-virtual {v13}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getActivityContext()Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "easy_mode_internet"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mParent:Landroid/view/View;
    invoke-static {v13}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$200(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v13}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v13

    invoke-virtual {v13}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v13

    invoke-virtual {v13}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getActivityContext()Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "easy_mode_switch"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    or-int v3, v14, v13

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mParent:Landroid/view/View;
    invoke-static {v13}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$200(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v9

    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContentView:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewGroup;->measure(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v10

    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionX:I

    div-int/lit8 v14, v10, 0x2

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionX:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionX:I

    if-gez v13, :cond_2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionX:I

    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionX:I

    add-int/2addr v13, v10

    if-le v13, v9, :cond_3

    sub-int v13, v9, v10

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionX:I

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionY:I

    sub-int/2addr v13, v7

    sub-int/2addr v13, v11

    sub-int/2addr v13, v1

    if-ge v11, v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionY:I

    sub-int/2addr v13, v7

    sub-int/2addr v13, v11

    sub-int/2addr v13, v1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionY:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->this$0:Lorg/chromium/content/browser/input/InsertionHandleController;

    #getter for: Lorg/chromium/content/browser/input/InsertionHandleController;->mParent:Landroid/view/View;
    invoke-static {v14}, Lorg/chromium/content/browser/input/InsertionHandleController;->access$200(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionX:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionY:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionY:I

    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->mPositionY:I

    goto :goto_1
.end method

.method show()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->updateContent(Z)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->positionAtCursor()V

    return-void
.end method
