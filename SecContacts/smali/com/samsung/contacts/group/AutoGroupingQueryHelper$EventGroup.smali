.class public final Lcom/samsung/contacts/group/AutoGroupingQueryHelper$EventGroup;
.super Ljava/lang/Object;
.source "AutoGroupingQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/AutoGroupingQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventGroup"
.end annotation


# static fields
.field public static final PROJECTION_BIRTHDAY_ALTERNATIVE:[Ljava/lang/String;

.field public static final PROJECTION_BIRTHDAY_ALTERNATIVE_FOR_INTERACTION:[Ljava/lang/String;

.field public static final PROJECTION_BIRTHDAY_PRIMARY:[Ljava/lang/String;

.field public static final PROJECTION_BIRTHDAY_PRIMARY_FOR_INTERACTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "months"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/group/AutoGroupingQueryHelper$EventGroup;->PROJECTION_BIRTHDAY_PRIMARY:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "months"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/group/AutoGroupingQueryHelper$EventGroup;->PROJECTION_BIRTHDAY_ALTERNATIVE:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "months"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "has_email"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/group/AutoGroupingQueryHelper$EventGroup;->PROJECTION_BIRTHDAY_PRIMARY_FOR_INTERACTION:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "months"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "has_email"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/group/AutoGroupingQueryHelper$EventGroup;->PROJECTION_BIRTHDAY_ALTERNATIVE_FOR_INTERACTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
