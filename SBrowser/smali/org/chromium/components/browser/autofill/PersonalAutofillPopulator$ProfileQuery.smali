.class abstract Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;
.super Ljava/lang/Object;
.source "PersonalAutofillPopulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ProfileQuery"
.end annotation


# instance fields
.field profileDataUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;->profileDataUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/browser/autofill/PersonalAutofillPopulator$ProfileQuery;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract mimeType()Ljava/lang/String;
.end method

.method public abstract projection()[Ljava/lang/String;
.end method
