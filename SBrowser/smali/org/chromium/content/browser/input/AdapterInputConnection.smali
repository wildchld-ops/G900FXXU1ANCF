.class public Lorg/chromium/content/browser/input/AdapterInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "AdapterInputConnection.java"


# static fields
.field public static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_NEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusNext"

.field public static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREV:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusPrev"

.field public static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREV_NEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.BrowserPrevNext"

.field private static final DEBUG:Z = false

.field public static final FORM_INPUT_NEXT_SELECT:I = 0x8

.field public static final FORM_INPUT_NEXT_TEXT:I = 0x4

.field public static final FORM_INPUT_NONE:I = 0x0

.field public static final FORM_INPUT_PREV_SELECT:I = 0x2

.field public static final FORM_INPUT_PREV_TEXT:I = 0x1

.field public static final INVALID_COMPOSITION:I = -0x1

.field public static final INVALID_SELECTION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "org.chromium.content.browser.input.AdapterInputConnection"

.field private static mAction:I

.field private static mPrivateImeOptions:Ljava/lang/String;


# instance fields
.field private mIgnoreTextInputStateUpdates:Z

.field private final mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private final mInternalView:Landroid/view/View;

.field private mLastUpdateCompositionEnd:I

.field private mLastUpdateCompositionStart:I

.field private mLastUpdateSelectionEnd:I

.field private mLastUpdateSelectionStart:I

.field private mNumNestedBatchEdits:I

.field private mSingleLine:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/view/inputmethod/EditorInfo;)V
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, p1, v8}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput v7, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    iput-boolean v7, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mIgnoreTextInputStateUpdates:Z

    iput v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    iput v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    iput v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    iput v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    iput-object p1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    iput-object p2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v5, p0}, Lorg/chromium/content/browser/input/ImeAdapter;->setInputConnection(Lorg/chromium/content/browser/input/AdapterInputConnection;)V

    iput-boolean v8, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    const/high16 v5, 0x200

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/16 v5, 0xa1

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputType()I

    move-result v5

    sget v6, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeText:I

    if-ne v5, v6, :cond_5

    iget v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_0
    :goto_0
    iget-boolean v5, p2, Lorg/chromium/content/browser/input/ImeAdapter;->mSpellCheckingEnabled:Z

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Web_DisablePrediction_Spelling"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v6, 0x8

    or-int/2addr v5, v6

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrFormNavigationFlag()Z

    move-result v5

    if-ne v8, v5, :cond_f

    const/4 v5, 0x0

    sput-object v5, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPrivateImeOptions:Ljava/lang/String;

    const/16 v1, 0xc

    const/4 v2, 0x3

    sget v5, Lorg/chromium/content/browser/input/AdapterInputConnection;->mAction:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_d

    sget v5, Lorg/chromium/content/browser/input/AdapterInputConnection;->mAction:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_d

    const-string v5, "com.sec.android.inputmethod.axt9.BrowserPrevNext"

    sput-object v5, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPrivateImeOptions:Ljava/lang/String;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    if-ltz v4, :cond_3

    if-gez v3, :cond_4

    :cond_3
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    move v3, v4

    :cond_4
    sget-object v5, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPrivateImeOptions:Ljava/lang/String;

    iput-object v5, p3, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iput v4, p3, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v3, p3, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    :goto_2
    return-void

    :cond_5
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputType()I

    move-result v5

    sget v6, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeTextArea:I

    if-eq v5, v6, :cond_6

    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputType()I

    move-result v5

    sget v6, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeContentEditable:I

    if-ne v5, v6, :cond_7

    :cond_6
    iget v5, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v6, 0x2c000

    or-int/2addr v5, v6

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iput-boolean v7, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputType()I

    move-result v5

    sget v6, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypePassword:I

    if-ne v5, v6, :cond_8

    const/16 v5, 0xe1

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputType()I

    move-result v5

    sget v6, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeSearch:I

    if-ne v5, v6, :cond_9

    iget v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v5, v5, 0x3

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputType()I

    move-result v5

    sget v6, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeUrl:I

    if-ne v5, v6, :cond_a

    const/16 v5, 0x11

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputType()I

    move-result v5

    sget v6, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeEmail:I

    if-ne v5, v6, :cond_b

    const/16 v5, 0xd1

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputType()I

    move-result v5

    sget v6, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeTel:I

    if-ne v5, v6, :cond_c

    const/4 v5, 0x3

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v5, v5, 0x5

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputType()I

    move-result v5

    sget v6, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNumber:I

    if-ne v5, v6, :cond_0

    const/16 v5, 0x2002

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v5, v5, 0x5

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    :cond_d
    sget v5, Lorg/chromium/content/browser/input/AdapterInputConnection;->mAction:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_e

    const-string v5, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    sput-object v5, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPrivateImeOptions:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    sget v5, Lorg/chromium/content/browser/input/AdapterInputConnection;->mAction:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_2

    const-string v5, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    sput-object v5, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPrivateImeOptions:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getInitialSelectionStart()I

    move-result v5

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getInitialSelectionStart()I

    move-result v5

    iput v5, p3, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    goto/16 :goto_2
.end method

.method private getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static setAction(I)V
    .locals 0

    sput p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mAction:I

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->batchStateChanged(Z)V

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p2, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->checkCompositionQueueAndCallNative(Ljava/lang/String;IZ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->batchStateChanged(Z)V

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v5

    invoke-static {v1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v6

    if-ne v5, v6, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->beginBatchEdit()Z

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    if-ge v0, v2, :cond_1

    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v5, v0, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->setComposingRegion(II)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const-string v6, ""

    invoke-virtual {v5, v6, v4, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->checkCompositionQueueAndCallNative(Ljava/lang/String;IZ)Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 3

    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-boolean v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    return-object v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isActive()Z
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected isIgnoringTextInputStateUpdates()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mIgnoreTextInputStateUpdates:Z

    return v0
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->selectAll()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->cut()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->copy()Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->paste()Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->restartInput()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sEventTypeRawKeyDown:I

    const/16 v4, 0x3d

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyEvent(IJII)Z

    :goto_0
    move v0, v6

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, v6}, Lorg/chromium/content/browser/input/ImeAdapter;->dismissInput(Z)V

    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/16 v1, 0x42

    const/16 v4, 0x16

    invoke-virtual {v0, v1, v4}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEventWithKeyCode(II)V

    goto :goto_0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mAction:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->isSoftKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->hideKeyboardFromContentView()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->moveFocusToPrevious()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    const-string v0, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mAction:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->isSoftKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->hideKeyboardFromContentView()V

    :cond_3
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->moveFocusToNext()V

    goto :goto_0
.end method

.method restartInput()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    iput-boolean v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mIgnoreTextInputStateUpdates:Z

    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11

    const/16 v10, 0x3c

    const/16 v9, 0x3b

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v5}, Lorg/chromium/content/browser/input/ImeAdapter;->hideSelectionAndInsertionHandleControllers()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x43

    if-ne v5, v6, :cond_1

    invoke-super {p0, v7, v8}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v5, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z

    :goto_1
    return v7

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x70

    if-ne v5, v6, :cond_2

    invoke-super {p0, v8, v7}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eq v5, v9, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v5, v10, :cond_4

    :cond_3
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v5, v8}, Lorg/chromium/content/browser/input/ImeAdapter;->setShiftKeyPressed(Z)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-le v2, v1, :cond_5

    move v3, v2

    move v2, v1

    move v1, v3

    :cond_5
    int-to-char v5, v4

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v1, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrFormNavigationFlag()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0xe8

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v5}, Lorg/chromium/content/browser/input/ImeAdapter;->pasteByClipboardEx()V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eq v5, v9, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v5, v10, :cond_0

    :cond_8
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v5, v7}, Lorg/chromium/content/browser/input/ImeAdapter;->setShiftKeyPressed(Z)V

    goto :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/content/browser/input/AdapterInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    :goto_0
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->setComposingRegion(II)Z

    move-result v2

    return v2

    :cond_2
    invoke-super {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 12

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->onInputReceivedInAdapter()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    const/4 v10, 0x0

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Web_EnableHighlightComposingRegion"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-virtual {v10, v5, v8, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-virtual {v10, v5, v9, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/CharacterStyle;

    const/4 v7, 0x0

    :goto_0
    array-length v0, v11

    if-ge v7, v0, :cond_1

    aget-object v0, v11, v7

    instance-of v0, v0, Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_3

    const-string v0, "ImeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start : 0 next : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :cond_1
    if-eqz v6, :cond_2

    if-eqz v9, :cond_2

    if-eq v9, v8, :cond_2

    const/4 v3, 0x0

    move v4, v9

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Web_EnableHighlightComposingRegion"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/ImeAdapter;->checkCompositionQueueAndCallNative(Ljava/lang/String;IIIZ)Z

    move-result v0

    :goto_1
    return v0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v5}, Lorg/chromium/content/browser/input/ImeAdapter;->checkCompositionQueueAndCallNative(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_1
.end method

.method public setEditableText(Ljava/lang/String;IIII)V
    .locals 15

    iget-object v12, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v12}, Lorg/chromium/content/browser/input/ImeAdapter;->shouldIgnoreNativeTextUpdate()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v12, 0xa0

    const/16 v13, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v0, p2

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v0, p3

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v0, p4

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v0, p5

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result p5

    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    invoke-static {v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v7

    invoke-static {v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v6

    if-nez v11, :cond_2

    const/4 v12, 0x0

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v5, v12, v13, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_2
    if-eqz v11, :cond_3

    move/from16 v0, p2

    if-ne v9, v0, :cond_3

    move/from16 v0, p3

    if-ne v8, v0, :cond_3

    move/from16 v0, p4

    if-ne v7, v0, :cond_3

    move/from16 v0, p5

    if-eq v6, v0, :cond_0

    :cond_3
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v5, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_4

    invoke-static {v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    :goto_1
    iget-boolean v12, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mIgnoreTextInputStateUpdates:Z

    if-nez v12, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelection(IIII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    const-string v12, "ERROR LOG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-super {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setIgnoreTextInputStateUpdates(Z)V
    .locals 5

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mIgnoreTextInputStateUpdates:Z

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v3

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelection(IIII)V

    goto :goto_0
.end method

.method public setSelection(II)Z
    .locals 1

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->setEditableSelectionOffsets(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected updateSelection(IIII)V
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    if-ne v0, p4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->updateSelection(Landroid/view/View;IIII)V

    iput p1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    iput p2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    iput p3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    iput p4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    goto :goto_0
.end method
