.class public final enum Lcom/nuance/connect/host/service/BuildSettings$Property;
.super Ljava/lang/Enum;
.source "BuildSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/host/service/BuildSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/host/service/BuildSettings$Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum ANALYTICS_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum APPLICATION_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum APP_KEY_STARTS:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum BUILD_EXPIRATION:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum BUILD_TIMESTAMP:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum CORE_VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum CUSTOMER_STRING:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum DLM_SYNC_ALLOWED:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum DLM_SYNC_DEFAULT:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum LANGUAGE_CORE_MAP:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum LIVING_LANGUAGE_ENABLED:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum LOCATION_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum OEM_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum SHOW_STARTUP_ACCOUNT_REGISTRATION:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum SHOW_STARTUP_TIP:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum UDB_ANONYMOUS_UPLOAD:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum USE_CELLULAR_DATA_DEFAULT:Lcom/nuance/connect/host/service/BuildSettings$Property;

.field public static final enum VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "OEM_ID"

    const-string v2, "OEM_ID"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->OEM_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "APPLICATION_ID"

    const-string v2, "APPLICATION_ID"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->APPLICATION_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "CUSTOMER_STRING"

    const-string v2, "CUSTOMER_STRING"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->CUSTOMER_STRING:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "VERSION"

    const-string v2, "VERSION"

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "ANALYTICS_LEVEL"

    const-string v2, "ANALYTICS_LEVEL"

    invoke-direct {v0, v1, v8, v2}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->ANALYTICS_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "DLM_SYNC_ALLOWED"

    const/4 v2, 0x5

    const-string v3, "DLM_SYNC_ALLOWED"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->DLM_SYNC_ALLOWED:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "DLM_SYNC_DEFAULT"

    const/4 v2, 0x6

    const-string v3, "DLM_SYNC_DEFAULT"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->DLM_SYNC_DEFAULT:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "USE_CELLULAR_DATA_DEFAULT"

    const/4 v2, 0x7

    const-string v3, "USE_CELLULAR_DATA_DEFAULT"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->USE_CELLULAR_DATA_DEFAULT:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "LOCATION_LEVEL"

    const/16 v2, 0x8

    const-string v3, "LOCATION_LEVEL"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->LOCATION_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "SHOW_STARTUP_TIP"

    const/16 v2, 0x9

    const-string v3, "SHOW_STARTUP_TIP"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->SHOW_STARTUP_TIP:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "SHOW_STARTUP_ACCOUNT_REGISTRATION"

    const/16 v2, 0xa

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->SHOW_STARTUP_ACCOUNT_REGISTRATION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "UDB_ANONYMOUS_UPLOAD"

    const/16 v2, 0xb

    const-string v3, "UDB_ANONYMOUS_UPLOAD"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->UDB_ANONYMOUS_UPLOAD:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "LIVING_LANGUAGE_ENABLED"

    const/16 v2, 0xc

    const-string v3, "LIVING_LANGUAGE_ENABLED"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->LIVING_LANGUAGE_ENABLED:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "CORE_VERSION"

    const/16 v2, 0xd

    const-string v3, "CORE_VERSION"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->CORE_VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "LANGUAGE_CORE_MAP"

    const/16 v2, 0xe

    const-string v3, "LANGUAGE_CORE_MAP"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->LANGUAGE_CORE_MAP:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "BUILD_TIMESTAMP"

    const/16 v2, 0xf

    const-string v3, "BUILD_TIMESTAMP"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_TIMESTAMP:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "APP_KEY_STARTS"

    const/16 v2, 0x10

    const-string v3, "APP_KEY_STARTS"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->APP_KEY_STARTS:Lcom/nuance/connect/host/service/BuildSettings$Property;

    new-instance v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    const-string v1, "BUILD_EXPIRATION"

    const/16 v2, 0x11

    const-string v3, "BUILD_EXPIRATION"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/host/service/BuildSettings$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_EXPIRATION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/nuance/connect/host/service/BuildSettings$Property;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->OEM_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->APPLICATION_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->CUSTOMER_STRING:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->ANALYTICS_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/host/service/BuildSettings$Property;->DLM_SYNC_ALLOWED:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/host/service/BuildSettings$Property;->DLM_SYNC_DEFAULT:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/host/service/BuildSettings$Property;->USE_CELLULAR_DATA_DEFAULT:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/host/service/BuildSettings$Property;->LOCATION_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/host/service/BuildSettings$Property;->SHOW_STARTUP_TIP:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/host/service/BuildSettings$Property;->SHOW_STARTUP_ACCOUNT_REGISTRATION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/host/service/BuildSettings$Property;->UDB_ANONYMOUS_UPLOAD:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/host/service/BuildSettings$Property;->LIVING_LANGUAGE_ENABLED:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/connect/host/service/BuildSettings$Property;->CORE_VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/connect/host/service/BuildSettings$Property;->LANGUAGE_CORE_MAP:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_TIMESTAMP:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nuance/connect/host/service/BuildSettings$Property;->APP_KEY_STARTS:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_EXPIRATION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->$VALUES:[Lcom/nuance/connect/host/service/BuildSettings$Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nuance/connect/host/service/BuildSettings$Property;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/host/service/BuildSettings$Property;
    .locals 1

    const-class v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings$Property;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/host/service/BuildSettings$Property;
    .locals 1

    sget-object v0, Lcom/nuance/connect/host/service/BuildSettings$Property;->$VALUES:[Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/host/service/BuildSettings$Property;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/host/service/BuildSettings$Property;->key:Ljava/lang/String;

    return-object v0
.end method
