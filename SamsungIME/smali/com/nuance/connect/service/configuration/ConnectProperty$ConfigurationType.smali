.class public final enum Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;
.super Ljava/lang/Enum;
.source "ConnectProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/configuration/ConnectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigurationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

.field public static final enum BUILD:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

.field public static final enum CONFIG:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

.field public static final enum DEFAULT:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

.field public static final enum SERVER:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->DEFAULT:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    const-string v1, "CONFIG"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    const-string v1, "BUILD"

    invoke-direct {v0, v1, v5}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->BUILD:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->DEFAULT:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->BUILD:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->$VALUES:[Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;
    .locals 1

    const-class v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->$VALUES:[Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v0}, [Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    return-object v0
.end method
