.class public Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;
.super Ljava/lang/Object;
.source "ContactListSweepActionHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;


# instance fields
.field private mCallBackground:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHasEmailAddress:Z

.field private mHasPhoneNumber:Z

.field private mIsMessageAvailable:Z

.field private mIsVoiceCallAvailable:Z

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
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mLastDrawRectHeight:I

    iput v2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mLastDrawRectWidth:I

    iput-boolean v2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mStopDrawing:Z

    iput-object p1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ContactListSweepActionHandler"

    const-string v1, "Null Context in ContactListSweepActionHandler"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mIsVoiceCallAvailable:Z

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mIsMessageAvailable:Z

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e02e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mVisibleScrollBarPadding:I

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    :goto_2
    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mSweepActionBarLeftPadding:I

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0276

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0274

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    const-string v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mTypeface:Landroid/graphics/Typeface;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0275

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    goto/16 :goto_2
.end method

.method private drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 9

    const/high16 v8, 0x437f

    const/high16 v7, -0x4080

    const-string v5, "ContactListSweepActionHandler"

    const-string v6, "========= DIVYA drawSweepText ========="

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f80

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    new-instance v4, Landroid/graphics/Paint;

    const/16 v5, 0x101

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v5, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    iget v5, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    mul-float v5, v8, v0

    float-to-int v3, v5

    mul-float v5, v8, v0

    float-to-int v2, v5

    shl-int/lit8 v5, v3, 0x18

    const v6, 0xffffff

    add-int v3, v5, v6

    shl-int/lit8 v5, v2, 0x18

    add-int/lit8 v2, v5, 0x0

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x4040

    invoke-virtual {v4, v5, v7, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v5, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p1, p2, p4, p5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private setupDrawablesBounds(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v4, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v4, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mSweepActionBarLeftPadding:I

    iget-object v2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public getHasEmailAddress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mHasEmailAddress:Z

    return v0
.end method

.method public getHasPhoneNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    return v0
.end method

.method public onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-direct {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>()V

    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v5, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    iget-boolean v3, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mIsVoiceCallAvailable:Z

    if-nez v3, :cond_0

    iput-boolean v6, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mIsMessageAvailable:Z

    if-nez v3, :cond_1

    iput-boolean v6, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method public onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string v0, "ContactListSweepActionHandler"

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mIsVoiceCallAvailable:Z

    if-nez v0, :cond_1

    cmpg-float v0, p3, v4

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mIsMessageAvailable:Z

    if-nez v0, :cond_2

    cmpl-float v0, p3, v4

    if-gez v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mStopDrawing:Z

    if-eqz v0, :cond_3

    const-string v0, "ContactListSweepActionHandler"

    const-string v1, "onDrawSweepActionBar() is paused"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    if-ne p4, v7, :cond_8

    :cond_4
    :goto_1
    iget v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mLastDrawRectHeight:I

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mLastDrawRectWidth:I

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eq v0, v1, :cond_6

    :cond_5
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setupDrawablesBounds(I)V

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mLastDrawRectHeight:I

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mLastDrawRectWidth:I

    :cond_6
    cmpl-float v0, p3, v4

    if-nez v0, :cond_9

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->onListShouldDrawSelector(IFI)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    if-eqz v7, :cond_0

    invoke-virtual {p6}, Landroid/graphics/Canvas;->save()I

    move-result v8

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p6, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p6, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p6}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p6, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    :cond_9
    cmpl-float v0, p3, v4

    if-lez v0, :cond_e

    move v3, p3

    invoke-virtual {p6}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    neg-float v0, v3

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p6, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    invoke-virtual {p6, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v0, :cond_c

    const/4 v6, 0x1

    :cond_b
    :goto_2
    if-eqz v6, :cond_d

    iget-object v2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mMessageText:Ljava/lang/String;

    :goto_3
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_0

    :cond_c
    iget-boolean v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mHasEmailAddress:Z

    if-eqz v0, :cond_b

    const/4 v6, 0x1

    goto :goto_2

    :cond_d
    iget-object v2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_3

    :cond_e
    const/high16 v0, -0x4080

    mul-float v3, v0, p3

    invoke-virtual {p6}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

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

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_f
    invoke-virtual {p6, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p6}, Landroid/graphics/Canvas;->save()I

    move-result v8

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p6, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p6, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v0, :cond_10

    iget-object v2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    :goto_4
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_4
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

.method public setHasEmailAddress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mHasEmailAddress:Z

    return-void
.end method

.method public setHasPhoneNumber(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    return-void
.end method
