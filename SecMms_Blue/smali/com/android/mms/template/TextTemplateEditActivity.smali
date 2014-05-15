.class public Lcom/android/mms/template/TextTemplateEditActivity;
.super Landroid/app/Activity;
.source "TextTemplateEditActivity.java"


# static fields
.field private static final MAX_TEMPLATE_LENGTH:I = 0xc8

.field protected static mActionBar:Landroid/app/ActionBar;

.field protected static mCancelButton:Landroid/widget/Button;

.field protected static mSaveButton:Landroid/widget/Button;


# instance fields
.field private IMEHandler:Landroid/os/Handler;

.field private mEditor:Landroid/widget/EditText;

.field private mMsgText:Ljava/lang/CharSequence;

.field private mTextCount:Landroid/widget/TextView;

.field private final mTextTemplateWatcher:Landroid/text/TextWatcher;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->IMEHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;

    new-instance v0, Lcom/android/mms/template/TextTemplateEditActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/template/TextTemplateEditActivity$4;-><init>(Lcom/android/mms/template/TextTemplateEditActivity;)V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mTextTemplateWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private TextTemplateSipHide()V
    .locals 3

    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private TextTemplateSipShow()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->IMEHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->IMEHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/template/TextTemplateEditActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/template/TextTemplateEditActivity$3;-><init>(Lcom/android/mms/template/TextTemplateEditActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/template/TextTemplateEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->TextTemplateSipHide()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/template/TextTemplateEditActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/template/TextTemplateEditActivity;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/template/TextTemplateEditActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0xc8

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    sput-object v5, Lcom/android/mms/template/TextTemplateEditActivity;->mActionBar:Landroid/app/ActionBar;

    sget-object v5, Lcom/android/mms/template/TextTemplateEditActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/mms/template/TextTemplateEditActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    sget-object v5, Lcom/android/mms/template/TextTemplateEditActivity;->mActionBar:Landroid/app/ActionBar;

    const v6, 0x7f040039

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setCustomView(I)V

    sget-object v5, Lcom/android/mms/template/TextTemplateEditActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/mms/template/TextTemplateEditActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v5, 0x7f0b011d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    sput-object v5, Lcom/android/mms/template/TextTemplateEditActivity;->mCancelButton:Landroid/widget/Button;

    sget-object v5, Lcom/android/mms/template/TextTemplateEditActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/mms/template/TextTemplateEditActivity$1;

    invoke-direct {v6, p0}, Lcom/android/mms/template/TextTemplateEditActivity$1;-><init>(Lcom/android/mms/template/TextTemplateEditActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0b011e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    sput-object v5, Lcom/android/mms/template/TextTemplateEditActivity;->mSaveButton:Landroid/widget/Button;

    sget-object v5, Lcom/android/mms/template/TextTemplateEditActivity;->mSaveButton:Landroid/widget/Button;

    const v6, 0x7f0c00da

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    sget-object v5, Lcom/android/mms/template/TextTemplateEditActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/mms/template/TextTemplateEditActivity$2;

    invoke-direct {v6, p0}, Lcom/android/mms/template/TextTemplateEditActivity$2;-><init>(Lcom/android/mms/template/TextTemplateEditActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f0400a2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/template/TextTemplateEditActivity;->setContentView(Landroid/view/View;)V

    const v5, 0x7f0b02f3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mTextTemplateWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v5, 0x7f0b02f4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mTextCount:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-static {v5, v8}, Lcom/android/mms/ui/MessageUtils;->setMaximumLengthforWB(Landroid/widget/EditText;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDialogAlertWhenTextInputForKor()Z

    move-result v5

    if-nez v5, :cond_1

    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/mms/util/LengthFilterWithToast;

    invoke-direct {v5, v8}, Lcom/android/mms/util/LengthFilterWithToast;-><init>(I)V

    aput-object v5, v2, v9

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    const-string v5, "android.intent.extra.TEMPLATE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mMsgText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    const/high16 v6, 0x200

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void

    :cond_1
    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/mms/util/LengthFilterWithDialog;

    const/4 v6, 0x4

    invoke-direct {v5, p0, v8, v6}, Lcom/android/mms/util/LengthFilterWithDialog;-><init>(Landroid/content/Context;II)V

    aput-object v5, v2, v9

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mTextTemplateWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mTextTemplateWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->TextTemplateSipShow()V

    :cond_0
    return-void
.end method

.method public updateTextCounter(Ljava/lang/CharSequence;)V
    .locals 5

    const-string v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mTextCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
