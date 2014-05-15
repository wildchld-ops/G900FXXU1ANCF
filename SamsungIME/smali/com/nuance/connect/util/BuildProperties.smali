.class public Lcom/nuance/connect/util/BuildProperties;
.super Ljava/lang/Object;
.source "BuildProperties.java"

# interfaces
.implements Lcom/nuance/connect/util/BuildProps;


# static fields
.field public static final ALM_DL:Ljava/lang/String; = "ALM_DL"

.field private static final ANDROIDID_HASH:Ljava/lang/String; = "ANDROIDID_HASH"

.field public static final APPLICATION_ID:Ljava/lang/String; = "APPLICATION_ID"

.field public static final BOARD:Ljava/lang/String; = "BOARD"

.field public static final BOOTLOADER:Ljava/lang/String; = "BOOTLOADER"

.field public static final BRAND:Ljava/lang/String; = "BRAND"

.field public static final CORE_VERSION_ALPHA:Ljava/lang/String; = "CORE_VERSION_ALPHA"

.field public static final CORE_VERSION_CHINESE:Ljava/lang/String; = "CORE_VERSION_CHINESE"

.field public static final CORE_VERSION_JAPANESE:Ljava/lang/String; = "CORE_VERSION_JAPANESE"

.field public static final CORE_VERSION_KOREAN:Ljava/lang/String; = "CORE_VERSION_KOREAN"

.field public static final CPU_ABI:Ljava/lang/String; = "CPU_ABI"

.field public static final CPU_ABI2:Ljava/lang/String; = "CPU_ABI2"

.field public static final CUSTOMER_STRING:Ljava/lang/String; = "CUSTOMER_STRING"

.field public static final DEVICE:Ljava/lang/String; = "DEVICE"

.field public static final DEVICE_ID:Ljava/lang/String; = "DEVICE_ID"

.field private static final DEVICE_PROPERTIES:[Ljava/lang/String; = null

.field public static final DISPLAY:Ljava/lang/String; = "DISPLAY"

.field public static final DOCUMENT_REVISIONS:Ljava/lang/String; = "DOCUMENT_REVISIONS"

.field public static final FINGERPRINT:Ljava/lang/String; = "FINGERPRINT"

.field public static final HARDWARE:Ljava/lang/String; = "HARDWARE"

.field public static final ID:Ljava/lang/String; = "ID"

.field private static final IGNORE_CHANGES_PROPERTIES:[Ljava/lang/String; = null

.field public static final IMEI_HASH:Ljava/lang/String; = "IMEI_HASH"

.field public static final LANGUAGES:Ljava/lang/String; = "LANGUAGES"

.field public static final LANGUAGES_DL:Ljava/lang/String; = "LANGUAGES_DL"

.field public static final LOCALE:Ljava/lang/String; = "LOCALE"

.field public static final MAC_HASH:Ljava/lang/String; = "MAC_HASH"

.field public static final MANUFACTURER:Ljava/lang/String; = "MANUFACTURER"

.field public static final MODEL:Ljava/lang/String; = "MODEL"

.field public static final NAD_ID:Ljava/lang/String; = "NAD_ID"

.field public static final OEM_ID:Ljava/lang/String; = "OEM_ID"

.field public static final OS_VERSION:Ljava/lang/String; = "OS_VERSION"

.field public static final PRODUCT:Ljava/lang/String; = "PRODUCT"

.field public static final RADIO:Ljava/lang/String; = "RADIO"

.field private static final REQUIRED_DEVICE_PROPERTIES:[Ljava/lang/String; = null

.field public static final SCREENLAYOUT_SIZE:Ljava/lang/String; = "SCREENLAYOUT_SIZE"

.field public static final SCREENRESOLUTION:Ljava/lang/String; = "SCREENRESOLUTION"

.field public static final SCREEN_DENSITY:Ljava/lang/String; = "SCREEN_DENSITY"

.field public static final SDK_VERSION:Ljava/lang/String; = "SDK_VERSION"

.field public static final SERIAL_HASH:Ljava/lang/String; = "SERIAL_HASH"

.field public static final SWIB:Ljava/lang/String; = "SWIB"

.field public static final SWYPER_ID:Ljava/lang/String; = "SWYPER_ID"

.field public static final SWYPE_BUILD_TYPE:Ljava/lang/String; = "SWYPE_BUILD_TYPE"

.field public static final SWYPE_OEM_NAME:Ljava/lang/String; = "SWYPE_OEM_NAME"

.field public static final SWYPE_PRIVACY_ENABLED:Ljava/lang/String; = "SWYPE_PRIVACY_ENABLED"

.field public static final SWYPE_PROJECT_NAME:Ljava/lang/String; = "SWYPE_PROJECT_NAME"

.field public static final SWYPE_VERSION:Ljava/lang/String; = "SWYPE_VERSION"

.field public static final TAGS:Ljava/lang/String; = "TAGS"

.field public static final TIMEZONE:Ljava/lang/String; = "TIMEZONE"

.field public static final TRIAL:Ljava/lang/String; = "TRIAL"

.field public static final TYPE:Ljava/lang/String; = "TYPE"


# instance fields
.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/ConnectClient;",
            ">;"
        }
    .end annotation
.end field

.field private nuanceId:Lcom/nuance/id/NuanceId;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x30

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ID"

    aput-object v1, v0, v3

    const-string v1, "PRODUCT"

    aput-object v1, v0, v4

    const-string v1, "DEVICE"

    aput-object v1, v0, v5

    const-string v1, "BOARD"

    aput-object v1, v0, v6

    const-string v1, "MANUFACTURER"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "BRAND"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MODEL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SWYPE_OEM_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SWYPE_PROJECT_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "OS_VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SWYPE_VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SCREENRESOLUTION"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LANGUAGES"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DEVICE_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "BOOTLOADER"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CPU_ABI"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "CPU_ABI2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "DISPLAY"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "FINGERPRINT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "HARDWARE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "RADIO"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TAGS"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TIMEZONE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SWIB"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "SWYPER_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "LANGUAGES_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ALM_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SWYPE_PRIVACY_ENABLED"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SWYPE_BUILD_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SCREENLAYOUT_SIZE"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SCREEN_DENSITY"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "TRIAL"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "IMEI_HASH"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SERIAL_HASH"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ANDROIDID_HASH"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "MAC_HASH"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "NAD_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "LOCALE"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "OEM_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "SDK_VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "APPLICATION_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "CUSTOMER_STRING"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "CORE_VERSION_ALPHA"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "CORE_VERSION_CHINESE"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "CORE_VERSION_JAPANESE"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "CORE_VERSION_KOREAN"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "DOCUMENT_REVISIONS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "LANGUAGES"

    aput-object v1, v0, v3

    const-string v1, "MANUFACTURER"

    aput-object v1, v0, v4

    const-string v1, "MODEL"

    aput-object v1, v0, v5

    const-string v1, "SCREENRESOLUTION"

    aput-object v1, v0, v6

    const-string v1, "IMEI_HASH"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "SERIAL_HASH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ANDROIDID_HASH"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MAC_HASH"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/util/BuildProperties;->REQUIRED_DEVICE_PROPERTIES:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SCREENRESOLUTION"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/connect/util/BuildProperties;->IGNORE_CHANGES_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected static getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-class v2, Landroid/os/Build;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v2, Landroid/os/Build;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v1, p2

    iget-object v2, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public compareDeviceProperties(Ljava/util/HashMap;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    array-length v7, p2

    if-nez v7, :cond_1

    :cond_0
    sget-object p2, Lcom/nuance/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    :cond_1
    new-instance v4, Ljava/util/HashSet;

    sget-object v7, Lcom/nuance/connect/util/BuildProperties;->IGNORE_CHANGES_PROPERTIES:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/nuance/connect/util/BuildProperties;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v1

    if-eqz p1, :cond_5

    move-object v0, p2

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v6, v0, v3

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_4
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v1, Lcom/nuance/id/NuanceId;

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/nuance/id/NuanceId;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/BuildProperties;->getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceProperties()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lcom/nuance/id/NuanceId;

    iget-object v6, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-direct {v7, v6}, Lcom/nuance/id/NuanceId;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    sget-object v0, Lcom/nuance/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/nuance/connect/util/BuildProperties;->getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    const-string v17, "ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    const-string v17, "PRODUCT"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    const-string v17, "DEVICE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    const-string v17, "BOARD"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_3
    const-string v17, "MANUFACTURER"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_4
    const-string v17, "BRAND"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_5
    const-string v17, "MODEL"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_6
    const-string v17, "BOOTLOADER"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_7
    const-string v17, "CPU_ABI"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_8
    const-string v17, "CPU_ABI2"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_9
    const-string v17, "DISPLAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_a
    const-string v17, "FINGERPRINT"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_b
    const-string v17, "HARDWARE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_c
    const-string v17, "RADIO"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_d
    const-string v17, "TAGS"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_e
    const-string v17, "TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_f
    const-string v17, "SWYPE_VERSION"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const-string v9, ""

    goto/16 :goto_0

    :cond_10
    const-string v17, "OS_VERSION"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    const-string v17, "SCREENRESOLUTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Lcom/nuance/connect/service/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v17, "x"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_12
    const-string v17, "LANGUAGES"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v9, ""

    goto/16 :goto_0

    :cond_13
    const-string v17, "SWIB"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_2f

    sget-object v17, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->SWIB:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_14
    const-string v17, "OEM_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_2f

    sget-object v17, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_15
    const-string v17, "SDK_VERSION"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_2f

    sget-object v17, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->SDK_VERSION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_16
    const-string v17, "APPLICATION_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_2f

    sget-object v17, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->APPLICATION_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_17
    const-string v17, "CUSTOMER_STRING"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_2f

    sget-object v17, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CUSTOMER_STRING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_18
    const-string v17, "DEVICE_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    const/4 v9, 0x0

    const-string v17, "DEVICE_ID"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/BuildProperties;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_19
    const-string v17, "TRIAL"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const-string v9, "False"

    goto/16 :goto_0

    :cond_1a
    const-string v17, "TIMEZONE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_1b
    const-string v17, "SWYPER_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/4 v9, 0x0

    const-string v17, "SWYPER_ID"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/BuildProperties;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_1c
    const-string v17, "LANGUAGES_DL"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    const/4 v10, 0x0

    const-string v17, "LANGUAGES_DL"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/BuildProperties;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    goto/16 :goto_0

    :cond_1d
    const-string v17, "ALM_DL"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    const/4 v10, 0x0

    const/4 v10, 0x0

    move-object v9, v10

    goto/16 :goto_0

    :cond_1e
    const-string v17, "SWYPE_PRIVACY_ENABLED"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    const/4 v11, 0x0

    move-object v9, v11

    goto/16 :goto_0

    :cond_1f
    const-string v17, "SWYPE_BUILD_TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_2f

    sget-object v17, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BUILD_TYPE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_20
    const-string v17, "SCREENLAYOUT_SIZE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Lcom/nuance/connect/service/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v17, v0

    and-int/lit8 v13, v17, 0xf

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_21
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_22
    const-string v17, "SCREEN_DENSITY"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_24

    const/16 v7, 0xa0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_23

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v4}, Lcom/nuance/connect/service/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v7, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    :cond_23
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_24
    const-string v17, "IMEI_HASH"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/id/NuanceId;->getIMEIHash()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_25
    const-string v17, "SERIAL_HASH"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/id/NuanceId;->getSerialHash()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_26
    const-string v17, "ANDROIDID_HASH"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/id/NuanceId;->getAndroidIdHash()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_27
    const-string v17, "MAC_HASH"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/id/NuanceId;->getMacHash()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_28
    const-string v17, "NAD_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/id/NuanceId;->getExternalId()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_29
    const-string v17, "LOCALE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2a

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_2a
    const-string v17, "CORE_VERSION_ALPHA"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_2f

    sget-object v17, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_ALPHA:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_2b
    const-string v17, "CORE_VERSION_CHINESE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_2f

    sget-object v17, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_CHINESE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_2c
    const-string v17, "CORE_VERSION_JAPANESE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_2f

    sget-object v17, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_JAPANESE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_2d
    const-string v17, "CORE_VERSION_KOREAN"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_2f

    sget-object v17, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_KOREAN:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_2e
    const-string v17, "DOCUMENT_REVISIONS"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v4, :cond_2f

    sget-object v17, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DOCUMENT_REVISIONS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_2f
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public hasRequiredDeviceProperties(Ljava/util/HashMap;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/BuildProperties;->REQUIRED_DEVICE_PROPERTIES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "SWIB"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "OEM_ID"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "SWIB"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method
