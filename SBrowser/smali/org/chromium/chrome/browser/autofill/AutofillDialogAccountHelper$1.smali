.class Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;
.super Ljava/lang/Object;
.source "AutofillDialogAccountHelper.java"

# interfaces
.implements Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->startTokensGenerationImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tokenAvailable(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    #setter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mSid:Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->access$002(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mSid:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    #calls: Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->attemptToGenerateTokensOrRetryOrFail()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->access$100(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->access$500(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->access$200(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mLsid:Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->access$300(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LSID"

    new-instance v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1$1;

    invoke-direct {v4, p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1$1;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/sync/signin/AccountManagerHelper;->getNewAuthTokenFromForeground(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V

    goto :goto_0
.end method
