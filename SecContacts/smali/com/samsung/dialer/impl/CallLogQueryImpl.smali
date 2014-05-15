.class public final Lcom/samsung/dialer/impl/CallLogQueryImpl;
.super Ljava/lang/Object;
.source "CallLogQueryImpl.java"


# static fields
.field public static final CALL_DETAIL_PROJECTION:[Ljava/lang/String;

.field public static final _PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lookup_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "matched_number"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "messageid"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "e164_number"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "formatted_number"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "remind_me_later_set"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "vvm_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "is_read"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "cnap_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/dialer/impl/CallLogQueryImpl;->_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_content"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "vvm_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "messageid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/dialer/impl/CallLogQueryImpl;->CALL_DETAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
