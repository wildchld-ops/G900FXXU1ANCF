.class public abstract Lcom/sec/android/app/sbrowser/decoder/StrLookup;
.super Ljava/lang/Object;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/decoder/StrLookup$MapStrLookup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NONE_LOOKUP:Lcom/sec/android/app/sbrowser/decoder/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/decoder/StrLookup",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_PROPERTIES_LOOKUP:Lcom/sec/android/app/sbrowser/decoder/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/decoder/StrLookup",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v4, Lcom/sec/android/app/sbrowser/decoder/StrLookup$MapStrLookup;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sec/android/app/sbrowser/decoder/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    sput-object v4, Lcom/sec/android/app/sbrowser/decoder/StrLookup;->NONE_LOOKUP:Lcom/sec/android/app/sbrowser/decoder/StrLookup;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    move-object v3, v2

    new-instance v1, Lcom/sec/android/app/sbrowser/decoder/StrLookup$MapStrLookup;

    invoke-direct {v1, v3}, Lcom/sec/android/app/sbrowser/decoder/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v1, Lcom/sec/android/app/sbrowser/decoder/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lcom/sec/android/app/sbrowser/decoder/StrLookup;

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/StrLookup;->NONE_LOOKUP:Lcom/sec/android/app/sbrowser/decoder/StrLookup;

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapLookup(Ljava/util/Map;)Lcom/sec/android/app/sbrowser/decoder/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lcom/sec/android/app/sbrowser/decoder/StrLookup",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrLookup$MapStrLookup;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static noneLookup()Lcom/sec/android/app/sbrowser/decoder/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/app/sbrowser/decoder/StrLookup",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrLookup;->NONE_LOOKUP:Lcom/sec/android/app/sbrowser/decoder/StrLookup;

    return-object v0
.end method

.method public static systemPropertiesLookup()Lcom/sec/android/app/sbrowser/decoder/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/app/sbrowser/decoder/StrLookup",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lcom/sec/android/app/sbrowser/decoder/StrLookup;

    return-object v0
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/lang/String;
.end method
