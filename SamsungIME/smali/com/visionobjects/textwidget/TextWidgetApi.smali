.class public interface abstract Lcom/visionobjects/textwidget/TextWidgetApi;
.super Ljava/lang/Object;
.source "TextWidgetApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;,
        Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;,
        Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;,
        Lcom/visionobjects/textwidget/TextWidgetApi$OnSelectionChangedListener;,
        Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;,
        Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleClickedListener;,
        Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;,
        Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;,
        Lcom/visionobjects/textwidget/TextWidgetApi$OnTextChangedListener;
    }
.end annotation


# virtual methods
.method public abstract centerTo(I)V
.end method

.method public abstract configure(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V
.end method

.method public abstract getCursorIndex()I
.end method

.method public abstract getErrorCode()I
.end method

.method public abstract getErrorString()Ljava/lang/String;
.end method

.method public abstract getInsertIndex()I
.end method

.method public abstract isCursorHandleDragging()Z
.end method

.method public abstract isInsertHandleDragging()Z
.end method

.method public abstract isInsertionMode()Z
.end method

.method public abstract isIsolatedMode()Z
.end method

.method public abstract isUserScrolling()Z
.end method

.method public abstract moveCursorToVisibleIndex()Z
.end method

.method public abstract releaseEngine()V
.end method

.method public abstract replaceCharacters(IILjava/lang/String;)V
.end method

.method public abstract scrollTo(I)V
.end method

.method public abstract scrollToCursor()V
.end method

.method public abstract setAutoHideHandleDelay(I)V
.end method

.method public abstract setAutoHideHandleEnabled(Z)V
.end method

.method public abstract setAutoScrollDelay(I)V
.end method

.method public abstract setAutoScrollDelays(II)V
.end method

.method public abstract setAutoScrollEnabled(Z)V
.end method

.method public abstract setAutoScrollMargin(F)V
.end method

.method public abstract setAutoTypesetDelay(I)V
.end method

.method public abstract setAutoTypesetDelays(II)V
.end method

.method public abstract setAutoTypesetEnabled(Z)V
.end method

.method public abstract setBaselineColor(I)V
.end method

.method public abstract setBaselinePosition(F)V
.end method

.method public abstract setBaselineThickness(F)V
.end method

.method public abstract setCorrectionMode()V
.end method

.method public abstract setCursorHandleResource(I)V
.end method

.method public abstract setCursorIndex(I)V
.end method

.method public abstract setCursorMargins(FF)V
.end method

.method public abstract setCursorResource(I)V
.end method

.method public abstract setHoverEnabled(Z)V
.end method

.method public abstract setInkCapResources(II)V
.end method

.method public abstract setInkColor(I)V
.end method

.method public abstract setInkColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setInkEffect(I)V
.end method

.method public abstract setInkWidth(F)V
.end method

.method public abstract setInsertHandleResource(I)V
.end method

.method public abstract setInsertWindowColor(I)V
.end method

.method public abstract setInsertionMode(I)V
.end method

.method public abstract setOnConfigureListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;)V
.end method

.method public abstract setOnCursorHandleDragListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;)V
.end method

.method public abstract setOnGestureListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;)V
.end method

.method public abstract setOnInsertHandleClickedListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleClickedListener;)V
.end method

.method public abstract setOnInsertHandleDragListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;)V
.end method

.method public abstract setOnRecognitionListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;)V
.end method

.method public abstract setOnSelectionChangedListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnSelectionChangedListener;)V
.end method

.method public abstract setOnTextChangedListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnTextChangedListener;)V
.end method

.method public abstract setOnUserScrollListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;)V
.end method

.method public abstract setScrollbarFrame(I)V
.end method

.method public abstract setScrollbarMask(I)V
.end method

.method public abstract setScrollbarResource(I)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract setTextColor(I)V
.end method

.method public abstract setTextColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTextSize(F)V
.end method

.method public abstract setTextSizes([F)V
.end method

.method public abstract setTransientSpaceEnabled(Z)V
.end method

.method public abstract setTransientSpaceVisibleWhenEmpty(Z)V
.end method

.method public abstract setTypeface(Landroid/graphics/Typeface;)V
.end method

.method public abstract setWritingAreaBackgroundColor(I)V
.end method

.method public abstract setWritingAreaBackgroundResource(I)V
.end method
