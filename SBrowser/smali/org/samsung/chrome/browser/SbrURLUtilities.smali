.class public Lorg/samsung/chrome/browser/SbrURLUtilities;
.super Ljava/lang/Object;
.source "SbrURLUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDomainAndRegistry(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrURLUtilities;->nativeGetDomainAndRegistry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeGetDomainAndRegistry(Ljava/lang/String;)Ljava/lang/String;
.end method
