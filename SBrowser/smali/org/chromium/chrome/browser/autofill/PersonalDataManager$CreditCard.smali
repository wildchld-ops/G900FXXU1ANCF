.class public Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;
.super Ljava/lang/Object;
.source "PersonalDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/autofill/PersonalDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreditCard"
.end annotation


# instance fields
.field private mGUID:Ljava/lang/String;

.field private mMonth:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mObfuscatedNumber:Ljava/lang/String;

.field private mYear:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mGUID:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mName:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mNumber:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mObfuscatedNumber:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mMonth:Ljava/lang/String;

    iput-object p6, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mYear:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;
    .locals 7
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "CreditCard"
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getGUID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "CreditCard"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "CreditCard"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "CreditCard"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "CreditCard"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mObfuscatedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "CreditCard"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mYear:Ljava/lang/String;

    return-object v0
.end method

.method public setGUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mGUID:Ljava/lang/String;

    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mMonth:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public setObfuscatedNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mObfuscatedNumber:Ljava/lang/String;

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mYear:Ljava/lang/String;

    return-void
.end method
