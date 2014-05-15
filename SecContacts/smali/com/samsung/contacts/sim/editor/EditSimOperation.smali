.class public abstract Lcom/samsung/contacts/sim/editor/EditSimOperation;
.super Ljava/lang/Object;
.source "EditSimOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;,
        Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;,
        Lcom/samsung/contacts/sim/editor/EditSimOperation$AddAccountTypeInterface;,
        Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;,
        Lcom/samsung/contacts/sim/editor/EditSimOperation$EnsuerKindExistsSIMPhoneInterface;,
        Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimValuesDeltaInterface;,
        Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;
    }
.end annotation


# static fields
.field protected static final MAX_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_LimitNameLength"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/contacts/sim/editor/EditSimOperation;->MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addAccountType(Lcom/samsung/contacts/sim/editor/EditSimOperation$AddAccountTypeInterface;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/contacts/sim/editor/EditSimOperation$AddAccountTypeInterface;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract addSimAccounts(Landroid/accounts/Account;Lcom/android/contacts/common/model/account/AccountType;Landroid/accounts/Account;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Landroid/accounts/Account;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addSpecialSIMTextWatcherIfNeeded(Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;Landroid/content/Context;ILcom/android/contacts/common/model/dataitem/DataKind;Landroid/widget/EditText;Ljava/lang/String;)V
.end method

.method public abstract afterTextChangedForSim(Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;Landroid/content/Context;ILandroid/text/Editable;Landroid/widget/EditText;Lcom/android/contacts/common/model/dataitem/DataKind;)V
.end method

.method public abstract buildDiffForSim(Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimValuesDeltaInterface;Landroid/net/Uri;Landroid/content/ContentValues;ZZZ)Landroid/content/ContentProviderOperation$Builder;
.end method

.method public abstract buildDiffForSim(Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;Ljava/util/ArrayList;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildDiffForSim2(Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;Ljava/util/ArrayList;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation
.end method

.method public abstract checkValidLengthOfNameForSim(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;)Z
.end method

.method public abstract ensureKindExistsSIMPhone(Lcom/samsung/contacts/sim/editor/EditSimOperation$EnsuerKindExistsSIMPhoneInterface;Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)V
.end method

.method public abstract getAnrConfigValue()I
.end method

.method public abstract getAnrConfigValue(I)I
.end method

.method public abstract getWritableAccountsWithoutSim(Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWritableAccountsWithoutSim1(Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWritableAccountsWithoutSim2(Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEmailAvailable(Landroid/content/Context;I)Z
.end method

.method public abstract isSim1Account(Ljava/lang/String;)Z
.end method

.method public abstract isSim2Account(Ljava/lang/String;)Z
.end method

.method public abstract isSimAccount(Lcom/android/contacts/common/model/account/AccountType;)Z
.end method

.method public abstract isSimAccount(Lcom/android/contacts/model/RawContactDelta;)Z
.end method

.method public abstract isSimAccount(Ljava/lang/String;)Z
.end method

.method public abstract isSimDbSupport()Z
.end method

.method public abstract isSimFull(Landroid/content/Context;I)Z
.end method

.method public abstract isTwoGSim(Landroid/content/Context;)Z
.end method

.method public abstract parseExtrasForSIM(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V
.end method

.method public abstract readCurrentValueFromState(Landroid/content/Context;ILcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeSimAccountsIfUnavailable(Landroid/content/Context;ZLjava/util/ArrayList;Landroid/accounts/Account;Landroid/accounts/Account;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Landroid/accounts/Account;",
            "Landroid/accounts/Account;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setLengthFilterForSIM(Landroid/content/Context;ILandroid/widget/EditText;Lcom/android/contacts/common/model/account/AccountType$EditField;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I
.end method

.method public abstract setSimLayout(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Landroid/view/View;)V
.end method

.method public abstract showSimFullToast(Landroid/content/Context;I)V
.end method

.method public abstract showSimInitializingToast(Landroid/content/Context;I)V
.end method

.method public abstract whichSim(Lcom/android/contacts/model/RawContactDelta;)I
.end method

.method public abstract whichSim(Ljava/lang/String;)I
.end method
