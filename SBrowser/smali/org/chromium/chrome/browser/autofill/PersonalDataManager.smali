.class public Lorg/chromium/chrome/browser/autofill/PersonalDataManager;
.super Ljava/lang/Object;
.source "PersonalDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;,
        Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;,
        Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "autofill"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sManager:Lorg/chromium/chrome/browser/autofill/PersonalDataManager;


# instance fields
.field private final mDataObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersonalDataManagerAndroid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeInit()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:I

    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->sManager:Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->sManager:Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->sManager:Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    return-object v0
.end method

.method private native nativeGetCreditCardByGUID(ILjava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;
.end method

.method private native nativeGetCreditCardByIndex(II)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;
.end method

.method private native nativeGetCreditCardCount(I)I
.end method

.method private native nativeGetProfileByGUID(ILjava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;
.end method

.method private native nativeGetProfileByIndex(II)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;
.end method

.method private native nativeGetProfileCount(I)I
.end method

.method private native nativeInit()I
.end method

.method private native nativeRemoveByGUID(ILjava/lang/String;)V
.end method

.method private native nativeSetCreditCard(ILorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;
.end method

.method private native nativeSetProfile(ILorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Ljava/lang/String;
.end method

.method private personalDataChanged()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;->onPersonalDataChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public deleteCreditCard(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeRemoveByGUID(ILjava/lang/String;)V

    return-void
.end method

.method public deleteProfile(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeRemoveByGUID(ILjava/lang/String;)V

    return-void
.end method

.method public getCreditCard(Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeGetCreditCardByGUID(ILjava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    move-result-object v0

    return-object v0
.end method

.method public getCreditCards()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v3, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:I

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeGetCreditCardCount(I)I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget v3, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:I

    invoke-direct {p0, v3, v2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeGetCreditCardByIndex(II)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getProfile(Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeGetProfileByGUID(ILjava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-result-object v0

    return-object v0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v3, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:I

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeGetProfileCount(I)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget v3, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:I

    invoke-direct {p0, v3, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeGetProfileByIndex(II)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public onAutoFillDataUpdateFail()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;->onAutoFillDataUpdateFail()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerDataObserver(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCreditCard(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeSetCreditCard(ILorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProfile(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeSetProfile(ILorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterDataObserver(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
