.class Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$AddressProfileQuery;
.super Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;
.source "PersonalAutofillPopulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddressProfileQuery"
.end annotation


# static fields
.field private static final CITY:I = 0x3

.field private static final COUNTRY:I = 0x6

.field private static final NEIGHBORHOOD:I = 0x2

.field private static final POBOX:I = 0x1

.field private static final POSTALCODE:I = 0x5

.field private static final REGION:I = 0x4

.field private static final STREET:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;-><init>(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$AddressProfileQuery;-><init>()V

    return-void
.end method


# virtual methods
.method public mimeType()Ljava/lang/String;
    .locals 1

    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    return-object v0
.end method

.method public projection()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data10"

    aput-object v2, v0, v1

    return-object v0
.end method
