.class public Lcom/samsung/contacts/model/rcs/ServiceProviderFields;
.super Ljava/lang/Object;
.source "ServiceProviderFields.java"


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final RCS_STACK_STATE_URI:Landroid/net/Uri;

.field public static final SERVICE_LOOKUP_URI:Landroid/net/Uri;

.field public static final SERVICE_OWN_URI:Landroid/net/Uri;

.field public static final SERVICE_PROJECTION:[Ljava/lang/String;

.field public static final SIP_LOOKUP_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.samsung.rcs.serviceprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/model/rcs/ServiceProviderFields;->RCS_STACK_STATE_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.rcs.serviceprovider/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/model/rcs/ServiceProviderFields;->SERVICE_LOOKUP_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.rcs.serviceprovider/own"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/model/rcs/ServiceProviderFields;->SERVICE_OWN_URI:Landroid/net/Uri;

    const-string v0, "content://"

    const-string v1, "com.samsung.rcs.serviceprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/model/rcs/ServiceProviderFields;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/contacts/model/rcs/ServiceProviderFields;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "sip"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/model/rcs/ServiceProviderFields;->SIP_LOOKUP_URI:Landroid/net/Uri;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "feature_tag"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "is_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "icon_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "int_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "int_category"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sip_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "displayname"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/model/rcs/ServiceProviderFields;->SERVICE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOptionsToQuery(Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 3

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "disable_requery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
