.class public Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;
.super Ljava/lang/Object;
.source "CallLogListSweepActionHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;


# static fields
.field private static isVoLTEEnabled:Z


# instance fields
.field private mCallBackground:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHasPhoneNumber:Z

.field private mIsMessageAvailable:Z

.field private mLastDrawRectHeight:I

.field private mLastDrawRectWidth:I

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mMessageBackground:Landroid/graphics/drawable/Drawable;

.field private mMessageIcon:Landroid/graphics/drawable/Drawable;

.field private mMessageText:Ljava/lang/String;

.field private mNoNumberText:Ljava/lang/String;

.field private mStopDrawing:Z

.field private mSweepAactionBbarRightPadding:I

.field private mSweepActionBarLeftPadding:I

.field private mSweepActionBarTextSize:I

.field private mSweepActionBarTopPadding:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mVisibleScrollBarPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->isVoLTEEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 6

    const v5, 0x7f0b00af

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mHasPhoneNumber:Z

    iput-boolean v4, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mStopDrawing:Z

    iput v4, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mLastDrawRectHeight:I

    iput v4, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mLastDrawRectWidth:I

    iput-object p1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mIsMessageAvailable:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tab-pager-calllog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getVolteEnabled()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->isVoLTEEnabled:Z

    :cond_0
    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    sget-boolean v2, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->isVoLTEEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0e02e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallText:Ljava/lang/String;

    const-string v2, "CallLogListSweepActionHandler"

    const-string v3, "========= DIVYA true constructor ========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mVisibleScrollBarPadding:I

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mSweepActionBarTopPadding:I

    :goto_1
    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mSweepActionBarLeftPadding:I

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mSweepActionBarTextSize:I

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0276

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageText:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0274

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    const-string v2, "sans-serif-light"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mTypeface:Landroid/graphics/Typeface;

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0275

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallText:Ljava/lang/String;

    const-string v2, "CallLogListSweepActionHandler"

    const-string v3, "========= DIVYA false constructor ========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mSweepActionBarTopPadding:I

    goto/16 :goto_1
.end method

.method private drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 8

    const/high16 v6, 0x437f

    const/high16 v7, 0x3f80

    const/high16 v0, 0x3f80

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    new-instance v4, Landroid/graphics/Paint;

    const/16 v5, 0x101

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v5, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mSweepActionBarTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    mul-float v5, v6, v0

    float-to-int v3, v5

    mul-float v5, v6, v0

    float-to-int v2, v5

    shl-int/lit8 v5, v3, 0x18

    const v6, 0xffffff

    add-int v3, v5, v6

    shl-int/lit8 v5, v2, 0x18

    add-int/lit8 v2, v5, 0x0

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x4040

    invoke-virtual {v4, v5, v7, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v5, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p1, p2, p4, p5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private setupDrawablesBounds(II)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, p2, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, p2, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mSweepActionBarLeftPadding:I

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public getHasPhoneNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mHasPhoneNumber:Z

    return v0
.end method

.method public onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .locals 9

    const/4 v5, 0x0

    const-string v6, "CallLogListSweepActionHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDefineSweepAction: ItemIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "CallLogListSweepActionHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDefineSweepAction: ListView="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "CallLogListSweepActionHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDefineSweepAction: ChildCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-direct {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>()V

    iget-object v6, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v7, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v4, v5

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const v6, 0x7f0800c9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisableEmergencyCall()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v4, v5

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_1

    :cond_3
    const v6, 0x7f0800ba

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    iput v5, v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    iget-boolean v5, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mIsMessageAvailable:Z

    if-nez v5, :cond_0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    goto :goto_0

    :cond_4
    move-object v4, v5

    goto :goto_0
.end method

.method public onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string v0, "CallLogListSweepActionHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawSweepActionBar() / itemIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sweepProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sweepState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rect.height====>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    if-ne p4, v7, :cond_2

    :cond_0
    :goto_0
    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mIsMessageAvailable:Z

    if-nez v0, :cond_3

    cmpl-float v0, p3, v4

    if-ltz v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mLastDrawRectHeight:I

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mLastDrawRectWidth:I

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eq v0, v1, :cond_5

    :cond_4
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->setupDrawablesBounds(II)V

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mLastDrawRectHeight:I

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mLastDrawRectWidth:I

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mStopDrawing:Z

    if-eqz v0, :cond_6

    const-string v0, "CallLogListSweepActionHandler"

    const-string v1, "onDrawSweepActionBar() is paused"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    cmpl-float v0, p3, v4

    if-nez v0, :cond_7

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->onListShouldDrawSelector(IFI)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v7, :cond_1

    invoke-virtual {p6}, Landroid/graphics/Canvas;->save()I

    move-result v8

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p6, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p6, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p6}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget-object v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p6, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :cond_7
    cmpl-float v0, p3, v4

    if-lez v0, :cond_9

    move v3, p3

    invoke-virtual {p6}, Landroid/graphics/Canvas;->save()I

    move-result v8

    neg-float v0, v3

    iget-object v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p6, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p6, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mMessageText:Ljava/lang/String;

    :goto_2
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const/high16 v0, -0x4080

    mul-float v3, v0, p3

    invoke-virtual {p6}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget-object v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    invoke-virtual {p6, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p6, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p6}, Landroid/graphics/Canvas;->save()I

    move-result v8

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p6, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p6, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mCallText:Ljava/lang/String;

    :goto_3
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget v0, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_3
.end method

.method public onListShouldDrawSelector(IFI)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHasPhoneNumber(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->mHasPhoneNumber:Z

    return-void
.end method
