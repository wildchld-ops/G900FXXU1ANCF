.class public Lcom/samsung/contacts/sim/makesimdbservice/MakeSimSingleOperation;
.super Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;
.source "MakeSimSingleOperation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public getADNEditable(I)Ljava/lang/String;
    .locals 1

    const-string v0, "adn_editable"

    return-object v0
.end method

.method public getADNEmailsUri(I)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/util/Constants;->ADN_EMAILS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getAdnAnrUri(I)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/util/Constants;->ADN_ANR_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getAdnUri(I)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/util/Constants;->ADN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getCardStatus(I)I
    .locals 2

    const-string v0, "gsm.sim.currentcardstatus"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFDNOnInitSimStatus(I)Ljava/lang/String;
    .locals 1

    const-string v0, "fdn_init_sim_status"

    return-object v0
.end method

.method public getFdnOnAdnDeleted(I)Ljava/lang/String;
    .locals 1

    const-string v0, "fdn_on_adn_deleted"

    return-object v0
.end method

.method public getICCType(I)Ljava/lang/String;
    .locals 1

    const-string v0, "ril.ICC_TYPE"

    return-object v0
.end method

.method public getIccChangeKey(I)Ljava/lang/String;
    .locals 1

    const-string v0, "ril.isIccChanged"

    return-object v0
.end method

.method public getIccChangedBootTime(I)Ljava/lang/String;
    .locals 1

    const-string v0, "runtime_firstboot_time"

    return-object v0
.end method

.method public getIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 1

    const-string v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    return-object v0
.end method

.method public getPBInitKey(I)Ljava/lang/String;
    .locals 1

    const-string v0, "ril.initPB"

    return-object v0
.end method

.method public getRawContactsADNEmailsUri(I)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/util/Constants;->RAW_CONTACT_ADN_EMAILS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getRawContactsADNUri(I)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/util/Constants;->RAW_CONTACT_ADN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getSimAccountName(I)Ljava/lang/String;
    .locals 1

    const-string v0, "primary.sim.account_name"

    return-object v0
.end method

.method public getSimAccountType(I)Ljava/lang/String;
    .locals 1

    const-string v0, "vnd.sec.contact.sim"

    return-object v0
.end method

.method public getSimDBReady(I)Ljava/lang/String;
    .locals 1

    const-string v0, "sim_db_ready"

    return-object v0
.end method

.method public getTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public isSimAccount(I)Ljava/lang/String;
    .locals 1

    const-string v0, " account_type = \'vnd.sec.contact.sim\' AND account_name = \'primary.sim.account_name\' "

    return-object v0
.end method
