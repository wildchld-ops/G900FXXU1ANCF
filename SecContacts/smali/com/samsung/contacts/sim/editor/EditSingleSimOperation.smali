.class public Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;
.super Lcom/samsung/contacts/sim/editor/EditSimOperation;
.source "EditSingleSimOperation.java"


# static fields
.field public static mSimNamelength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->mSimNamelength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/sim/editor/EditSimOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public addAccountType(Lcom/samsung/contacts/sim/editor/EditSimOperation$AddAccountTypeInterface;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
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

    invoke-interface {p1, p2, p4, p5}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddAccountTypeInterface;->addAccountTypeImpl(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    const/4 p1, 0x0

    return-void
.end method

.method public addSimAccounts(Landroid/accounts/Account;Lcom/android/contacts/common/model/account/AccountType;Landroid/accounts/Account;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
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

    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSpecialSIMTextWatcherIfNeeded(Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;Landroid/content/Context;ILcom/android/contacts/common/model/dataitem/DataKind;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p4, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v1, "#displayName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v8

    move v4, v8

    move-object v5, p5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->setBeforeStrImpl(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->getBeforeStrImpl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v0, v7

    if-le v0, v4, :cond_0

    invoke-static {p2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->getBeforeStrImpl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->setCurrentStrImpl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->getCurrentStrImpl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->getCurrentStrImpl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->getCurrentStrImpl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    new-instance v0, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation$1;-><init>(Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;Landroid/content/Context;ILandroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method public afterTextChangedForSim(Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;Landroid/content/Context;ILandroid/text/Editable;Landroid/widget/EditText;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 9

    invoke-virtual {p5}, Landroid/widget/EditText;->getInputType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    const/4 v4, 0x0

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;->getExtfullyOccupiedCaseLen()I

    move-result v6

    if-le v6, v4, :cond_0

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;->getExtfullyOccupiedCaseLen()I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    :cond_0
    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v4

    :cond_1
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/text/InputFilter;

    const/4 v7, 0x0

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v8, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v6, v7

    invoke-virtual {p5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v4

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;->getExtfullyOccupiedCaseLen()I

    move-result v6

    if-le v6, v4, :cond_4

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;->getExtfullyOccupiedCaseLen()I

    move-result v4

    :cond_4
    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v4

    :cond_5
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/text/InputFilter;

    const/4 v7, 0x0

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v8, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v6, v7

    invoke-virtual {p5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_6
    const-string v6, "#displayName"

    iget-object v7, p6, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    invoke-static {p2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v5

    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableKsc5601Encoding"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "KSC5601"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v6, v3

    invoke-interface {p1, v6}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;->setTotalTextByte(I)V

    :goto_1
    invoke-interface {p4}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_7

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;->getTotalTextByte()I

    move-result v6

    if-le v6, v5, :cond_7

    invoke-interface {p4}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p4}, Landroid/text/Editable;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    invoke-interface {p4, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;->getExtfullyOccupiedCaseLen()I

    move-result v6

    invoke-interface {p1, v6}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;->setExtfullyOccupiedCaseLen(I)V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->chkKorean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "ISO-10646-UCS-2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v6, v3

    invoke-interface {p1, v6}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;->setTotalTextByte(I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v6, "EditSim"

    const-string v7, "unsupportedEncodingException"

    invoke-static {v6, v7, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_9
    :try_start_2
    invoke-static {p2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v6, v2

    invoke-interface {p1, v6}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;->setTotalTextByte(I)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public buildDiffForSim(Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimValuesDeltaInterface;Landroid/net/Uri;Landroid/content/ContentValues;ZZZ)Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimValuesDeltaInterface;->getAfterImpl()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimValuesDeltaInterface;->getIdColumnImpl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object v0

    :cond_1
    if-eqz p5, :cond_2

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimValuesDeltaInterface;->getIdImpl()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimValuesDeltaInterface;->getIdImpl()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_0

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimValuesDeltaInterface;->getIdImpl()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimValuesDeltaInterface;->getIdImpl()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method public buildDiffForSim(Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 35
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

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->getAnrConfigValue()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;->getValuesImpl()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;->getValuesImpl()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v6

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    const/4 v7, 0x1

    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;->getValuesImpl()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v10

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/16 v32, 0x0

    const/16 v28, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x4

    new-array v0, v2, [Z

    move-object/from16 v31, v0

    fill-array-data v31, :array_0

    invoke-static/range {p3 .. p3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v25

    const/16 v23, 0x1

    const/16 v18, 0x1

    const/16 v20, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    if-lez v9, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v23

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v24

    :cond_0
    const/4 v2, 0x3

    if-le v9, v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v18

    const/4 v2, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v20

    const/4 v2, 0x3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v22

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v19

    const/4 v2, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v21

    :cond_1
    const-string v2, "EditSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "buildDiffForSim :  isAnrFull = "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "EditSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "buildDiffForSim :  isAnrAFull = "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "EditSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "buildDiffForSim :  isAnrBFull = "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "EditSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "buildDiffForSim :  isAnrCFull = "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;->getEntriesImpl()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/common/model/ValuesDelta;

    if-nez v6, :cond_3

    iget-object v2, v12, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v2, :cond_3

    const-string v2, "mimetype"

    invoke-virtual {v12, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v12, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/4 v2, 0x1

    if-ne v7, v2, :cond_8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v27, :cond_6

    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_4

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->mSimNamelength:I

    if-le v2, v3, :cond_4

    sget v2, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->mSimNamelength:I

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    :cond_4
    :goto_2
    const-string v2, "newTag"

    move-object/from16 v0, v27

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_6
    if-eqz v27, :cond_4

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->mSimNamelength:I

    if-le v2, v3, :cond_4

    sget v2, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->mSimNamelength:I

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    goto :goto_2

    :cond_7
    if-nez v27, :cond_4

    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto :goto_2

    :cond_8
    if-nez v27, :cond_9

    const-string v27, ""

    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v27, :cond_a

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->mSimNamelength:I

    if-le v2, v3, :cond_a

    sget v2, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->mSimNamelength:I

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    :cond_a
    const-string v2, "tag"

    move-object/from16 v0, v27

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v28, 0x1

    goto/16 :goto_1

    :cond_b
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v12, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const/4 v2, 0x1

    if-ne v7, v2, :cond_16

    if-nez v29, :cond_c

    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    :cond_c
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-nez v30, :cond_d

    const-string v2, "newNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    :cond_d
    if-lez v9, :cond_e

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_e

    if-eqz v24, :cond_e

    const-string v2, "newAnrNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    const/4 v2, 0x3

    if-le v9, v2, :cond_11

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_f

    if-nez v24, :cond_f

    if-nez v19, :cond_10

    :cond_f
    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_11

    if-eqz v19, :cond_11

    :cond_10
    const-string v2, "newAnrANumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_11
    const/4 v2, 0x3

    if-le v9, v2, :cond_15

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_12

    if-nez v24, :cond_12

    if-nez v19, :cond_12

    if-nez v21, :cond_14

    :cond_12
    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_13

    if-nez v19, :cond_13

    if-nez v21, :cond_14

    :cond_13
    const/4 v2, 0x3

    move/from16 v0, v30

    if-ne v0, v2, :cond_15

    if-eqz v21, :cond_15

    :cond_14
    const-string v2, "newAnrBNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_15
    const-string v2, "newAnrCNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_16
    if-nez v29, :cond_17

    const-string v29, ""

    :cond_17
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-nez v30, :cond_18

    const-string v2, "number"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v32, 0x1

    :goto_4
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    :cond_18
    if-lez v9, :cond_19

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_19

    if-nez v23, :cond_19

    const-string v2, "AnrNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v31, v2

    goto :goto_4

    :cond_19
    const/4 v2, 0x3

    if-le v9, v2, :cond_1c

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_1a

    if-eqz v18, :cond_1b

    :cond_1a
    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_1c

    if-nez v18, :cond_1c

    :cond_1b
    const-string v2, "AnrANumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v31, v2

    goto :goto_4

    :cond_1c
    const/4 v2, 0x3

    if-le v9, v2, :cond_20

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_1d

    if-eqz v20, :cond_1f

    :cond_1d
    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_1e

    if-eqz v20, :cond_1f

    :cond_1e
    const/4 v2, 0x3

    move/from16 v0, v30

    if-ne v0, v2, :cond_20

    if-nez v20, :cond_20

    :cond_1f
    const-string v2, "AnrBNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v31, v2

    goto :goto_4

    :cond_20
    const-string v2, "AnrCNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v31, v2

    goto :goto_4

    :cond_21
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v12, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x1

    if-ne v7, v2, :cond_23

    if-nez v13, :cond_22

    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_22
    const-string v2, "newEmails"

    invoke-virtual {v4, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_23
    if-nez v13, :cond_24

    const-string v13, ""

    :cond_24
    const-string v2, "emails"

    invoke-virtual {v4, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_25
    const-string v2, "EditSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "buildDiffForSim : phoneNumberCount = "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v5, v2, :cond_2c

    if-nez v28, :cond_26

    const-string v2, "tag"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    if-nez v32, :cond_27

    const-string v2, "number"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    if-nez v14, :cond_28

    const-string v2, "emails"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    if-lez v9, :cond_2c

    const/4 v2, 0x0

    aget-boolean v2, v31, v2

    if-nez v2, :cond_29

    if-nez v23, :cond_29

    const-string v2, "AnrNumber"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    const/4 v2, 0x3

    if-le v9, v2, :cond_2c

    const/4 v2, 0x1

    aget-boolean v2, v31, v2

    if-nez v2, :cond_2a

    if-nez v18, :cond_2a

    const-string v2, "AnrANumber"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const/4 v2, 0x2

    aget-boolean v2, v31, v2

    if-nez v2, :cond_2b

    if-nez v20, :cond_2b

    const-string v2, "AnrBNumber"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    const/4 v2, 0x3

    aget-boolean v2, v31, v2

    if-nez v2, :cond_2c

    if-nez v22, :cond_2c

    const-string v2, "AnrCNumber"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    invoke-interface/range {p1 .. p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;->getValuesImpl()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    const-string v3, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiffForSim(Landroid/net/Uri;Landroid/content/ContentValues;ZZZ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v11}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;->possibleAddImpl(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v15, :cond_2e

    const/4 v8, 0x1

    :goto_5
    if-eqz v8, :cond_2d

    if-eqz v7, :cond_2d

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v2}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;->buildSetAggregationModeImpl(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v2}, Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;->buildSetAggregationModeImpl(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    const/16 p1, 0x0

    return-void

    :cond_2e
    const/4 v8, 0x0

    goto :goto_5

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public buildDiffForSim2(Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->buildDiffForSim(Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;Ljava/util/ArrayList;Landroid/content/Context;)V

    return-void
.end method

.method public checkValidLengthOfNameForSim(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;)Z
    .locals 20

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v15}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v4, v0, [B

    if-eqz v17, :cond_a

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v9

    const-string v18, "vnd.sec.contact.sim"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual {v9}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v8

    invoke-virtual {v9}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v11

    if-eqz v8, :cond_9

    const-string v18, "vnd.android.cursor.item/name"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v10, 0x0

    if-eqz v12, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/ValuesDelta;

    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v9, v10}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    :cond_1
    if-eqz v10, :cond_2

    array-length v0, v4

    move/from16 v18, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->SpecialCharOffset(Ljava/lang/String;)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    if-le v0, v11, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    const v18, 0x7f0e0245

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_2
    invoke-virtual {v9}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v18

    const-string v19, "2"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const-string v18, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v5, 0x0

    if-eqz v6, :cond_3

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/ValuesDelta;

    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    if-eqz v10, :cond_4

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    :cond_4
    const-string v18, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    if-nez v14, :cond_5

    const v18, 0x7f0e0244

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    const/16 v18, 0x0

    goto :goto_0

    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/common/model/ValuesDelta;

    if-eqz v16, :cond_6

    const-string v18, "data1"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_6

    :cond_7
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_a

    :cond_8
    const v18, 0x7f0e0244

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_9
    const v18, 0x7f0e0068

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public chkKorean(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7a3

    if-gt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xac00

    if-ge v1, v2, :cond_4

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x11ff

    if-gt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x1100

    if-ge v1, v2, :cond_4

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7fb

    if-gt v1, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7b0

    if-ge v1, v2, :cond_4

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xa97c

    if-gt v1, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xa960

    if-ge v1, v2, :cond_4

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x318e

    if-gt v1, v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3130

    if-lt v1, v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public ensureKindExistsSIMPhone(Lcom/samsung/contacts/sim/editor/EditSimOperation$EnsuerKindExistsSIMPhoneInterface;Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p4, p5}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {p3, p5, v7}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v7

    if-lez v7, :cond_4

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->getAnrConfigValue()I

    move-result v0

    invoke-static {p2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    if-nez v3, :cond_5

    if-eqz v5, :cond_5

    invoke-interface {p1, p3, v5}, Lcom/samsung/contacts/sim/editor/EditSimOperation$EnsuerKindExistsSIMPhoneInterface;->insertChildImpl(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v7, p4, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    const-string v8, "vnd.sec.contact.sim"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-lez v0, :cond_3

    invoke-virtual {v6}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {p1, p3, v5}, Lcom/samsung/contacts/sim/editor/EditSimOperation$EnsuerKindExistsSIMPhoneInterface;->insertChildImpl(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    :cond_0
    const/4 v7, 0x3

    if-le v0, v7, :cond_3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {p1, p3, v5}, Lcom/samsung/contacts/sim/editor/EditSimOperation$EnsuerKindExistsSIMPhoneInterface;->insertChildImpl(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {p1, p3, v5}, Lcom/samsung/contacts/sim/editor/EditSimOperation$EnsuerKindExistsSIMPhoneInterface;->insertChildImpl(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    :cond_2
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {p1, p3, v5}, Lcom/samsung/contacts/sim/editor/EditSimOperation$EnsuerKindExistsSIMPhoneInterface;->insertChildImpl(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    :cond_3
    const/4 p1, 0x0

    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    iget-object v7, p4, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    const-string v8, "vnd.sec.contact.sim"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-lez v0, :cond_3

    invoke-virtual {v6}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getAnrFieldCount()I

    move-result v1

    const/4 v7, 0x1

    invoke-virtual {p3, p5, v7}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v7, v2

    if-ge v4, v7, :cond_3

    const-string v7, "EditSim"

    const-string v8, "ensureKindExists () : insertChild for edit"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p3, v5}, Lcom/samsung/contacts/sim/editor/EditSimOperation$EnsuerKindExistsSIMPhoneInterface;->insertChildImpl(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getAnrConfigValue()I
    .locals 2

    const-string v0, "2"

    const-string v1, "ril.ICC_TYPE"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ANRConfig"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnrConfigValue(I)I
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->getAnrConfigValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWritableAccountsWithoutSim(Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    invoke-interface {p1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;->ensureAccountsLoadedImpl()V

    invoke-static {p2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object p3

    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->isSimAccount(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    move-object p3, v1

    goto :goto_0
.end method

.method public getWritableAccountsWithoutSim1(Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 1
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->getWritableAccountsWithoutSim(Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWritableAccountsWithoutSim2(Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 1
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->getWritableAccountsWithoutSim(Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmailAvailable(Landroid/content/Context;I)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->isEmailCapable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailCapable(Landroid/content/Context;I)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSim1Account(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->isSimAccount(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSim2Account(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSimAccount(Lcom/android/contacts/common/model/account/AccountType;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimAccount(Lcom/android/contacts/model/RawContactDelta;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSimAccount(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSimDbSupport()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableSIMContacts"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSimFull(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v0

    return v0
.end method

.method public isTwoGSim(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parseExtrasForSIM(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 28

    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v23

    const-string v2, "name"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v2, "cnam"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    const-string v2, "data3"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v23, :cond_2

    invoke-static/range {v26 .. v26}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v24, :cond_3

    invoke-static/range {v25 .. v25}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "data2"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data3"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data1"

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v20

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v11

    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    const-string v6, "phone_type"

    const-string v7, "phone"

    const-string v8, "data1"

    const-string v9, "vnd.android.cursor.item/phone_v2"

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v12, p1

    invoke-virtual/range {v2 .. v12}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->parseExtrasForSIM(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/content/Context;)Z

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getEmailLength()I

    move-result v21

    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    const-string v16, "email_type"

    const-string v17, "email"

    const-string v18, "data1"

    const-string v19, "vnd.android.cursor.item/email_v2"

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    move-object v14, v4

    move-object/from16 v15, p4

    move-object/from16 v22, p1

    invoke-virtual/range {v12 .. v22}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->parseExtrasForSIM(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/content/Context;)Z

    goto/16 :goto_0

    :cond_3
    const-string v2, "data1"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public parseExtrasForSIM(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/content/Context;)Z
    .locals 17

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v10, 0x0

    if-nez p2, :cond_0

    const/4 v15, 0x0

    :goto_0
    return v15

    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/android/contacts/model/RawContactModifier;->canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v2

    if-eqz v14, :cond_2

    invoke-static {v14}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v13, 0x1

    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-virtual {v0, v1, v15}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->isEmailAvailable(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v13, :cond_1

    if-nez v2, :cond_3

    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual/range {p3 .. p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v15, v12}, Lcom/android/contacts/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v6

    const/4 v3, 0x0

    move-object v8, v14

    const-string v15, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p7

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    if-nez v9, :cond_5

    if-eqz v8, :cond_5

    const v15, 0x7f0e0433

    const/16 v16, 0x0

    move-object/from16 v0, p10

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    const/high16 v15, -0x8000

    goto :goto_2

    :cond_5
    if-eqz p8, :cond_6

    if-nez v3, :cond_6

    const/4 v15, 0x0

    goto :goto_0

    :cond_6
    if-nez p8, :cond_7

    if-nez v3, :cond_7

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    :cond_7
    :goto_3
    if-eqz v8, :cond_f

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_f

    if-lez p9, :cond_f

    const-string v15, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p7

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_d

    add-int/lit8 v11, p9, 0x1

    :goto_4
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-le v15, v11, :cond_8

    const/4 v10, 0x1

    const/4 v15, 0x0

    invoke-interface {v8, v15, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p6

    invoke-virtual {v3, v0, v15}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_9

    iget-object v15, v6, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v15, :cond_9

    invoke-virtual/range {p3 .. p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v6, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v3, v15, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move v15, v10

    goto/16 :goto_0

    :cond_a
    const-string v15, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p7

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_b

    const/4 v15, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    if-nez v3, :cond_7

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    goto/16 :goto_3

    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    if-nez v3, :cond_7

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    goto/16 :goto_3

    :cond_d
    move/from16 v11, p9

    goto :goto_4

    :cond_e
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v15

    move/from16 v0, p9

    if-le v15, v0, :cond_8

    const/4 v10, 0x1

    const/4 v15, 0x0

    move/from16 v0, p9

    invoke-interface {v8, v15, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_5

    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public readCurrentValueFromState(Landroid/content/Context;ILcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p5, p4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeSimAccountsIfUnavailable(Landroid/content/Context;ZLjava/util/ArrayList;Landroid/accounts/Account;Landroid/accounts/Account;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 1
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

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    check-cast p6, Lcom/samsung/contacts/model/account/SimAccountType;

    invoke-virtual {p6}, Lcom/samsung/contacts/model/account/SimAccountType;->areContactsWritable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisableMenuSimExportImport()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisableMenuSimExport()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public setLengthFilterForSIM(Landroid/content/Context;ILandroid/widget/EditText;Lcom/android/contacts/common/model/account/AccountType$EditField;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget v3, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->MAX_LENGTH:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x3e8

    :cond_0
    const/4 v1, 0x0

    iget-object v4, p5, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v5, "#displayName"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v1

    sput v1, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->mSimNamelength:I

    :cond_1
    :goto_0
    new-array v4, v6, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return p7

    :cond_2
    iget-object v4, p5, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 p7, 0x0

    if-eqz p6, :cond_4

    iget-object v4, p4, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p6, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p4, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p6, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v6, :cond_4

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    :goto_1
    if-eqz p6, :cond_1

    iget-object v4, p4, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p6, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p4, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p6, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    if-lez v1, :cond_1

    move-object v4, p1

    check-cast v4, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v4

    mul-int/lit8 v1, v4, 0x2

    move p7, v1

    iget-object v4, p4, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p6, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    iget-object v4, p4, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p6, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_5

    iget-object v5, p4, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p6, v5, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v1

    goto :goto_1

    :cond_5
    iget-object v4, p4, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p6, v4, v2}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p5, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getEmailLength()I

    move-result v1

    goto/16 :goto_0
.end method

.method public setSimLayout(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Landroid/view/View;)V
    .locals 8

    instance-of v3, p4, Lcom/android/contacts/editor/StructuredNameEditorView;

    if-eqz v3, :cond_3

    move-object v3, p4

    check-cast v3, Lcom/android/contacts/editor/StructuredNameEditorView;

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0100

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0101

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/contacts/editor/StructuredNameEditorView;->setPaddings(IIII)V

    :cond_0
    const v3, 0x7f0802dd

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->getAnrConfigValue()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-static {p1, p2, p3, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExistsSIMPhone(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)V

    :goto_1
    iget-object v3, p3, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->whichSim(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;->isEmailAvailable(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-static {p2, p3, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-static {p2, p3, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_1
.end method

.method public showSimFullToast(Landroid/content/Context;I)V
    .locals 2

    const v0, 0x7f0e023e

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showSimInitializingToast(Landroid/content/Context;I)V
    .locals 2

    const v0, 0x7f0e0361

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public whichSim(Lcom/android/contacts/model/RawContactDelta;)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "vnd.sec.contact.sim"

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "vnd.sec.contact.sim2"

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public whichSim(Ljava/lang/String;)I
    .locals 1

    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "vnd.sec.contact.sim2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
