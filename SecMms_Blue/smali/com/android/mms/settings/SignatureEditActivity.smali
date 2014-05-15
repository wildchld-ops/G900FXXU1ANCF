.class public Lcom/android/mms/settings/SignatureEditActivity;
.super Landroid/app/Activity;
.source "SignatureEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/settings/SignatureEditActivity$toShowToastLengthFilter;
    }
.end annotation


# static fields
.field private static MAX_SIGNATURE_LENGTH:I

.field protected static mActionBar:Landroid/app/ActionBar;

.field protected static mCancelButton:Landroid/widget/Button;

.field protected static mSaveButton:Landroid/widget/Button;


# instance fields
.field private IMEHandler:Landroid/os/Handler;

.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field private mEditSignature:Landroid/widget/EditText;

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private final mSignatureSettingsWatcher:Landroid/text/TextWatcher;

.field private mTextCount:Landroid/widget/TextView;

.field private mTextSignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x28

    sput v0, Lcom/android/mms/settings/SignatureEditActivity;->MAX_SIGNATURE_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->mTextSignature:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->IMEHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/settings/SignatureEditActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/SignatureEditActivity$4;-><init>(Lcom/android/mms/settings/SignatureEditActivity;)V

    iput-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->mSignatureSettingsWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private SignatureSipHide()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->IMEHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->IMEHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/settings/SignatureEditActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/SignatureEditActivity$3;-><init>(Lcom/android/mms/settings/SignatureEditActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private SignatureSipShow()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->IMEHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->IMEHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/settings/SignatureEditActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/SignatureEditActivity$2;-><init>(Lcom/android/mms/settings/SignatureEditActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/settings/SignatureEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/settings/SignatureEditActivity;->SignatureSipHide()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/settings/SignatureEditActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/settings/SignatureEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/settings/SignatureEditActivity;->showToast()V

    return-void
.end method

.method public static disableOkButton(I)V
    .locals 2

    sget-object v0, Lcom/android/mms/settings/SignatureEditActivity;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    sget-object v0, Lcom/android/mms/settings/SignatureEditActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/mms/settings/SignatureEditActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showToast()V
    .locals 3

    const v2, 0x7f0c0291

    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkEditSignature()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDialogAlertWhenTextInputForKor()Z

    move-result v2

    if-nez v2, :cond_0

    new-array v0, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/mms/settings/SignatureEditActivity$toShowToastLengthFilter;

    sget v3, Lcom/android/mms/settings/SignatureEditActivity;->MAX_SIGNATURE_LENGTH:I

    invoke-direct {v2, p0, v3}, Lcom/android/mms/settings/SignatureEditActivity$toShowToastLengthFilter;-><init>(Lcom/android/mms/settings/SignatureEditActivity;I)V

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/mms/util/LengthFilterWithDialog;

    sget v3, Lcom/android/mms/settings/SignatureEditActivity;->MAX_SIGNATURE_LENGTH:I

    const/4 v4, 0x4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/mms/util/LengthFilterWithDialog;-><init>(Landroid/content/Context;II)V

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b011e

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/settings/SignatureEditActivity;->save()V

    invoke-virtual {p0}, Lcom/android/mms/settings/SignatureEditActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/settings/SignatureEditActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/mms/settings/SignatureEditActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/settings/SignatureEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/settings/SignatureEditActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/settings/SignatureEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    sput-object v5, Lcom/android/mms/settings/SignatureEditActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORRTSRejectEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x20

    sput v5, Lcom/android/mms/settings/SignatureEditActivity;->MAX_SIGNATURE_LENGTH:I

    :cond_0
    sget-object v5, Lcom/android/mms/settings/SignatureEditActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/mms/settings/SignatureEditActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    sget-object v5, Lcom/android/mms/settings/SignatureEditActivity;->mActionBar:Landroid/app/ActionBar;

    const v6, 0x7f040039

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setCustomView(I)V

    sget-object v5, Lcom/android/mms/settings/SignatureEditActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/mms/settings/SignatureEditActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v5, 0x7f0b011d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    sput-object v5, Lcom/android/mms/settings/SignatureEditActivity;->mCancelButton:Landroid/widget/Button;

    sget-object v5, Lcom/android/mms/settings/SignatureEditActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/mms/settings/SignatureEditActivity$1;

    invoke-direct {v6, p0}, Lcom/android/mms/settings/SignatureEditActivity$1;-><init>(Lcom/android/mms/settings/SignatureEditActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0b011e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    sput-object v5, Lcom/android/mms/settings/SignatureEditActivity;->mSaveButton:Landroid/widget/Button;

    sget-object v5, Lcom/android/mms/settings/SignatureEditActivity;->mSaveButton:Landroid/widget/Button;

    const v6, 0x7f0c00da

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    sget-object v5, Lcom/android/mms/settings/SignatureEditActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f040090

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/settings/SignatureEditActivity;->setContentView(Landroid/view/View;)V

    const v5, 0x7f0b02c3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/mms/settings/SignatureEditActivity;->checkEditSignature()V

    iget-object v5, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/settings/SignatureEditActivity;->mSignatureSettingsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v5, 0x7f0b02c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/settings/SignatureEditActivity;->mTextCount:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    sget v6, Lcom/android/mms/settings/SignatureEditActivity;->MAX_SIGNATURE_LENGTH:I

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessageUtils;->setMaximumLengthforWB(Landroid/widget/EditText;I)V

    iget-object v5, p0, Lcom/android/mms/settings/SignatureEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "pref_key_signature_text"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/settings/SignatureEditActivity;->mTextSignature:Ljava/lang/String;

    const-string v5, "pref_key_enable_signature"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->clearFocus()V

    :goto_0
    iget-object v5, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/settings/SignatureEditActivity;->mTextSignature:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

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
    iget-object v1, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/SignatureEditActivity;->mSignatureSettingsWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/settings/SignatureEditActivity;->mSignatureSettingsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/settings/SignatureEditActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public save()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/SignatureEditActivity;->mTextSignature:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/settings/SignatureEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/SignatureEditActivity;->mTextSignature:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/settings/SignatureEditActivity;->mTextSignature:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/SignatureEditActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/settings/SignatureEditActivity;->mTextSignature:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->changeSignString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public updateTextCounter(Ljava/lang/CharSequence;)V
    .locals 5

    const-string v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/android/mms/settings/SignatureEditActivity;->MAX_SIGNATURE_LENGTH:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/SignatureEditActivity;->mTextCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
