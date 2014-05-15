.class public Lcom/samsung/contacts/sim/PhoneBookSingleSimOperation;
.super Lcom/samsung/contacts/sim/PhoneBookSimOperation;
.source "PhoneBookSingleSimOperation.java"


# static fields
.field private static final NOT_USED_STR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSingleSimOperation;->NOT_USED_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public copyAllNumberToSim(JII)I
    .locals 1

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/contacts/sim/PhoneBookSingleSimOperation;->copyAllNumberToSim(JI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public copyToSim(JIZ)I
    .locals 1

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/contacts/sim/PhoneBookSingleSimOperation;->copyToSim(JZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public getAnrFieldCount(I)I
    .locals 1

    const/16 v0, -0x3e8

    return v0
.end method

.method public getEmailLength(I)I
    .locals 1

    const/16 v0, -0x3e8

    return v0
.end method

.method public getEnableCount(I)I
    .locals 2

    sget v0, Lcom/samsung/contacts/sim/PhoneBookSingleSimOperation;->mMaxCount:I

    sget v1, Lcom/samsung/contacts/sim/PhoneBookSingleSimOperation;->mUsedCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNameLength(I)I
    .locals 1

    const/16 v0, -0x3e8

    return v0
.end method

.method public getNumberLength(I)I
    .locals 1

    const/16 v0, -0x3e8

    return v0
.end method

.method public getSimContactDetailIcon(I)I
    .locals 1

    const/16 v0, -0x3e8

    return v0
.end method

.method public getSimIcon(I)I
    .locals 1

    const v0, 0x7f0200b3

    return v0
.end method

.method public getSimName(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSingleSimOperation;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0240

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimType(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSingleSimOperation;->NOT_USED_STR:Ljava/lang/String;

    return-object v0
.end method

.method public hasIccCard(I)Z
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isAnrFull(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAnrSupported(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmailFull(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSimDBReady(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSimEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSimFull(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUIMCard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setSimInfoChanged(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
