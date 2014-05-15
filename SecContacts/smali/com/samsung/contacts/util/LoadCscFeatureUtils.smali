.class public Lcom/samsung/contacts/util/LoadCscFeatureUtils;
.super Ljava/lang/Object;
.source "LoadCscFeatureUtils.java"


# static fields
.field private static mBlockFormatMyProfile:Z

.field private static mConfigEntryPhoneApp:Ljava/lang/String;

.field private static mConfigLogDisplayType:Ljava/lang/String;

.field private static mConfigLogsOpStyleVariation:Ljava/lang/String;

.field private static mConfigZipCodeInputType:Ljava/lang/String;

.field private static mDisableMenuGalSearch:Z

.field private static mDisableMenuNameOrder:Z

.field private static mDisableMenuSimExport:Z

.field private static mDisableMenuSimExportImport:Z

.field private static mDisablePhoneNumberFormatting:Z

.field private static mDisableSimContact:Z

.field private static mEnableAAB:Z

.field private static mEnableBackupAssistance:Z

.field private static mEnableBlockCallMsg:Z

.field private static mEnableCallButtonInList:Z

.field private static mEnableCopyToDialer:Z

.field private static mEnableFixedInputMode:Z

.field private static mEnableIpCall:Z

.field private static mEnableLTNCallerIDMatch:Z

.field private static mEnableMovialWFC:Z

.field private static mEnableMultiSimContacts:Z

.field private static mEnableNoSyncIcon:Z

.field private static mEnablePhoneReadOnlyAccountType:Z

.field private static mEnableSamsungWFC:Z

.field private static mEnableToastForStopDeleting:Z

.field private static mEnableVZCloud:Z

.field private static mEnableVoiceCallRecording:Ljava/lang/String;

.field private static mEnableYellowPage:Z

.field private static mReplaceGsmCharToAndroidFormat:Z

.field private static mUseEccDialerInCaseOfNoInternalMemory:Z

.field private static mUseUniNameField:Z

.field private static sLoadCscFeatureUtils:Lcom/samsung/contacts/util/LoadCscFeatureUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->sLoadCscFeatureUtils:Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mUseUniNameField:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableMenuNameOrder:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisablePhoneNumberFormatting:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableCopyToDialer:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableMultiSimContacts:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableFixedInputMode:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableNoSyncIcon:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableIpCall:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableBlockCallMsg:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnablePhoneReadOnlyAccountType:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableCallButtonInList:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mUseEccDialerInCaseOfNoInternalMemory:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mBlockFormatMyProfile:Z

    const-string v0, "OPEN"

    sput-object v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mConfigLogDisplayType:Ljava/lang/String;

    const-string v0, "OPEN"

    sput-object v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mConfigLogsOpStyleVariation:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mConfigZipCodeInputType:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableMovialWFC:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableSamsungWFC:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableYellowPage:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableVZCloud:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableLTNCallerIDMatch:Z

    const-string v0, "Recent"

    sput-object v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mConfigEntryPhoneApp:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mReplaceGsmCharToAndroidFormat:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableMenuGalSearch:Z

    const-string v0, ""

    sput-object v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableVoiceCallRecording:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableToastForStopDeleting:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableMenuSimExport:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableSimContact:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableMenuSimExportImport:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableBackupAssistance:Z

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableAAB:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->sLoadCscFeatureUtils:Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    invoke-direct {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;-><init>()V

    sput-object v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->sLoadCscFeatureUtils:Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->setCscFeature()V

    :cond_0
    sget-object v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->sLoadCscFeatureUtils:Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    return-object v0
.end method

.method private static setCscFeature()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mUseUniNameField:Z

    const-string v1, "CscFeature_Contact_DisableMenuNameOrder"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableMenuNameOrder:Z

    const-string v1, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisablePhoneNumberFormatting:Z

    const-string v1, "CscFeature_Contact_EnableCopyToDialer"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableCopyToDialer:Z

    const-string v1, "CscFeature_Contact_EnableMenuMDN"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableMultiSimContacts:Z

    const-string v1, "CscFeature_Contact_FixedEngModeInListBrowsing"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableFixedInputMode:Z

    const-string v1, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableNoSyncIcon:Z

    const-string v1, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableIpCall:Z

    const-string v1, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableBlockCallMsg:Z

    const-string v1, "ReadOnly"

    const-string v2, "CscFeature_Contact_SetPropertyForPreloadedContact"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnablePhoneReadOnlyAccountType:Z

    const-string v1, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableCallButtonInList:Z

    const-string v1, "CscFeature_VoiceCall_UseEccDialerInCaseOfNoInternalMemory"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mUseEccDialerInCaseOfNoInternalMemory:Z

    const-string v1, "CscFeature_Contact_ConfigLogDisplayType"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mConfigLogDisplayType:Ljava/lang/String;

    const-string v1, "CscFeature_Contact_ConfigLogsOpStyleVariation"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mConfigLogsOpStyleVariation:Ljava/lang/String;

    const-string v1, "CscFeature_Contact_ConfigZipCodeInputType"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mConfigZipCodeInputType:Ljava/lang/String;

    const-string v1, "CscFeature_Contact_ConfigForYellowPage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableYellowPage:Z

    const-string v1, "CscFeature_WFC_EnableMovialWfc"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableMovialWFC:Z

    const-string v1, "CscFeature_WFC_EnableSamsungWfc"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableSamsungWFC:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mBlockFormatMyProfile:Z

    const-string v1, "CscFeature_Contact_EnableVZCloudMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableVZCloud:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigEntryPhoneApp"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mConfigEntryPhoneApp:Ljava/lang/String;

    const-string v1, "CscFeature_VoiceCall_ReplaceGsmCharToAndroidFormat"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mReplaceGsmCharToAndroidFormat:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableLTNCallerIDMatch:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_DisableMenu4GalSearch"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableMenuGalSearch:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_VoiceCall_ConfigRecording"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableVoiceCallRecording:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableToastPopup4StopDeletingOperationByCall"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableToastForStopDeleting:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableMenuSimExport"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableMenuSimExport:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableSIMContacts"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableSimContact:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableMenuSimExportImport"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableMenuSimExportImport:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableBackupAssistance:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableAAB:Z

    return-void
.end method


# virtual methods
.method public getBlockFormatMyProfile()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mBlockFormatMyProfile:Z

    return v0
.end method

.method public getConfigLogDisplayType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mConfigLogDisplayType:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigLogsOpStyleVariation()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mConfigLogsOpStyleVariation:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigZipCodeInputType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mConfigZipCodeInputType:Ljava/lang/String;

    return-object v0
.end method

.method public getDialpadNumberSharpAction()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigDialShortNumSharp"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDisableDialpadChooser()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigDialerChooser"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDisableEmergencyCall()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_DisableCallForEmergencyLogs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisableMenuGalSearch()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableMenuGalSearch:Z

    return v0
.end method

.method public getDisableMenuNameOrder()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableMenuNameOrder:Z

    return v0
.end method

.method public getDisableMenuSimExport()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableMenuSimExport:Z

    return v0
.end method

.method public getDisableMenuSimExportImport()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableMenuSimExportImport:Z

    return v0
.end method

.method public getDisablePhoneNumberFormatting()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisablePhoneNumberFormatting:Z

    return v0
.end method

.method public getDisableSimContact()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mDisableSimContact:Z

    return v0
.end method

.method public getEnableAAB()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableAAB:Z

    return v0
.end method

.method public getEnableAssistDialing()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableAssistDialing"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnableBackupAssistance()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableBackupAssistance:Z

    return v0
.end method

.method public getEnableBlockCallMsg()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableBlockCallMsg:Z

    return v0
.end method

.method public getEnableCallButtonInList()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableCallButtonInList:Z

    return v0
.end method

.method public getEnableCnam()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCnam"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnableCopyToDialer()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableCopyToDialer:Z

    return v0
.end method

.method public getEnableFixedInputMode()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableFixedInputMode:Z

    return v0
.end method

.method public getEnableIpCall()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableIpCall:Z

    return v0
.end method

.method public getEnableLTNCallerIDMatch()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableLTNCallerIDMatch:Z

    return v0
.end method

.method public getEnableLogsTimeBase()Z
    .locals 3

    const-string v0, "RoamingTimeZone"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigLogsTimeBase"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnableMenuDeleteHistory()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableMenuDeleteHistory"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnableMovialWFC()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableMovialWFC:Z

    return v0
.end method

.method public getEnableMultiSimContacts()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableMultiSimContacts:Z

    return v0
.end method

.method public getEnableNoSyncIcon()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableNoSyncIcon:Z

    return v0
.end method

.method public getEnableNonVolatileViewBySetting()Z
    .locals 3

    const-string v0, "ViewBy"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_KeepUserProperty"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnableRadioType()Z
    .locals 3

    const-string v0, "RadioType"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigTelNumType"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnableRemoveCallDuration()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_DisableCallDuration"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnableSamsungWFC()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableSamsungWFC:Z

    return v0
.end method

.method public getEnableToastForStopDeleting()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableToastForStopDeleting:Z

    return v0
.end method

.method public getEnableVIPMode()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableVIPMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnableVZCloud()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableVZCloud:Z

    return v0
.end method

.method public getEnableViewByDefaultAllCalls()Z
    .locals 3

    const-string v0, "AllCalls"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigDefaultViewBy"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnableVoiceCallRecording()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableVoiceCallRecording:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableYellowPage()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mEnableYellowPage:Z

    return v0
.end method

.method public getEnablegActionForDialOneLong()Z
    .locals 3

    const-string v0, "CHNCDMA"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigActionForDialOneLong"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnablegeSurfingDialup()Z
    .locals 3

    const-string v0, "CHNCDMA"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigActionForDialOneLong"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpStyleVariation()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigOpStyleVariation"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadCscFeatureUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOpStyleVariation mOpStyleVariation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getReplaceGsmCharToAndroidFormat()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mReplaceGsmCharToAndroidFormat:Z

    return v0
.end method

.method public getUseChameleon()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_UseChameleon"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUseEccDialerInCaseOfNoInternalMemory()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mUseEccDialerInCaseOfNoInternalMemory:Z

    return v0
.end method

.method public getUseFixedFontSize()Z
    .locals 3

    const-string v0, "Fixed"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigDialerFont"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUseFixedFontSizeForKeypadLettter()Z
    .locals 3

    const-string v0, "FixedKeypadLetter"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigDialerFont"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUseUniNameField()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mUseUniNameField:Z

    return v0
.end method

.method public getViewByType()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_LogsViewBy"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadCscFeatureUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getViewByType() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getViewByTypeOfLogs()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_VoiceCall_LogListViewConfig"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadCscFeatureUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getViewByTypeOfLogs() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isDisableAddCall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDisableVoiceMail()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_DisableVoicemail"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldBeSelectedDialerTab()Z
    .locals 2

    const-string v0, "Dial"

    sget-object v1, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->mConfigEntryPhoneApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
