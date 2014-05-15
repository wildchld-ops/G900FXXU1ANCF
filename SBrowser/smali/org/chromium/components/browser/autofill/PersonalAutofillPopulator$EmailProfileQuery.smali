.class Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$EmailProfileQuery;
.super Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;
.source "PersonalAutofillPopulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmailProfileQuery"
.end annotation


# static fields
.field private static final EMAIL_ADDRESS:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;-><init>(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$EmailProfileQuery;-><init>()V

    return-void
.end method


# virtual methods
.method public mimeType()Ljava/lang/String;
    .locals 1

    const-string v0, "vnd.android.cursor.item/email_v2"

    return-object v0
.end method

.method public projection()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    return-object v0
.end method
