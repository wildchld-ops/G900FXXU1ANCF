.class public Lorg/chromium/chrome/browser/sync/ProfileSyncService;
.super Ljava/lang/Object;
.source "ProfileSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final SESSION_TAG_PREFIX:Ljava/lang/String; = "session_sync"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static sSyncSetupManager:Lorg/chromium/chrome/browser/sync/ProfileSyncService;


# instance fields
.field protected final mContext:Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeProfileSyncServiceAndroid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    const-class v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->TAG:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mListeners:Ljava/util/List;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeInit()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/sync/ProfileSyncService;)I
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/sync/ProfileSyncService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeTokenAvailable(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/sync/ProfileSyncService;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeOAuth2TokenFetched(IILjava/lang/String;Z)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/chrome/browser/sync/ProfileSyncService;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->sSyncSetupManager:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->sSyncSetupManager:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->sSyncSetupManager:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    return-object v0
.end method

.method private getAccountOrNullFromUsername(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    sget-object v3, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->TAG:Ljava/lang/String;

    const-string v4, "username is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v3, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->TAG:Ljava/lang/String;

    const-string v4, "Account not found for provided username."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0
.end method

.method private static getProfileSyncServiceAndroid(Landroid/content/Context;)I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    iget v0, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    return v0
.end method

.method private native nativeDisableSync(I)V
.end method

.method private native nativeEnableEncryptEverything(I)V
.end method

.method private native nativeEnableSync(I)V
.end method

.method private native nativeGetAboutInfoForTest(I)Ljava/lang/String;
.end method

.method private native nativeGetAuthError(I)I
.end method

.method private native nativeGetCurrentSignedInAccountText(I)Ljava/lang/String;
.end method

.method private native nativeGetEnabledDataTypes(I)J
.end method

.method private native nativeGetPassphraseType(I)I
.end method

.method private native nativeGetSyncEnterCustomPassphraseBodyText(I)Ljava/lang/String;
.end method

.method private native nativeGetSyncEnterCustomPassphraseBodyWithDateText(I)Ljava/lang/String;
.end method

.method private native nativeGetSyncEnterGooglePassphraseBodyWithDateText(I)Ljava/lang/String;
.end method

.method private native nativeHasExplicitPassphraseTime(I)Z
.end method

.method private native nativeHasKeepEverythingSynced(I)Z
.end method

.method private native nativeHasSyncSetupCompleted(I)Z
.end method

.method private native nativeHasUnrecoverableError(I)Z
.end method

.method private native nativeInit()I
.end method

.method private native nativeIsCryptographerReady(I)Z
.end method

.method private native nativeIsEncryptEverythingEnabled(I)Z
.end method

.method private native nativeIsFirstSetupInProgress(I)Z
.end method

.method private native nativeIsPassphraseRequiredForDecryption(I)Z
.end method

.method private native nativeIsPassphraseRequiredForExternalType(I)Z
.end method

.method private native nativeIsSyncInitialized(I)Z
.end method

.method private native nativeIsSyncKeystoreMigrationDone(I)Z
.end method

.method private native nativeIsUsingSecondaryPassphrase(I)Z
.end method

.method private native nativeNudgeSyncer(ILjava/lang/String;JLjava/lang/String;)V
.end method

.method private native nativeOAuth2TokenFetched(IILjava/lang/String;Z)V
.end method

.method private native nativeQuerySyncStatusSummary(I)Ljava/lang/String;
.end method

.method private native nativeSetDecryptionPassphrase(ILjava/lang/String;)Z
.end method

.method private native nativeSetEncryptionPassphrase(ILjava/lang/String;Z)V
.end method

.method private native nativeSetPreferredDataTypes(IZJ)V
.end method

.method private native nativeSetSetupInProgress(IZ)V
.end method

.method private native nativeSetSyncSessionsId(ILjava/lang/String;)Z
.end method

.method private native nativeSetSyncSetupCompleted(I)V
.end method

.method private native nativeSignInSync(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSignOutSync(I)V
.end method

.method private native nativeTokenAvailable(ILjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public addSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public disableSync()V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeDisableSync(I)V

    return-void
.end method

.method public enableEncryptEverything()V
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeEnableEncryptEverything(I)V

    return-void
.end method

.method public enableSync()V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeEnableSync(I)V

    return-void
.end method

.method public finishSyncFirstSetupIfNeeded()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isFirstSetupInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->setSyncSetupCompleted()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->setSetupInProgress(Z)V

    :cond_0
    return-void
.end method

.method public getAuthError()Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;
    .locals 2

    iget v1, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetAuthError(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->fromCode(I)Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentSignedInAccountText()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetCurrentSignedInAccountText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getAccountOrNullFromUsername(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v1

    const-string v2, "chromiumsync"

    new-instance v3, Lorg/chromium/chrome/browser/sync/ProfileSyncService$1;

    invoke-direct {v3, p0, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService$1;-><init>(Lorg/chromium/chrome/browser/sync/ProfileSyncService;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p2, v2, v3}, Lorg/chromium/sync/signin/AccountManagerHelper;->getNewAuthTokenFromForeground(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V

    goto :goto_0
.end method

.method public getOAuth2AuthToken(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getAccountOrNullFromUsername(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    iget v3, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, p3, v5, v4}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeOAuth2TokenFetched(IILjava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oauth2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v1

    new-instance v3, Lorg/chromium/chrome/browser/sync/ProfileSyncService$2;

    invoke-direct {v3, p0, p3}, Lorg/chromium/chrome/browser/sync/ProfileSyncService$2;-><init>(Lorg/chromium/chrome/browser/sync/ProfileSyncService;I)V

    invoke-virtual {v1, v5, v0, v2, v3}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAuthTokenFromForeground(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V

    goto :goto_0
.end method

.method public getPreferredDataTypes()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/chromium/sync/internal_api/pub/base/ModelType;",
            ">;"
        }
    .end annotation

    const-wide/16 v5, 0x0

    iget v3, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetEnabledDataTypes(I)J

    move-result-wide v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-wide/16 v3, 0x1

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    sget-object v3, Lorg/chromium/sync/internal_api/pub/base/ModelType;->AUTOFILL:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v3, 0x20

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    sget-object v3, Lorg/chromium/sync/internal_api/pub/base/ModelType;->AUTOFILL_PROFILE:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v3, 0x2

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    sget-object v3, Lorg/chromium/sync/internal_api/pub/base/ModelType;->BOOKMARK:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/16 v3, 0x1000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    sget-object v3, Lorg/chromium/sync/internal_api/pub/base/ModelType;->EXPERIMENTS:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    const-wide/16 v3, 0x400

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    sget-object v3, Lorg/chromium/sync/internal_api/pub/base/ModelType;->NIGORI:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    const-wide/16 v3, 0x4

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    sget-object v3, Lorg/chromium/sync/internal_api/pub/base/ModelType;->PASSWORD:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    const-wide/16 v3, 0x8

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    sget-object v3, Lorg/chromium/sync/internal_api/pub/base/ModelType;->SESSION:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    const-wide/16 v3, 0x10

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    sget-object v3, Lorg/chromium/sync/internal_api/pub/base/ModelType;->TYPED_URL:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    const-wide/16 v3, 0x40

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    sget-object v3, Lorg/chromium/sync/internal_api/pub/base/ModelType;->HISTORY_DELETE_DIRECTIVE:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    const-wide/16 v3, 0x800

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    sget-object v3, Lorg/chromium/sync/internal_api/pub/base/ModelType;->DEVICE_INFO:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    const-wide/16 v3, 0x80

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    sget-object v3, Lorg/chromium/sync/internal_api/pub/base/ModelType;->PROXY_TABS:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    const-wide/16 v3, 0x100

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    sget-object v3, Lorg/chromium/sync/internal_api/pub/base/ModelType;->FAVICON_IMAGE:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    const-wide/16 v3, 0x200

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    sget-object v3, Lorg/chromium/sync/internal_api/pub/base/ModelType;->FAVICON_TRACKING:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object v2
.end method

.method public getSyncDecryptionPassphraseType()Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;
    .locals 2

    sget-boolean v1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetPassphraseType(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->fromInternalValue(I)Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    move-result-object v1

    return-object v1
.end method

.method public getSyncDecryptionPassphraseTypeIfRequired()Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isPassphraseRequiredForDecryption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getSyncDecryptionPassphraseType()Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->NONE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    goto :goto_0
.end method

.method public getSyncEnterCustomPassphraseBodyText()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetSyncEnterCustomPassphraseBodyText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncEnterCustomPassphraseBodyWithDateText()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetSyncEnterCustomPassphraseBodyWithDateText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncEnterGooglePassphraseBodyWithDateText()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetSyncEnterGooglePassphraseBodyWithDateText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncInternalsInfoForTest()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetAboutInfoForTest(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasExplicitPassphraseTime()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeHasExplicitPassphraseTime(I)Z

    move-result v0

    return v0
.end method

.method public hasKeepEverythingSynced()Z
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeHasKeepEverythingSynced(I)Z

    move-result v0

    return v0
.end method

.method public hasSyncSetupCompleted()Z
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeHasSyncSetupCompleted(I)Z

    move-result v0

    return v0
.end method

.method public hasUnrecoverableError()Z
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeHasUnrecoverableError(I)Z

    move-result v0

    return v0
.end method

.method public invalidateOAuth2AuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/sync/signin/AccountManagerHelper;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isCryptographerReady()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsCryptographerReady(I)Z

    move-result v0

    return v0
.end method

.method public isEncryptEverythingEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsEncryptEverythingEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isFirstSetupInProgress()Z
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsFirstSetupInProgress(I)Z

    move-result v0

    return v0
.end method

.method public isPassphraseRequiredForDecryption()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsPassphraseRequiredForDecryption(I)Z

    move-result v0

    return v0
.end method

.method public isPassphraseRequiredForExternalType()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsPassphraseRequiredForExternalType(I)Z

    move-result v0

    return v0
.end method

.method public isSyncInitialized()Z
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsSyncInitialized(I)Z

    move-result v0

    return v0
.end method

.method public isSyncKeystoreMigrationDone()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsSyncKeystoreMigrationDone(I)Z

    move-result v0

    return v0
.end method

.method public isUsingSecondaryPassphrase()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsUsingSecondaryPassphrase(I)Z

    move-result v0

    return v0
.end method

.method public querySyncStatus()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeQuerySyncStatusSummary(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestSyncCycleForTest()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    const-string v0, ""

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->requestSyncFromNativeChrome(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public requestSyncFromNativeChrome(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v1, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeNudgeSyncer(ILjava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public setDecryptionPassphrase(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSetDecryptionPassphrase(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setEncryptionPassphrase(Ljava/lang/String;Z)V
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSetEncryptionPassphrase(ILjava/lang/String;Z)V

    return-void
.end method

.method public setPreferredDataTypes(ZLjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Lorg/chromium/sync/internal_api/pub/base/ModelType;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->AUTOFILL:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    :cond_1
    if-nez p1, :cond_2

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->BOOKMARK:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    :cond_3
    if-nez p1, :cond_4

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->PASSWORD:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    :cond_5
    if-nez p1, :cond_6

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->PROXY_TABS:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    :cond_7
    if-nez p1, :cond_8

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->TYPED_URL:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    :cond_9
    iget v2, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSetPreferredDataTypes(IZJ)V

    return-void
.end method

.method public setSessionsId(Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;)V
    .locals 4

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;->getUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get unique tag for sync. This may lead to unexpected tab sync behavior."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v2, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSetSyncSessionsId(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to write session sync tag. This may lead to unexpected tab sync behavior."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSetupInProgress(Z)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSetSetupInProgress(IZ)V

    return-void
.end method

.method public setSyncSetupCompleted()V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSetSyncSetupCompleted(I)V

    return-void
.end method

.method public signOut()V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSignOutSync(I)V

    return-void
.end method

.method public syncSignIn(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->syncSignInWithAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public syncSignInWithAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSignInSync(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->syncStateChanged()V

    return-void
.end method

.method public syncStateChanged()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;->syncStateChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
