.class public Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;
.super Ljava/lang/Object;
.source "AutoLinkLoaderFactory.java"


# static fields
.field public static final EMAIL_PROJECTION:[Ljava/lang/String;

.field public static final ENTITY_URI:Landroid/net/Uri;

.field public static final NAME_DATA_PROJECTION:[Ljava/lang/String;

.field public static final NAME_PROJECTION:[Ljava/lang/String;

.field public static final PHONE_EMAIL_DATA_PROJECTION:[Ljava/lang/String;

.field public static final PHONE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "content://com.android.contacts/contacts/entities"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->ENTITY_URI:Landroid/net/Uri;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "link_count"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->NAME_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "data15"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "data4"

    aput-object v1, v0, v6

    const-string v1, "data1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "account_type_and_data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->NAME_DATA_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "link_count"

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "link_count"

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->EMAIL_PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "data15"

    aput-object v1, v0, v4

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "account_type_and_data_set"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->PHONE_EMAIL_DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
