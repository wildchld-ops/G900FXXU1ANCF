.class public Lcom/samsung/mms/util/MmsFeature;
.super Ljava/lang/Object;
.source "MmsFeature.java"


# static fields
.field public static final ECID_ENABLE:Ljava/lang/String; = "ecid_enable"

.field private static buildCarrier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/mms/util/MmsFeature;->buildCarrier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ecid_enable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "klteuc"

    sget-object v2, Lcom/samsung/mms/util/MmsFeature;->buildCarrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "kactivelteuc"

    sget-object v2, Lcom/samsung/mms/util/MmsFeature;->buildCarrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
