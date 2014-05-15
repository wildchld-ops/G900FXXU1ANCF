.class public final enum Lcom/fido/android/framework/agent/api/ResultType;
.super Ljava/lang/Enum;
.source "ResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fido/android/framework/agent/api/ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fido/android/framework/agent/api/ResultType;

.field public static final enum APP_NOT_FOUND:Lcom/fido/android/framework/agent/api/ResultType;

.field public static final enum CANCELED:Lcom/fido/android/framework/agent/api/ResultType;

.field public static final enum FAILURE:Lcom/fido/android/framework/agent/api/ResultType;

.field public static final enum INCORRECT_ORIGIN:Lcom/fido/android/framework/agent/api/ResultType;

.field public static final enum NOT_COMPATIBLE:Lcom/fido/android/framework/agent/api/ResultType;

.field public static final enum NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

.field public static final enum NO_MATCH:Lcom/fido/android/framework/agent/api/ResultType;

.field public static final enum SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

.field public static final enum TRANSACTION_ERROR:Lcom/fido/android/framework/agent/api/ResultType;

.field public static final enum UPDATE:Lcom/fido/android/framework/agent/api/ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/fido/android/framework/agent/api/ResultType;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/fido/android/framework/agent/api/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    new-instance v0, Lcom/fido/android/framework/agent/api/ResultType;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/fido/android/framework/agent/api/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fido/android/framework/agent/api/ResultType;->FAILURE:Lcom/fido/android/framework/agent/api/ResultType;

    new-instance v0, Lcom/fido/android/framework/agent/api/ResultType;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v5}, Lcom/fido/android/framework/agent/api/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fido/android/framework/agent/api/ResultType;->CANCELED:Lcom/fido/android/framework/agent/api/ResultType;

    new-instance v0, Lcom/fido/android/framework/agent/api/ResultType;

    const-string v1, "NO_MATCH"

    invoke-direct {v0, v1, v6}, Lcom/fido/android/framework/agent/api/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fido/android/framework/agent/api/ResultType;->NO_MATCH:Lcom/fido/android/framework/agent/api/ResultType;

    new-instance v0, Lcom/fido/android/framework/agent/api/ResultType;

    const-string v1, "INCORRECT_ORIGIN"

    invoke-direct {v0, v1, v7}, Lcom/fido/android/framework/agent/api/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fido/android/framework/agent/api/ResultType;->INCORRECT_ORIGIN:Lcom/fido/android/framework/agent/api/ResultType;

    new-instance v0, Lcom/fido/android/framework/agent/api/ResultType;

    const-string v1, "NOT_INSTALLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fido/android/framework/agent/api/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    new-instance v0, Lcom/fido/android/framework/agent/api/ResultType;

    const-string v1, "NOT_COMPATIBLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fido/android/framework/agent/api/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fido/android/framework/agent/api/ResultType;->NOT_COMPATIBLE:Lcom/fido/android/framework/agent/api/ResultType;

    new-instance v0, Lcom/fido/android/framework/agent/api/ResultType;

    const-string v1, "APP_NOT_FOUND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fido/android/framework/agent/api/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fido/android/framework/agent/api/ResultType;->APP_NOT_FOUND:Lcom/fido/android/framework/agent/api/ResultType;

    new-instance v0, Lcom/fido/android/framework/agent/api/ResultType;

    const-string v1, "UPDATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fido/android/framework/agent/api/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fido/android/framework/agent/api/ResultType;->UPDATE:Lcom/fido/android/framework/agent/api/ResultType;

    new-instance v0, Lcom/fido/android/framework/agent/api/ResultType;

    const-string v1, "TRANSACTION_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fido/android/framework/agent/api/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fido/android/framework/agent/api/ResultType;->TRANSACTION_ERROR:Lcom/fido/android/framework/agent/api/ResultType;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/fido/android/framework/agent/api/ResultType;

    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->FAILURE:Lcom/fido/android/framework/agent/api/ResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->CANCELED:Lcom/fido/android/framework/agent/api/ResultType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->NO_MATCH:Lcom/fido/android/framework/agent/api/ResultType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->INCORRECT_ORIGIN:Lcom/fido/android/framework/agent/api/ResultType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->NOT_COMPATIBLE:Lcom/fido/android/framework/agent/api/ResultType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->APP_NOT_FOUND:Lcom/fido/android/framework/agent/api/ResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->UPDATE:Lcom/fido/android/framework/agent/api/ResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->TRANSACTION_ERROR:Lcom/fido/android/framework/agent/api/ResultType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fido/android/framework/agent/api/ResultType;->$VALUES:[Lcom/fido/android/framework/agent/api/ResultType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fido/android/framework/agent/api/ResultType;
    .locals 1

    const-class v0, Lcom/fido/android/framework/agent/api/ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fido/android/framework/agent/api/ResultType;

    return-object v0
.end method

.method public static values()[Lcom/fido/android/framework/agent/api/ResultType;
    .locals 1

    sget-object v0, Lcom/fido/android/framework/agent/api/ResultType;->$VALUES:[Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {v0}, [Lcom/fido/android/framework/agent/api/ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fido/android/framework/agent/api/ResultType;

    return-object v0
.end method
