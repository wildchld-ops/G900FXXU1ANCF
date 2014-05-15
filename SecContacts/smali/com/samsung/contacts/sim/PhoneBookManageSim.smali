.class public Lcom/samsung/contacts/sim/PhoneBookManageSim;
.super Ljava/lang/Object;
.source "PhoneBookManageSim.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mPhoneBookManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

.field private static mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;


# instance fields
.field public final COPY_SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/contacts/sim/PhoneBookSimOperation;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->COPY_SUCCESS:I

    sput-object p1, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;
    .locals 2

    sget-object v1, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v1, Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-direct {v1, p0, v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;-><init>(Landroid/content/Context;Lcom/samsung/contacts/sim/PhoneBookSimOperation;)V

    sput-object v1, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    :cond_0
    sget-object v1, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    return-object v1

    :cond_1
    new-instance v0, Lcom/samsung/contacts/sim/PhoneBookSingleSimOperation;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/sim/PhoneBookSingleSimOperation;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public SpecialCharOffset(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->SpecialCharOffset(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public copyAllNumberToSim(JII)I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->copyAllNumberToSim(JII)I

    move-result v0

    return v0
.end method

.method public copyToPhone(JLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->copyToPhone(JLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public copyToSim(JIZ)I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->copyToSim(JIZ)I

    move-result v0

    return v0
.end method

.method public getAnrFieldCount()I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getAnrFieldCount()I

    move-result v0

    return v0
.end method

.method public getAnrFieldCount(I)I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getAnrFieldCount(I)I

    move-result v0

    return v0
.end method

.method public getByteArrayText(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDBNumberCount(J)I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getDBNumberCount(J)I

    move-result v0

    return v0
.end method

.method public getEmailLength()I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getEmailLength()I

    move-result v0

    return v0
.end method

.method public getEmailLength(I)I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getEmailLength(I)I

    move-result v0

    return v0
.end method

.method public getEnableCount()I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getEnableCount()I

    move-result v0

    return v0
.end method

.method public getEnableCount(I)I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getEnableCount(I)I

    move-result v0

    return v0
.end method

.method public getNameLength()I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getNameLength()I

    move-result v0

    return v0
.end method

.method public getNameLength(I)I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getNameLength(I)I

    move-result v0

    return v0
.end method

.method public getNumberLength()I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getNumberLength()I

    move-result v0

    return v0
.end method

.method public getNumberLength(I)I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getNumberLength(I)I

    move-result v0

    return v0
.end method

.method public getSimContactDetailIcon(I)I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getSimContactDetailIcon(I)I

    move-result v0

    return v0
.end method

.method public getSimIcon(I)I
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getSimIcon(I)I

    move-result v0

    return v0
.end method

.method public getSimName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getSimType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimType(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getSimType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasIccCard()Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public isAnrFull(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isAnrFull(I)Z

    move-result v0

    return v0
.end method

.method public isAnrFull(II)Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isAnrFull(II)Z

    move-result v0

    return v0
.end method

.method public isAnrSupported(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isAnrSupported(I)Z

    move-result v0

    return v0
.end method

.method public isAnrSupported(II)Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isAnrSupported(II)Z

    move-result v0

    return v0
.end method

.method public isEmailFull()Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isEmailFull()Z

    move-result v0

    return v0
.end method

.method public isEmailFull(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isEmailFull(I)Z

    move-result v0

    return v0
.end method

.method public isSimDBReady()Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimDBReady()Z

    move-result v0

    return v0
.end method

.method public isSimDBReady(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimDBReady(I)Z

    move-result v0

    return v0
.end method

.method public isSimEnabled()Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isSimEnabled(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSimFull()Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimFull()Z

    move-result v0

    return v0
.end method

.method public isSimFull(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimFull(I)Z

    move-result v0

    return v0
.end method

.method public isSimSupport()Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimSupport()Z

    move-result v0

    return v0
.end method

.method public isUIMCard()Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isUIMCard()Z

    move-result v0

    return v0
.end method

.method public setFirstCheck(IZ)V
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->setFirstCheck(IZ)V

    return-void
.end method

.method public setSimInfoChanged(Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->setSimInfoChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookManageSim;->mPhoneBookSimOperation:Lcom/samsung/contacts/sim/PhoneBookSimOperation;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
