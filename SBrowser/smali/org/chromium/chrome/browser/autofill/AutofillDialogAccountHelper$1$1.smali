.class Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1$1;
.super Ljava/lang/Object;
.source "AutofillDialogAccountHelper.java"

# interfaces
.implements Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->tokenAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1$1;->this$1:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tokenAvailable(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1$1;->this$1:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    #setter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mLsid:Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->access$302(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1$1;->this$1:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mLsid:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->access$300(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1$1;->this$1:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    #calls: Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->attemptToGenerateTokensOrRetryOrFail()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->access$100(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1$1;->this$1:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mSignInContinuation:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->access$400(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1$1;->this$1:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;

    iget-object v1, v1, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->access$200(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1$1;->this$1:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;

    iget-object v2, v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mSid:Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1$1;->this$1:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;

    iget-object v3, v3, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mLsid:Ljava/lang/String;
    invoke-static {v3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->access$300(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;->onTokensGenerationSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
