.class public final enum Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;
.super Ljava/lang/Enum;
.source "StreamUpdateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsstream/lib/covers/StreamUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISCONNECTED_FROM_SSTREAM:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

.field public static final enum DUPLICATE_REQUEST:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

.field private static final synthetic ENUM$VALUES:[Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

.field public static final enum INVALID_ARGUMENTS:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

.field public static final enum NO_NETWORK_CONNECTIVITY:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

.field public static final enum NO_NEW_UPDATE:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

.field public static final enum TIMEOUT:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

.field public static final enum UNKNOWN:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->UNKNOWN:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    new-instance v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    const-string v1, "DUPLICATE_REQUEST"

    invoke-direct {v0, v1, v4}, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->DUPLICATE_REQUEST:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    new-instance v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    const-string v1, "INVALID_ARGUMENTS"

    invoke-direct {v0, v1, v5}, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->INVALID_ARGUMENTS:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    new-instance v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    const-string v1, "NO_NEW_UPDATE"

    invoke-direct {v0, v1, v6}, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->NO_NEW_UPDATE:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    new-instance v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    const-string v1, "NO_NETWORK_CONNECTIVITY"

    invoke-direct {v0, v1, v7}, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->NO_NETWORK_CONNECTIVITY:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    new-instance v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    const-string v1, "DISCONNECTED_FROM_SSTREAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->DISCONNECTED_FROM_SSTREAM:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    new-instance v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->TIMEOUT:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    const/4 v0, 0x7

    new-array v0, v0, [Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    sget-object v1, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->UNKNOWN:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    aput-object v1, v0, v3

    sget-object v1, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->DUPLICATE_REQUEST:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    aput-object v1, v0, v4

    sget-object v1, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->INVALID_ARGUMENTS:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    aput-object v1, v0, v5

    sget-object v1, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->NO_NEW_UPDATE:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    aput-object v1, v0, v6

    sget-object v1, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->NO_NETWORK_CONNECTIVITY:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->DISCONNECTED_FROM_SSTREAM:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->TIMEOUT:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    aput-object v2, v0, v1

    sput-object v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->ENUM$VALUES:[Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;
    .locals 1

    const-class v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    return-object v0
.end method

.method public static values()[Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->ENUM$VALUES:[Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    array-length v1, v0

    new-array v2, v1, [Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
