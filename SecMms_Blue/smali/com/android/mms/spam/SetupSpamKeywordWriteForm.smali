.class public Lcom/android/mms/spam/SetupSpamKeywordWriteForm;
.super Landroid/app/Activity;
.source "SetupSpamKeywordWriteForm.java"


# static fields
.field private static final ALERT_SPAM_KEYWORD_DIALOG:I = 0x1

.field private static final ALERT_SPAM_MAX_SIZE_DIALOG:I = 0x3

.field private static final ALERT_SPAM_SIZE_DIALOG:I = 0x2

.field private static final DIALOG_SPAM:I = 0x4

.field private static final MAX_SPAM_KEYWORD_LENGTH:I = 0x20

.field protected static mActionBar:Landroid/app/ActionBar;

.field protected static mCancelButton:Landroid/widget/Button;

.field protected static mSaveButton:Landroid/widget/Button;


# instance fields
.field private IMEHandler:Landroid/os/Handler;

.field private final TAG:Ljava/lang/String;

.field idx:I

.field private mContext:Landroid/content/Context;

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private mTextCount:Landroid/widget/TextView;

.field private m_DialogView:Landroid/app/AlertDialog;

.field private m_SentenceText:Landroid/widget/EditText;

.field private m_TextChanged:Landroid/text/TextWatcher;

.field m_Title:Landroid/widget/TextView;

.field spamCriteria:I

.field spamText:Ljava/lang/String;

.field private update_MODE:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "Mms/SetupSpamKeywordWriteForm"

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->TAG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamCriteria:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->idx:I

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_Title:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_TextChanged:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->update_MODE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->insert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getSpamWordData()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->updateSapmKeyWord()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private duplicationCheck(Ljava/lang/String;)I
    .locals 9

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter_type = 1 AND filter = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v1, v6

    goto :goto_0
.end method

.method private getSpamWordData()I
    .locals 8

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v3, ""

    const-string v3, "filter_type = 1"

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v6

    goto :goto_0
.end method

.method private init()V
    .locals 6

    const/16 v5, 0x20

    const/16 v4, 0x10

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v1, 0x7f0b013e

    invoke-virtual {p0, v1}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDialogAlertWhenTextInputForKor()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0b013f

    invoke-virtual {p0, v1}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mTextCount:Landroid/widget/TextView;

    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v1, Lcom/android/mms/util/LengthFilterWithToast;

    invoke-direct {v1, v5}, Lcom/android/mms/util/LengthFilterWithToast;-><init>(I)V

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_TextChanged:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-static {v1, v5}, Lcom/android/mms/ui/MessageUtils;->setMaximumLengthforWB(Landroid/widget/EditText;I)V

    :goto_0
    return-void

    :cond_0
    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v1, Lcom/android/mms/util/LengthFilterWithDialog;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v4, v2}, Lcom/android/mms/util/LengthFilterWithDialog;-><init>(Landroid/content/Context;II)V

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-static {v1, v4}, Lcom/android/mms/ui/MessageUtils;->setMaximumLengthforWB(Landroid/widget/EditText;I)V

    goto :goto_0
.end method

.method private insert(Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v2, 0x1

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "filter_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "filter"

    invoke-virtual {v7, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "criteria"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "enable"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3, v4, v7}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move v3, v2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    invoke-static {v1, v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->insert(ILcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    :cond_0
    return-void
.end method

.method private updateSapmKeyWord()V
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "filter"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    iget v4, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->idx:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->idx:I

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mContext:Landroid/content/Context;

    const v2, 0x7f040046

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    sput-object v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    sget-object v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    sget-object v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f040039

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    sget-object v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x7f0b011d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mCancelButton:Landroid/widget/Button;

    sget-object v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$1;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$1;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b011e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mSaveButton:Landroid/widget/Button;

    sget-object v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f0c00da

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    sget-object v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mSaveButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$2;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$2;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->init()V

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "UPDATE_MODE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->update_MODE:Z

    iget-boolean v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->update_MODE:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "SpamWord"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "UPDATE_ID"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->idx:I

    :cond_1
    const-string v2, "SpamCriteria"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamCriteria:I

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const v4, 0x7f0c02a2

    const v8, 0x104000a

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$7;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$7;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    :cond_0
    return-object v2

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_2

    const-string v3, "CHN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CHU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CHM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CHC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "TGY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "BRI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c029e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v0, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForKor()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c029f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c029d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showKeyWordConfirmDialog(IILjava/lang/String;)V
    .locals 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0293

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c004d

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c004e

    new-instance v4, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$4;

    invoke-direct {v4, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$4;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForKor()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->duplicationCheck(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->showDialog(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v4, :cond_4

    const v3, 0x7f0c0219

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->finish()V

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    const v4, 0x7f0c02a2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->showKeyWordConfirmDialog(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->setResult(ILandroid/content/Intent;)V

    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->finish()V

    return-void
.end method

.method public updateTextCounter()V
    .locals 5

    const-string v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mTextCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
