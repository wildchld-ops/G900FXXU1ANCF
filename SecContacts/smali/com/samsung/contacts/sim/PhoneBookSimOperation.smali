.class public abstract Lcom/samsung/contacts/sim/PhoneBookSimOperation;
.super Ljava/lang/Object;
.source "PhoneBookSimOperation.java"


# static fields
.field public static final ADN2_URI:Landroid/net/Uri;

.field static final ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

.field public static final ADN_URI:Landroid/net/Uri;

.field static final DATA_PROJECTION:[Ljava/lang/String;

.field static final DATA_PROJECTION2:[Ljava/lang/String;

.field static final DATA_PROJECTION_CONTACTS:[Ljava/lang/String;

.field public static final DATA_URI:Landroid/net/Uri;

.field public static final RAWCONTACT_URI:Landroid/net/Uri;

.field static final REGISTERINFO_PROJECTION:[Ljava/lang/String;

.field public static final REGISTERINFO_URI:Landroid/net/Uri;

.field private static final SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

.field public static isFirstCheck:Z

.field public static isFirstCheck2:Z

.field public static mAnrFieldCount:I

.field protected static mAnrLength:[I

.field protected static mAnrMaxIndex:[I

.field private static mAnrUsedIndex:[I

.field protected static mContext:Landroid/content/Context;

.field protected static mCurrentSimState:I

.field protected static mEmailLength:I

.field protected static mEmailMaxIndex:I

.field protected static mEmailUsedIndex:I

.field protected static mMaxCount:I

.field protected static mNameLength:I

.field protected static mNumberLength:I

.field protected static mSimType:Ljava/lang/String;

.field protected static mTelMan:Landroid/telephony/TelephonyManager;

.field protected static mUsedCount:I

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->ADN_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/data/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/raw_contacts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->RAWCONTACT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/raw_contacts/adn2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->ADN2_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.provider.simcardmanagement/registerinfo/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->REGISTERINFO_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CARD_ID"

    aput-object v1, v0, v5

    const-string v1, "CARD_NAME"

    aput-object v1, v0, v4

    const-string v1, "ICON_INDEX"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->REGISTERINFO_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "is_primary"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "name_raw_contact_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_PROJECTION_CONTACTS:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "is_primary"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const-string v1, "data2"

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_PROJECTION2:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "adn_index"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->sEmptyContentValues:Landroid/content/ContentValues;

    sput-boolean v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    sput-boolean v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck2:Z

    sput v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mCurrentSimState:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mMaxCount:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mUsedCount:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNameLength:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailLength:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailMaxIndex:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailUsedIndex:I

    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    new-array v0, v7, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrUsedIndex:[I

    new-array v0, v7, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrLength:[I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrFieldCount:I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    return-void
.end method

.method private chkChinese(C)Z
    .locals 1

    const/16 v0, 0x31bf

    if-gt p1, v0, :cond_0

    const/16 v0, 0x31a0

    if-ge p1, v0, :cond_3

    :cond_0
    const v0, 0x9fcf

    if-gt p1, v0, :cond_1

    const/16 v0, 0x4e00

    if-ge p1, v0, :cond_3

    :cond_1
    const v0, 0xfaff

    if-gt p1, v0, :cond_2

    const v0, 0xf900

    if-ge p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2fdf

    if-gt p1, v0, :cond_4

    const/16 v0, 0x2f00

    if-lt p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chkKorean(C)Z
    .locals 1

    const v0, 0xd7a3

    if-gt p1, v0, :cond_0

    const v0, 0xac00

    if-ge p1, v0, :cond_4

    :cond_0
    const/16 v0, 0x11ff

    if-gt p1, v0, :cond_1

    const/16 v0, 0x1100

    if-ge p1, v0, :cond_4

    :cond_1
    const v0, 0xd7fb

    if-gt p1, v0, :cond_2

    const v0, 0xd7b0

    if-ge p1, v0, :cond_4

    :cond_2
    const v0, 0xa97c

    if-gt p1, v0, :cond_3

    const v0, 0xa960

    if-ge p1, v0, :cond_4

    :cond_3
    const/16 v0, 0x318e

    if-gt p1, v0, :cond_5

    const/16 v0, 0x3130

    if-lt p1, v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteItemByContactsId(J)Z
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method private isGSMCharacters(C)Z
    .locals 3

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGSMCharacters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5f

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x60

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7e

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xa3

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xec

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc5

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x394

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x393

    if-eq p1, v0, :cond_2

    const/16 v0, 0x39b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a9

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x398

    if-eq p1, v0, :cond_2

    const/16 v0, 0x39e

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xdf

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xdc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xfc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20ac

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTwoByteGsmDefaultCharacters(C)Z
    .locals 3

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTwoByteGsmDefaultCharacters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20ac

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifi()Z
    .locals 3

    const-string v0, "PhoneBookSimOperation"

    const-string v1, "isWifi()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmsCapable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsCapable(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookSimOperation"

    const-string v1, "isWifi() return true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "PhoneBookSimOperation"

    const-string v1, "isWifi() return false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public SpecialCharOffset(Ljava/lang/String;)I
    .locals 11

    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v8, 0x1

    :try_start_0
    invoke-static {p1, v8}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    const-string v8, "PhoneBookSimOperation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SpecialCharOffset, isEncodable : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return v7

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v0, v3, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xc7

    if-ne v8, v9, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x11e

    if-eq v8, v9, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x130

    if-ne v8, v9, :cond_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const-string v8, "PhoneBookSimOperation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "turksh_char_count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    sub-int v7, v6, v5

    goto :goto_1
.end method

.method public copyAllNumberToSim(JI)I
    .locals 33

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v11

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v31

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v31

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "data"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    const/16 v16, 0x0

    const/16 v30, 0x0

    const-string v25, ""

    const-string v26, ""

    const-string v19, ""

    const-string v12, ""

    const-string v9, ""

    const-string v10, ""

    const/16 v21, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v22, 0x1

    const-string v3, "PhoneBookSimOperation"

    const-string v4, "copyAllNumberToSim : start"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v17, :cond_1

    const-string v3, "PhoneBookSimOperation"

    const-string v4, "copyToSim : dataCursor is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v20, 0x0

    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_a

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    :cond_2
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_4

    add-int/lit8 v16, v16, 0x1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    :cond_4
    if-eqz v21, :cond_6

    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v21, 0x0

    :cond_5
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_6
    if-eqz v23, :cond_7

    if-lez v11, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isAnrFull(I)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v23, 0x0

    goto :goto_4

    :cond_7
    if-eqz v24, :cond_8

    const/4 v3, 0x1

    if-le v11, v3, :cond_8

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isAnrFull(I)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v24, 0x0

    goto :goto_4

    :cond_8
    if-eqz v22, :cond_5

    const/4 v3, 0x2

    if-le v11, v3, :cond_5

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isAnrFull(I)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v22, 0x0

    goto :goto_4

    :cond_9
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    :cond_a
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, -0x2

    goto/16 :goto_0

    :cond_b
    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNameLength:I

    if-le v3, v4, :cond_c

    sget v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNameLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    :cond_c
    const-string v3, "tag"

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz v26, :cond_f

    invoke-static/range {v26 .. v26}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    if-le v3, v4, :cond_e

    const/4 v3, 0x0

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    :cond_e
    add-int/lit8 v30, v30, 0x1

    const-string v3, "number"

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    if-lez v11, :cond_11

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-lez v3, :cond_11

    invoke-static {v12}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    if-le v3, v4, :cond_10

    const/4 v3, 0x0

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    invoke-virtual {v12, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_10
    add-int/lit8 v30, v30, 0x1

    const-string v3, "AnrNumber"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/4 v3, 0x1

    if-le v11, v3, :cond_13

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-lez v3, :cond_13

    invoke-static {v9}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    if-le v3, v4, :cond_12

    const/4 v3, 0x0

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_12
    add-int/lit8 v30, v30, 0x1

    const-string v3, "AnrANumber"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const/4 v3, 0x2

    if-le v11, v3, :cond_15

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    if-lez v3, :cond_15

    invoke-static {v10}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    if-le v3, v4, :cond_14

    const/4 v3, 0x0

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_14
    add-int/lit8 v30, v30, 0x1

    const-string v3, "AnrBNumber"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isEmailFull()Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailLength:I

    if-le v3, v4, :cond_16

    sget v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    :cond_16
    const-string v3, "emails"

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const/16 v27, 0x0

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.contacts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v15

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->ADN_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {v15, v13}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v27

    if-eqz v15, :cond_18

    invoke-virtual {v15}, Landroid/content/ContentProviderClient;->release()Z

    :cond_18
    if-eqz v27, :cond_1a

    move-object/from16 v0, v27

    array-length v3, v0

    if-lez v3, :cond_1a

    const/4 v3, 0x0

    aget-object v3, v27, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v28

    const-wide/16 v3, 0x0

    cmp-long v3, v28, v3

    if-gez v3, :cond_1b

    const/4 v3, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception v18

    const/4 v3, -0x1

    if-eqz v15, :cond_0

    :goto_5
    invoke-virtual {v15}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    :catch_1
    move-exception v18

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, -0x1

    if-eqz v15, :cond_0

    goto :goto_5

    :catchall_0
    move-exception v3

    if-eqz v15, :cond_19

    invoke-virtual {v15}, Landroid/content/ContentProviderClient;->release()Z

    :cond_19
    throw v3

    :cond_1a
    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_1b
    move/from16 v3, v30

    goto/16 :goto_0
.end method

.method public abstract copyAllNumberToSim(JII)I
.end method

.method public copyToPhone(JLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 35

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v9

    const/16 v19, 0x0

    const/16 v24, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimDBReady()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/common/util/Constants;->ADN_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/common/util/Constants;->ADN_EMAILS_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "emails"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "adn_index"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    :goto_0
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/16 v25, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/16 v23, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimDBReady()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    move-wide/from16 v0, p1

    long-to-int v2, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    const-string v2, "adn_index"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_2
    if-eqz v24, :cond_f

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_f

    :cond_3
    :goto_1
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    if-eqz v8, :cond_3

    if-eqz v25, :cond_3

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_5

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_0

    :cond_5
    const/16 v23, 0x0

    goto :goto_1

    :cond_6
    if-eqz v19, :cond_f

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v26, 0x0

    :goto_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_f

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    :cond_7
    :goto_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-nez v10, :cond_a

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    :cond_9
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    const/4 v2, 0x1

    if-ne v10, v2, :cond_b

    if-lez v9, :cond_b

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_b
    const/4 v2, 0x2

    if-ne v10, v2, :cond_c

    const/4 v2, 0x3

    if-le v9, v2, :cond_c

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_c
    const/4 v2, 0x3

    if-ne v10, v2, :cond_d

    const/4 v2, 0x3

    if-le v9, v2, :cond_d

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_d
    const/4 v2, 0x4

    if-ne v10, v2, :cond_9

    const/4 v2, 0x3

    if-le v9, v2, :cond_9

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_e
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_3

    :cond_f
    if-eqz v19, :cond_10

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v24, :cond_11

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_11
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    :cond_12
    :goto_5
    return v2

    :cond_13
    const/16 v32, 0x0

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v18

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v31

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    if-eqz p3, :cond_18

    if-eqz p4, :cond_18

    const-string v2, "account_name"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "account_type"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :goto_6
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v29, :cond_14

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz v30, :cond_15

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimDBReady()Z

    move-result v2

    if-nez v2, :cond_19

    if-eqz v23, :cond_19

    move-object/from16 v15, v23

    array-length v0, v15

    move/from16 v28, v0

    const/16 v27, 0x0

    :goto_7
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1a

    aget-object v22, v15, v27

    if-eqz v22, :cond_17

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    :cond_18
    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->sEmptyContentValues:Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_6

    :cond_19
    if-eqz v21, :cond_1a

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    if-eqz v11, :cond_1b

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    if-eqz v12, :cond_1c

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    if-eqz v13, :cond_1d

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    if-eqz v14, :cond_1e

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    :try_start_0
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v32

    if-eqz v18, :cond_1f

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1f
    const-wide/16 v33, -0x1

    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v32, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v33

    :goto_8
    const-wide/16 v2, 0x0

    cmp-long v2, v33, v2

    if-gez v2, :cond_21

    const/4 v2, 0x0

    goto/16 :goto_5

    :catch_0
    move-exception v20

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    if-eqz v18, :cond_12

    :goto_9
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_5

    :catch_1
    move-exception v20

    :try_start_3
    invoke-virtual/range {v20 .. v20}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    if-eqz v18, :cond_12

    goto :goto_9

    :catchall_0
    move-exception v2

    if-eqz v18, :cond_20

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    :cond_20
    throw v2

    :catch_2
    move-exception v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_8

    :cond_21
    if-eqz p5, :cond_22

    invoke-direct/range {p0 .. p2}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->deleteItemByContactsId(J)Z

    :cond_22
    const/4 v2, 0x1

    goto/16 :goto_5
.end method

.method public abstract copyToSim(JIZ)I
.end method

.method public copyToSim(JZ)I
    .locals 35

    const-wide/16 v10, -0x1

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v14

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v33

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v33

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "data"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_PROJECTION_CONTACTS:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id =\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, v33

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    const-string v28, ""

    const-string v29, ""

    const-string v21, ""

    const-string v15, ""

    const-string v12, ""

    const-string v13, ""

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v25, 0x1

    const-string v3, "PhoneBookSimOperation"

    const-string v4, "copyToSim : start"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v19, :cond_2

    const-string v3, "PhoneBookSimOperation"

    const-string v4, "copyToSim : dataCursor is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    :cond_1
    :goto_0
    return v3

    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v22, 0x0

    :goto_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_b

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v24, :cond_4

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v24, 0x0

    :cond_3
    :goto_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-lez v3, :cond_3

    const/4 v3, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v10

    if-nez v3, :cond_3

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v23, :cond_6

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v23, 0x0

    goto :goto_2

    :cond_6
    if-eqz v26, :cond_7

    if-lez v14, :cond_7

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v26, 0x0

    goto :goto_2

    :cond_7
    if-eqz v27, :cond_8

    const/4 v3, 0x1

    if-le v14, v3, :cond_8

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v27, 0x0

    goto :goto_2

    :cond_8
    if-eqz v25, :cond_9

    const/4 v3, 0x2

    if-le v14, v3, :cond_9

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v25, 0x0

    goto :goto_2

    :cond_9
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_2

    :cond_a
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    :cond_b
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, -0x2

    goto/16 :goto_0

    :cond_c
    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNameLength:I

    if-le v3, v4, :cond_d

    sget v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNameLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    :cond_d
    const-string v3, "tag"

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    if-eqz v29, :cond_10

    invoke-static/range {v29 .. v29}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    if-le v3, v4, :cond_f

    const/4 v3, 0x0

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    :cond_f
    const-string v3, "number"

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-lez v14, :cond_12

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-lez v3, :cond_12

    invoke-static {v15}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    if-le v3, v4, :cond_11

    const/4 v3, 0x0

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    invoke-virtual {v15, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :cond_11
    const-string v3, "AnrNumber"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/4 v3, 0x1

    if-le v14, v3, :cond_14

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-lez v3, :cond_14

    invoke-static {v12}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    if-le v3, v4, :cond_13

    const/4 v3, 0x0

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    invoke-virtual {v12, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_13
    const-string v3, "AnrANumber"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const/4 v3, 0x2

    if-le v14, v3, :cond_16

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    if-lez v3, :cond_16

    invoke-static {v13}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    if-le v3, v4, :cond_15

    const/4 v3, 0x0

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    :cond_15
    const-string v3, "AnrBNumber"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isEmailFull()Z

    move-result v3

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailLength:I

    if-le v3, v4, :cond_17

    sget v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    :cond_17
    const-string v3, "emails"

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const/16 v30, 0x0

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.contacts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v18

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->ADN_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v30

    if-eqz v18, :cond_19

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    :cond_19
    if-eqz v30, :cond_1b

    move-object/from16 v0, v30

    array-length v3, v0

    if-lez v3, :cond_1b

    const/4 v3, 0x0

    aget-object v3, v30, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    const-wide/16 v3, 0x0

    cmp-long v3, v31, v3

    if-gez v3, :cond_1c

    const/4 v3, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception v20

    const/4 v3, -0x1

    if-eqz v18, :cond_1

    :goto_3
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    :catch_1
    move-exception v20

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, -0x1

    if-eqz v18, :cond_1

    goto :goto_3

    :catchall_1
    move-exception v3

    if-eqz v18, :cond_1a

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1a
    throw v3

    :cond_1b
    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_1c
    if-eqz p3, :cond_1d

    invoke-direct/range {p0 .. p2}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->deleteItemByContactsId(J)Z

    :cond_1d
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public getAnrFieldCount()I
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v0

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getSimType()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    :cond_0
    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return v2

    :cond_1
    sget-boolean v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    if-eqz v3, :cond_2

    sput-boolean v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getSimStatus(Ljava/lang/String;)V

    :cond_2
    sput v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrFieldCount:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isAnrSupported(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrFieldCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrFieldCount:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "PhoneBookSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnrFieldCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrFieldCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrFieldCount:I

    goto :goto_0
.end method

.method public abstract getAnrFieldCount(I)I
.end method

.method public getByteArrayText(Ljava/lang/String;)[B
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x1

    :try_start_0
    invoke-static {p1, v11}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    :goto_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->chkKorean(C)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->chkChinese(C)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    const/4 v7, 0x1

    :cond_1
    if-eqz v8, :cond_3

    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    :goto_2
    return-object v1

    :catch_0
    move-exception v5

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const v10, 0xffff

    const/4 v9, 0x0

    :goto_3
    if-ge v6, v3, :cond_8

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isGSMCharacters(C)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isTwoByteGsmDefaultCharacters(C)Z

    move-result v11

    if-eqz v11, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ge v11, v10, :cond_6

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :cond_6
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-le v11, v9, :cond_7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    :try_start_1
    const-string v11, "ISO-10646-UCS-2"

    invoke-virtual {p1, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Contact_EnableKsc5601Encoding"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "KSC5601"

    invoke-virtual {p1, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    :cond_9
    array-length v11, v2

    new-array v1, v11, [B

    goto :goto_2

    :cond_a
    const v11, 0x8000

    if-ge v9, v11, :cond_b

    shr-int/lit8 v11, v10, 0x7

    shr-int/lit8 v12, v9, 0x7

    if-ne v11, v12, :cond_b

    array-length v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v0

    new-array v1, v11, [B

    goto :goto_2

    :cond_b
    sub-int v11, v9, v10

    const/16 v12, 0x7f

    if-gt v11, v12, :cond_c

    array-length v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v0

    new-array v1, v11, [B

    goto/16 :goto_2

    :cond_c
    array-length v11, v2

    add-int/lit8 v11, v11, -0x1

    new-array v1, v11, [B
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    :catch_1
    move-exception v4

    const-string v11, "PhoneBookSimOperation"

    const-string v12, "ArrayIndexOutOfBoundsException"

    invoke-static {v11, v12, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_2
    move-exception v4

    const-string v11, "PhoneBookSimOperation"

    const-string v12, "UnsupportedEncodingException"

    invoke-static {v11, v12, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method public getDBNumberCount(J)I
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "data"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->DATA_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v6

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ------------ getDBNumberCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public getEmailLength()I
    .locals 3

    sget-boolean v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getSimStatus(Ljava/lang/String;)V

    :cond_0
    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length of email : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailLength:I

    return v0
.end method

.method public abstract getEmailLength(I)I
.end method

.method public getEnableCount()I
    .locals 2

    sget v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mMaxCount:I

    sget v1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mUsedCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract getEnableCount(I)I
.end method

.method public getNameLength()I
    .locals 3

    sget-boolean v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getSimStatus(Ljava/lang/String;)V

    :cond_0
    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length of name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNameLength:I

    return v0
.end method

.method public abstract getNameLength(I)I
.end method

.method public getNumberLength()I
    .locals 3

    sget-boolean v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getSimStatus(Ljava/lang/String;)V

    :cond_0
    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length of number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    return v0
.end method

.method public abstract getNumberLength(I)I
.end method

.method public abstract getSimContactDetailIcon(I)I
.end method

.method public abstract getSimIcon(I)I
.end method

.method public abstract getSimName(I)Ljava/lang/String;
.end method

.method public getSimStatus(Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v0, "ril.IsCSIM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_0
    const-string v0, "PhoneBookSimOperation"

    const-string v1, "getSimStatus Start : 2G"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x6f3a

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    aget v1, v0, v8

    sput v1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mMaxCount:I

    aget v1, v0, v5

    sput v1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mUsedCount:I

    aget v1, v0, v7

    sput v1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNameLength:I

    aget v0, v0, v4

    sput v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimStatus : mMaxCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimStatus : mUsedCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mUsedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimStatus : mNameLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimStatus : mNumberLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    :cond_3
    sget v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mMaxCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const-string v0, "PhoneBookSimOperation"

    const-string v1, "Failed to get strogae info. Sim is initializing"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    :cond_4
    const-string v0, "PhoneBookSimOperation"

    const-string v1, "getSimStatus End"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    const-string v2, "PhoneBookSimOperation"

    const-string v3, "RemoteException occured"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v2, "PhoneBookSimOperation"

    const-string v3, "SecurityException occured"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_5
    const-string v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_6
    const-string v0, "PhoneBookSimOperation"

    const-string v1, "getSimStatus Start : 3G"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v1

    :try_start_1
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    :cond_7
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0, v5, v5}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    sput v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mMaxCount:I

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    sput v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mUsedCount:I

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    sput v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNameLength:I

    invoke-virtual {v0, v6, v6}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    sput v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    sput v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailLength:I

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    sput v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailMaxIndex:I

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    sput v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailUsedIndex:I

    const-string v2, "PhoneBookSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimStatus : mMaxCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mMaxCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PhoneBookSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimStatus : mUsedCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mUsedCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PhoneBookSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimStatus : mNameLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNameLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PhoneBookSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimStatus : mNumberLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mNumberLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PhoneBookSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimStatus : mEmailLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PhoneBookSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimStatus : mEmailMaxIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailMaxIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PhoneBookSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimStatus : mEmailUsedIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailUsedIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_2

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrLength:[I

    invoke-virtual {v0, v7, v6}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    aput v3, v2, v8

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    invoke-virtual {v0, v7, v5}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    aput v3, v2, v8

    if-le v1, v7, :cond_8

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrLength:[I

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v6}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    aput v3, v2, v5

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    aput v3, v2, v5

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrLength:[I

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v6}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    aput v3, v2, v6

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    aput v3, v2, v6

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrLength:[I

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v6}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    aput v3, v2, v7

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v2, v7

    :cond_8
    const-string v0, "PhoneBookSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimStatus : mAnrLength[ANR_INDEX] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrLength:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimStatus : mAnrMaxIndex[ANR_INDEX] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-le v1, v7, :cond_2

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimStatus : mAnrLength[ANR_A_INDEX] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrLength:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimStatus : mAnrMaxIndex[ANR_A_INDEX] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimStatus : mAnrLength[ANR_B_INDEX] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrLength:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimStatus : mAnrMaxIndex[ANR_B_INDEX] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimStatus : mAnrLength[ANR_C_INDEX] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrLength:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimStatus : mAnrMaxIndex[ANR_C_INDEX] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v2

    const-string v2, "PhoneBookSimOperation"

    const-string v3, "RemoteException occured"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_3
    move-exception v2

    const-string v2, "PhoneBookSimOperation"

    const-string v3, "SecurityException occured"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public getSimType()Ljava/lang/String;
    .locals 2

    const-string v1, "ril.IsCSIM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "2"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "ril.ICC_TYPE"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    sget-object v1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract getSimType(I)Ljava/lang/String;
.end method

.method public hasIccCard()Z
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public abstract hasIccCard(I)Z
.end method

.method public isAnrFull(I)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v3, 0x1

    sget-object v5, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getSimType()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    :cond_0
    sget-object v5, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    sget-boolean v5, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimDBReady()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isAnrSupported(I)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v2, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :cond_4
    :goto_1
    if-eqz v2, :cond_6

    if-nez p1, :cond_7

    sget-object v5, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrUsedIndex:[I

    invoke-virtual {v2, v7, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v4

    :cond_5
    :goto_2
    const-string v5, "PhoneBookSimOperation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAnrFull() : mAnrMaxIndex["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAnrUsedIndex["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrUsedIndex:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v5, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    aget v5, v5, p1

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrUsedIndex:[I

    aget v6, v6, p1

    if-le v5, v6, :cond_a

    const-string v3, "PhoneBookSimOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAnrFull() : false max("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") used("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrUsedIndex:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v5, "PhoneBookSimOperation"

    const-string v6, "RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v5, "PhoneBookSimOperation"

    const-string v6, "SecurityException"

    invoke-static {v5, v6, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_7
    if-ne p1, v3, :cond_8

    sget-object v5, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrUsedIndex:[I

    const/16 v6, 0x8

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v3

    goto/16 :goto_2

    :cond_8
    if-ne p1, v8, :cond_9

    sget-object v5, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrUsedIndex:[I

    const/16 v6, 0x9

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v8

    goto/16 :goto_2

    :cond_9
    if-ne p1, v7, :cond_5

    sget-object v5, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrUsedIndex:[I

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v7

    goto/16 :goto_2

    :cond_a
    const-string v4, "PhoneBookSimOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAnrFull() : true max("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") used("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrUsedIndex:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public abstract isAnrFull(II)Z
.end method

.method public isAnrSupported(I)Z
    .locals 3

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnrSupported = mAnrMaxIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mAnrMaxIndex:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isAnrSupported(II)Z
.end method

.method public isEmailFull()Z
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-boolean v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimDBReady()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "emails"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "account_type=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "vnd.sec.contact.sim"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailUsedIndex:I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    sget v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailMaxIndex:I

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailUsedIndex:I

    if-le v0, v2, :cond_3

    const-string v0, "PhoneBookSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : false max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailMaxIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailUsedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto :goto_0

    :cond_3
    const-string v0, "PhoneBookSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : true max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailMaxIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mEmailUsedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto/16 :goto_0
.end method

.method public abstract isEmailFull(I)Z
.end method

.method public isSimDBReady()Z
    .locals 4

    const-string v1, "PhoneBookSimOperation"

    const-string v2, "isSimDBReady() start"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getSimDBReady(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const-string v1, "PhoneBookSimOperation"

    const-string v2, "SimDB Loading..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ril.ICC_TYPE"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    const-string v1, "PhoneBookSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimDBReady() mSimType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    sget-object v1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getSimStatus(Ljava/lang/String;)V

    :cond_1
    const-string v1, "PhoneBookSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimDBReady() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract isSimDBReady(I)Z
.end method

.method public isSimEnabled()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    :cond_2
    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    sput v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mCurrentSimState:I

    const-string v2, "PhoneBookSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimEnabled() return false < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mCurrentSimState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mCurrentSimState:I

    if-eq v3, v0, :cond_5

    sput-boolean v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    sput v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mCurrentSimState:I

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->getAdnEditable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v2, "PhoneBookSimOperation"

    const-string v3, "Adn is not editable..."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1"

    const-string v4, "ril.initPB"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v2, "PhoneBookSimOperation"

    const-string v3, "isSimEnabled() not PB_INIT."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string v1, "PhoneBookSimOperation"

    const-string v3, "isSimEnabled() return true"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto/16 :goto_0
.end method

.method public abstract isSimEnabled(I)Z
.end method

.method public isSimFull()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : isFirstCheck "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimDBReady()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "account_type = \'vnd.sec.contact.sim\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mUsedCount:I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    sget v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mMaxCount:I

    sget v1, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mUsedCount:I

    if-le v0, v1, :cond_4

    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : false max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mUsedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/util/Constants;->ADN_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1

    :cond_4
    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : true max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->mUsedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto/16 :goto_0
.end method

.method public abstract isSimFull(I)Z
.end method

.method public isSimSupport()Z
    .locals 3

    const-string v0, "PhoneBookSimOperation"

    const-string v1, "isSimSupport()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneBookSimOperation"

    const-string v1, "isSimSupport() return false from isWifi"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "PhoneBookSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimSupport() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSimDbSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "from csc feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSimDbSupport()Z

    move-result v0

    goto :goto_0
.end method

.method public abstract isUIMCard()Z
.end method

.method public setFirstCheck(IZ)V
    .locals 1

    if-nez p1, :cond_1

    sput-boolean p2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sput-boolean p2, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->isFirstCheck2:Z

    goto :goto_0
.end method

.method public abstract setSimInfoChanged(Landroid/content/Intent;)V
.end method

.method public trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    if-le p2, v4, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    if-gt v4, p2, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    if-le p2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
