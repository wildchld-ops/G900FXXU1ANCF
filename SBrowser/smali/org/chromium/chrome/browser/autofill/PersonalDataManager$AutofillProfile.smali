.class public Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;
.super Ljava/lang/Object;
.source "PersonalDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/autofill/PersonalDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutofillProfile"
.end annotation


# instance fields
.field private mAddressLine1:Ljava/lang/String;

.field private mAddressLine2:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCompanyName:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mFullName:Ljava/lang/String;

.field private mGUID:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field private mZip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mGUID:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mFullName:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCompanyName:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mAddressLine1:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mAddressLine2:Ljava/lang/String;

    iput-object p6, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCity:Ljava/lang/String;

    iput-object p7, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mState:Ljava/lang/String;

    iput-object p8, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mZip:Ljava/lang/String;

    iput-object p9, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCountry:Ljava/lang/String;

    iput-object p10, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mPhoneNumber:Ljava/lang/String;

    iput-object p11, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;
    .locals 12
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AutofillProfile"
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAddressLine1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AutofillProfile"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mAddressLine1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AutofillProfile"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mAddressLine2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AutofillProfile"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AutofillProfile"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AutofillProfile"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AutofillProfile"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AutofillProfile"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AutofillProfile"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AutofillProfile"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AutofillProfile"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AutofillProfile"
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mZip:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressLine1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mAddressLine1:Ljava/lang/String;

    return-void
.end method

.method public setAddressLine2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mAddressLine2:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCity:Ljava/lang/String;

    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCompanyName:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCountry:Ljava/lang/String;

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mFullName:Ljava/lang/String;

    return-void
.end method

.method public setGUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mGUID:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mState:Ljava/lang/String;

    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mZip:Ljava/lang/String;

    return-void
.end method
