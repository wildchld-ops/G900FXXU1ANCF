.class final enum Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;
.super Ljava/lang/Enum;
.source "SBrowserCertificateViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SecurityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

.field public static final enum EV_SECURE:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

.field public static final enum SECURE:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

.field public static final enum SECURITY_ERROR:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

.field public static final enum SECURITY_WARNING:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;->NONE:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    const-string v1, "EV_SECURE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;->EV_SECURE:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    const-string v1, "SECURE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;->SECURE:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    const-string v1, "SECURITY_WARNING"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;->SECURITY_WARNING:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    const-string v1, "SECURITY_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;->SECURITY_ERROR:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;->NONE:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;->EV_SECURE:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;->SECURE:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;->SECURITY_WARNING:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;->SECURITY_ERROR:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;->$VALUES:[Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;->$VALUES:[Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;

    return-object v0
.end method
