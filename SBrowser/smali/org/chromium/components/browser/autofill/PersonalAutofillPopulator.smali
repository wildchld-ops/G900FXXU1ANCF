.class public Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;
.super Ljava/lang/Object;
.source "PersonalAutofillPopulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$1;,
        Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$NameProfileQuery;,
        Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$AddressProfileQuery;,
        Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$PhoneProfileQuery;,
        Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$EmailProfileQuery;,
        Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "autofill"
.end annotation


# instance fields
.field private mCity:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mEmailAddresses:[Ljava/lang/String;

.field private mFamilyName:Ljava/lang/String;

.field private mGivenName:Ljava/lang/String;

.field private mHasPermissions:Z

.field private mMiddleName:Ljava/lang/String;

.field private mNeighborhood:Ljava/lang/String;

.field private mPhoneNumbers:[Ljava/lang/String;

.field private mPobox:Ljava/lang/String;

.field private mPostalCode:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mStreet:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->hasPermissions(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mHasPermissions:Z

    iget-boolean v1, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mHasPermissions:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->populateName(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->populateEmail(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->populateAddress(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->populatePhone(Landroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method

.method static create(Landroid/content/Context;)Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;

    invoke-direct {v0, p0}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private cursorFromProfileQuery(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 7

    const-string v5, "is_primary DESC"

    iget-object v1, p1, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;->profileDataUri:Landroid/net/Uri;

    invoke-virtual {p1}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;->projection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "mimetype = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;->mimeType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getCity()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method private getCountry()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method private getEmailAddresses()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mEmailAddresses:[Ljava/lang/String;

    return-object v0
.end method

.method private getFirstName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mGivenName:Ljava/lang/String;

    return-object v0
.end method

.method private getHasPermissions()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mHasPermissions:Z

    return v0
.end method

.method private getLastName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method private getMiddleName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method private getNeighborhood()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mNeighborhood:Ljava/lang/String;

    return-object v0
.end method

.method private getPhoneNumbers()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mPhoneNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method private getPobox()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mPobox:Ljava/lang/String;

    return-object v0
.end method

.method private getPostalCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method private getRegion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method private getStreet()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mStreet:Ljava/lang/String;

    return-object v0
.end method

.method private getSuffix()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method private hasPermissions(Landroid/content/Context;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x2

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "android.permission.READ_CONTACTS"

    aput-object v8, v4, v6

    const-string v8, "android.permission.READ_PROFILE"

    aput-object v8, v4, v7

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1
.end method

.method private populateAddress(Landroid/content/ContentResolver;)V
    .locals 3

    new-instance v1, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$AddressProfileQuery;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$AddressProfileQuery;-><init>(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$1;)V

    invoke-direct {p0, v1, p1}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->cursorFromProfileQuery(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mPobox:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mStreet:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mNeighborhood:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mCity:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mRegion:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mPostalCode:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mCountry:Ljava/lang/String;

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private populateEmail(Landroid/content/ContentResolver;)V
    .locals 5

    new-instance v1, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$EmailProfileQuery;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$EmailProfileQuery;-><init>(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$1;)V

    invoke-direct {p0, v1, p1}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->cursorFromProfileQuery(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mEmailAddresses:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mEmailAddresses:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private populateName(Landroid/content/ContentResolver;)V
    .locals 3

    new-instance v1, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$NameProfileQuery;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$NameProfileQuery;-><init>(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$1;)V

    invoke-direct {p0, v1, p1}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->cursorFromProfileQuery(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mGivenName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mMiddleName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mFamilyName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mSuffix:Ljava/lang/String;

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private populatePhone(Landroid/content/ContentResolver;)V
    .locals 5

    new-instance v2, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$PhoneProfileQuery;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$PhoneProfileQuery;-><init>(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$1;)V

    invoke-direct {p0, v2, p1}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->cursorFromProfileQuery(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mPhoneNumbers:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;->mPhoneNumbers:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void
.end method
