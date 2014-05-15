.class public Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;
.super Ljava/lang/Object;
.source "AutofillDialogAccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "autofill"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static MAX_ATTEMPTS_TO_GENERATE_TOKENS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutofillDialogAccountHelper"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAttemptsToGo:I

.field private final mContext:Landroid/content/Context;

.field private mLsid:Ljava/lang/String;

.field private mSid:Ljava/lang/String;

.field private final mSignInContinuation:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->$assertionsDisabled:Z

    const/4 v0, 0x2

    sput v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->MAX_ATTEMPTS_TO_GENERATE_TOKENS:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mSignInContinuation:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;

    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mSid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mSid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->attemptToGenerateTokensOrRetryOrFail()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mLsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mLsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mSignInContinuation:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private attemptToGenerateTokensOrRetryOrFail()V
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mAttemptsToGo:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mAttemptsToGo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mAttemptsToGo:I

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mAttemptsToGo:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->startTokensGenerationImpl()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mSignInContinuation:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;->onTokensGenerationFailure()V

    goto :goto_0
.end method

.method private startTokensGenerationImpl()V
    .locals 5

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mSid:Ljava/lang/String;

    const-string v3, "SID"

    new-instance v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;

    invoke-direct {v4, p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$1;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/sync/signin/AccountManagerHelper;->getNewAuthTokenFromForeground(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V

    return-void
.end method


# virtual methods
.method public getAccountNames()[Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccountNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public startTokensGeneration(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mAccount:Landroid/accounts/Account;

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mSignInContinuation:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;->onTokensGenerationFailure()V

    :goto_0
    return-void

    :cond_0
    sget v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->MAX_ATTEMPTS_TO_GENERATE_TOKENS:I

    iput v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->mAttemptsToGo:I

    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->attemptToGenerateTokensOrRetryOrFail()V

    goto :goto_0
.end method
