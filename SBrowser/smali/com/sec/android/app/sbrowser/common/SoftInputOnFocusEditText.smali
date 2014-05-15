.class public Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;
.super Landroid/widget/EditText;
.source "SoftInputOnFocusEditText.java"


# instance fields
.field private mBringOutTheSoftInputOnFocusEditTextView:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

.field private mFindTextToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;)Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->mFindTextToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFinishInflate()V
    .locals 2

    iput-object p0, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->mBringOutTheSoftInputOnFocusEditTextView:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->mBringOutTheSoftInputOnFocusEditTextView:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText$1;-><init>(Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->mBringOutTheSoftInputOnFocusEditTextView:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText$2;-><init>(Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->mFindTextToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->mFindTextToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->isSoftInputVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->mBringOutTheSoftInputOnFocusEditTextView:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->mBringOutTheSoftInputOnFocusEditTextView:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/utilities/KeyboardUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->mFindTextToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setSoftInputVisible(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->mFindTextToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->stopFindAndExit()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFindTextToolbar(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->mFindTextToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    :cond_0
    return-void
.end method
