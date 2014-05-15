.class public Lorg/samsung/content/sbrowser/SbrWebSelectDialog;
.super Landroid/app/Dialog;
.source "SbrWebSelectDialog.java"


# static fields
.field public static final BUTTON_DONE:I = 0x3

.field public static final BUTTON_NEXT:I = 0x1

.field public static final BUTTON_PREV:I = 0x2

.field static final LOGTAG:Ljava/lang/String; = "WebSelectDialog"


# instance fields
.field mContentPanel:Landroid/widget/LinearLayout;

.field private mCurrentOrientation:I

.field private mDoneButton:Landroid/view/View;

.field private mDoneButtonEnabled:Z

.field private mDoneInputListener:Landroid/view/View$OnClickListener;

.field private mLandscapeViewHeight:I

.field private mListView:Landroid/widget/ListView;

.field private mNextButton:Landroid/view/View;

.field private mNextButtonEnabled:Z

.field private mNextInputListener:Landroid/view/View$OnClickListener;

.field private mPortraitViewHeight:I

.field private mPrevButton:Landroid/view/View;

.field private mPrevButtonEnabled:Z

.field private mPrevInputListener:Landroid/view/View$OnClickListener;

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0d002b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mNextButtonEnabled:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mPrevButtonEnabled:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mDoneButtonEnabled:Z

    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mTmpLocation:[I

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mPortraitViewHeight:I

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mLandscapeViewHeight:I

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mCurrentOrientation:I

    invoke-virtual {p0, v2}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getImeAdapterObserver()Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->setIsDropDownVisible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WebSelectDialog"

    const-string v3, "Invalid dialog dismiss"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onChromeViewSizeChanged()V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mCurrentOrientation:I

    if-eq v2, v3, :cond_0

    const v2, 0x7f0a02b7

    invoke-virtual {p0, v2}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mCurrentOrientation:I

    if-eqz v1, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mLandscapeViewHeight:I

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mPortraitViewHeight:I

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mPortraitViewHeight:I

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mLandscapeViewHeight:I

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v1, 0x7f0400be

    invoke-virtual {p0, v1}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->setContentView(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->rebuildView()V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->onChromeViewSizeChanged()V

    return-void
.end method

.method public rebuildView()V
    .locals 7

    const/4 v6, -0x1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f0a02b5

    invoke-virtual {p0, v4}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mNextInputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mNextButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mNextButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFocusable(Z)V

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v4, 0xbb6

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mNextButton:Landroid/view/View;

    const v4, 0x7f0a02b4

    invoke-virtual {p0, v4}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mPrevInputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mPrevButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mPrevButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFocusable(Z)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mPrevButton:Landroid/view/View;

    const v4, 0x7f0a02b6

    invoke-virtual {p0, v4}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mDoneInputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mDoneButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mDoneButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFocusable(Z)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mDoneButton:Landroid/view/View;

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    const v4, 0x7f0a02b8

    invoke-virtual {p0, v4}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method setButtonEnabled(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-boolean p2, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mNextButtonEnabled:Z

    goto :goto_0

    :pswitch_1
    iput-boolean p2, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mPrevButtonEnabled:Z

    goto :goto_0

    :pswitch_2
    iput-boolean p2, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mDoneButtonEnabled:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-object p2, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mNextInputListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mPrevInputListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mDoneInputListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setListView(Landroid/widget/ListView;)V
    .locals 2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    const v1, 0x7f0a02b8

    invoke-virtual {p0, v1}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method public show()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getImeAdapterObserver()Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->setIsDropDownVisible(Z)V

    goto :goto_0
.end method
