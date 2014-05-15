.class public final Lcom/fido/android/framework/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final AGENT_API:I = 0x1

.field public static final CHECK_MFAC_CERTIFICATE:Z = false

.field public static final COMPANY_NAME:Ljava/lang/String; = "Nok Nok Labs"

.field private static final DEFAULT_API_VERSION:I = 0x1

.field public static final MFAC_PACKAGE_NAME:Ljava/lang/String; = "com.noknok.android.framework.service"

.field private static final NO_API_FOUND:I = -0x1

.field private static final TM_API:I = 0x1

.field private static final agentVersionCode:I = 0x1

.field private static final agentVersionName:Ljava/lang/String; = "1.3.2."

.field private static final serviceVersionCode:I = 0x1

.field private static final serviceVersionName:Ljava/lang/String; = "1.3.2."

.field private static final tmVersionCode:I = 0x1

.field private static final tmVersionName:Ljava/lang/String; = "1.3.2."


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkServiceVersion(Landroid/content/Context;)I
    .locals 6

    const/4 v2, 0x1

    const/4 v1, -0x1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.noknok.android.framework.service"

    const-string v5, "com.fido.android.framework.service.FidoService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/fido/android/framework/Version;->readVersion(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v0

    if-gt v2, v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static checkTmVersion(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 2

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lcom/fido/android/framework/Version;->readVersion(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private static readVersion(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "API"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    const/4 v0, -0x1

    goto :goto_0
.end method
