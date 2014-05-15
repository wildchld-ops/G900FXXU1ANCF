.class public Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;
.super Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;
.source "TwSeekBarSplit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;,
        Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static bUseCustomContentDescription:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForegroundDraw:Z

.field private mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

.field private mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

.field private mSeekBarMessage:Ljava/lang/String;

.field private mSeekThumbFontPainter:Landroid/graphics/Paint;

.field private mSplitDrawable:Landroid/graphics/drawable/Drawable;

.field private mSplitHeight:I

.field private mSplitOffset:I

.field private mSplitWidth:I

.field mTextRect:Landroid/graphics/Rect;

.field private mTextWidth:I

.field private mTouchTrackingForegroundDraw:Z

.field private misQuickPanleInstance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->bUseCustomContentDescription:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/16 v5, 0xd7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mForegroundDraw:Z

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTouchTrackingForegroundDraw:Z

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->misQuickPanleInstance:Z

    const-string v1, "Seek control"

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekBarMessage:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mTheme:I

    if-nez v1, :cond_0

    const v1, 0x20201f1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setBackgroundDrawable(I)V

    const v1, 0x20201f8

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgressDrawable(I)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2020220

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2020232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTextRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    const/high16 v2, 0x420c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v1, "Roboto"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41f0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTextWidth:I

    const/high16 v1, 0x4180

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitOffset:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekBarMessage:Ljava/lang/String;

    return-void

    :cond_0
    const v1, 0x20201f2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setBackgroundDrawable(I)V

    const v1, 0x20201f9

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgressDrawable(I)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2020221

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2020233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method


# virtual methods
.method protected getProgressWidth()I
    .locals 1

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressWidth()I

    move-result v0

    return v0
.end method

.method public getSplitProgress()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v0

    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekBarSplit: getSplitProgress(): progress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekBarSplit: getSplitProgress(): getMax() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getMax()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getMax()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekBarSplit: getSplitProgress(): thumbText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    new-instance v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekBarSplit: getSplitProgress(): text = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getMax()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekbarSplit: current progress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekbarSplit: max progress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekbarSplit: half vlaue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mForegroundDraw:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTouchTrackingForegroundDraw:Z

    if-eqz v3, :cond_2

    add-int/lit8 v3, v1, -0x5

    if-le v0, v3, :cond_2

    add-int/lit8 v3, v1, 0x5

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->misQuickPanleInstance:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTouchTrackingForegroundDraw:Z

    if-eqz v3, :cond_5

    if-ne v1, v0, :cond_4

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTouchTrackingForegroundDraw:Z

    if-nez v3, :cond_3

    add-int/lit8 v3, v1, -0x3

    if-le v0, v3, :cond_3

    add-int/lit8 v3, v1, 0x3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_3
    if-eq v1, v0, :cond_0

    :try_start_2
    const-string v3, "TwSeekBarSplit"

    const-string v4, "TwSeekbarSplit: call mSplitDrawable.draw"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_5
    if-ne v1, v0, :cond_6

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_6
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method onHoverChanged(III)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;->onHoverChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onHoverChanged(III)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method onProgressRefresh(FZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onProgressRefresh(FZ)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;->onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgressWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getPaddingRight()I

    move-result v1

    sub-int p1, v0, v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getPaddingBottom()I

    move-result v1

    sub-int p2, v0, v1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v1, p1, 0x2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitOffset:I

    sub-int/2addr v1, v2

    div-int/lit8 v2, p2, 0x2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v3, p1, 0x2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitOffset:I

    sub-int/2addr v3, v4

    div-int/lit8 v4, p2, 0x2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;->onStartTrackingHover(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStartTrackingHover(III)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTouchTrackingForegroundDraw:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;->onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V

    :cond_0
    return-void
.end method

.method onStopTrackingHover()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;->onStopTrackingHover(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingHover()V

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTouchTrackingForegroundDraw:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;->onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const-string v0, "TwSeekBarSplit"

    const-string v1, " onTouchEvent: ******** Start oTouchEvent *******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->bUseCustomContentDescription:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekBarMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getSplitProgress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    const-string v0, "TwSeekBarSplit"

    const-string v1, "TwAbsSeekbar: onTouchEvent: ******** End oTouchEvent *******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    sget-boolean v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->bUseCustomContentDescription:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekBarMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getSplitProgress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDrawSeekBarSplitForeGround(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mForegroundDraw:Z

    return-void
.end method

.method public setOnSeekBarHoverListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    return-void
.end method

.method public setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    return-void
.end method

.method public setProgressBounds()V
    .locals 8

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgressBounds()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getMax()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    div-float v2, v4, v5

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgressWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    float-to-double v4, v2

    const-wide/high16 v6, 0x3ff0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    div-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getThumbCenterPosX()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getThumbWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v6, v3, 0x2

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public setQuickPanleInstance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->misQuickPanleInstance:Z

    return-void
.end method

.method public declared-synchronized setRange(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/16 p1, 0x64

    :cond_0
    :try_start_0
    rem-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseCustomContentDescription(Z)V
    .locals 0

    sput-boolean p1, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->bUseCustomContentDescription:Z

    return-void
.end method

.method public setVerticalBarDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
