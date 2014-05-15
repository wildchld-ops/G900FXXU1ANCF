.class public Lcom/android/dialer/dialpad/SmartDialTextView;
.super Landroid/widget/TextView;
.source "SmartDialTextView.java"


# instance fields
.field private final mExtraPadding:F

.field private final mPadding:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/dialpad/SmartDialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/dialer/dialpad/SmartDialTextView;->mPadding:F

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/dialer/dialpad/SmartDialTextView;->mExtraPadding:F

    return-void
.end method

.method private rescaleText(I)V
    .locals 9

    const/high16 v8, 0x4000

    const/high16 v7, 0x3f80

    const v6, 0x3f4ccccd

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/dialer/dialpad/SmartDialTextView;->setTextScaleX(F)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float v4, p1

    iget v5, p0, Lcom/android/dialer/dialpad/SmartDialTextView;->mPadding:F

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/dialer/dialpad/SmartDialTextView;->mExtraPadding:F

    mul-float/2addr v5, v8

    sub-float v3, v4, v5

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    div-float v2, v3, v4

    const/4 v0, 0x0

    cmpg-float v4, v2, v7

    if-gez v4, :cond_1

    cmpg-float v4, v2, v6

    if-gez v4, :cond_2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v6}, Lcom/android/dialer/dialpad/SmartDialTextView;->setTextScaleX(F)V

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/SmartDialTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/dialer/dialpad/SmartDialTextView;->setTextScaleX(F)V

    goto :goto_1
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/SmartDialTextView;->rescaleText(I)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialTextView;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/SmartDialTextView;->rescaleText(I)V

    return-void
.end method
