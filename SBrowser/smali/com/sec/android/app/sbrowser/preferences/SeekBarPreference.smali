.class public Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field protected mMax:F

.field protected mMin:F

.field private mSeekBar:Landroid/widget/SeekBar;

.field protected mStep:F

.field mSummary:Ljava/lang/CharSequence;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTrackingTouch:Z

.field private mValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/high16 v3, 0x3f80

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeFloatValue(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMin:F

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeFloatValue(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMax:F

    goto :goto_1

    :cond_2
    const-string v2, "step"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeFloatValue(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mStep:F

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->notifyChanged()V

    const v2, 0x7f040064

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method private seekBarProgressToPrefValue(I)F
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMin:F

    int-to-float v1, p1

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mStep:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private setValue(FZ)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMax:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget p1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMax:F

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMin:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMin:F

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mValue:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mValue:F

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->persistFloat(F)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->notifyChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mValue:F

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMax:F

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->prefValueToSeekBarProgress(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mValue:F

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->prefValueToSeekBarProgress(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->seekBarProgressToPrefValue(I)F

    move-result v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_3

    const/16 v2, 0x16

    if-ne p2, v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMax:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mStep:F

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mStep:F

    add-float/2addr v2, v0

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->setValue(FZ)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x15

    if-ne p2, v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mStep:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mStep:F

    sub-float v2, v0, v2

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->setValue(FZ)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;->min:F

    iput v1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMin:F

    iget v1, v0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;->max:F

    iput v1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMax:F

    iget v1, v0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;->step:F

    iput v1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mStep:F

    iget v1, v0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;->value:F

    iput v1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mValue:F

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;

    check-cast v0, Landroid/os/Parcelable;

    check-cast v0, Landroid/os/Parcelable;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMin:F

    iput v2, v1, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;->min:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMax:F

    iput v2, v1, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;->max:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mStep:F

    iput v2, v1, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;->step:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mValue:F

    iput v2, v1, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference$SavedState;->value:F

    move-object v0, v1

    :cond_0
    check-cast v0, Landroid/os/Parcelable;

    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mValue:F

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->getPersistedFloat(F)F

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->setValue(F)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public prefValueToSeekBarProgress(F)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mMin:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mStep:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    const/16 v1, 0x8

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSummary:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setValue(F)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->setValue(FZ)V

    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->seekBarProgressToPrefValue(I)F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->setValue(FZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->mValue:F

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->prefValueToSeekBarProgress(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
