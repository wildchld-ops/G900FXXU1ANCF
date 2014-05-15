.class public Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;
.super Ljava/lang/Object;
.source "SBrowserHttpAuthHandler.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;


# instance fields
.field private final mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mPasswordView:Landroid/widget/EditText;

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->createDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->getUname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->getPwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()V
    .locals 9

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040047

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a001e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mUsernameView:Landroid/widget/EditText;

    const v6, 0x7f0a0020

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mPasswordView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mPasswordView:Landroid/widget/EditText;

    new-instance v7, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$1;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v6, 0x7f0a001c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f0a001d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a001f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->getUsernameLabelText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->getPasswordLabelText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->getOkButtonText()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->getCancelButtonText()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->getMessageTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$4;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$4;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)V

    invoke-virtual {v6, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$3;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)V

    invoke-virtual {v6, v0, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$2;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private getPwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->cancel()V

    return-void
.end method

.method public onAutofillDataAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    return-void
.end method

.method public reshow()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->getUname()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->getPwd()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->createDialog()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return-void

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
