.class public abstract Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;
.super Ljava/lang/Object;
.source "MakeSimOperation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getADNEditable(I)Ljava/lang/String;
.end method

.method public abstract getADNEmailsUri(I)Landroid/net/Uri;
.end method

.method public abstract getAdnAnrUri(I)Landroid/net/Uri;
.end method

.method public abstract getAdnUri(I)Landroid/net/Uri;
.end method

.method public abstract getCardStatus(I)I
.end method

.method public abstract getFDNOnInitSimStatus(I)Ljava/lang/String;
.end method

.method public abstract getFdnOnAdnDeleted(I)Ljava/lang/String;
.end method

.method public abstract getICCType(I)Ljava/lang/String;
.end method

.method public abstract getIccChangeKey(I)Ljava/lang/String;
.end method

.method public abstract getIccChangedBootTime(I)Ljava/lang/String;
.end method

.method public abstract getIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;
.end method

.method public abstract getPBInitKey(I)Ljava/lang/String;
.end method

.method public abstract getRawContactsADNEmailsUri(I)Landroid/net/Uri;
.end method

.method public abstract getRawContactsADNUri(I)Landroid/net/Uri;
.end method

.method public abstract getSimAccountName(I)Ljava/lang/String;
.end method

.method public abstract getSimAccountType(I)Ljava/lang/String;
.end method

.method public abstract getSimDBReady(I)Ljava/lang/String;
.end method

.method public abstract getTelephonyManager(I)Landroid/telephony/TelephonyManager;
.end method

.method public abstract isSimAccount(I)Ljava/lang/String;
.end method
