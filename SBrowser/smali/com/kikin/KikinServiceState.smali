.class public final enum Lcom/kikin/KikinServiceState;
.super Ljava/lang/Enum;
.source "KikinServiceState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/KikinServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/KikinServiceState;

.field public static final enum USER_CANCELED:Lcom/kikin/KikinServiceState;

.field public static final enum USER_DISABLED:Lcom/kikin/KikinServiceState;

.field public static final enum USER_ENABLED:Lcom/kikin/KikinServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/kikin/KikinServiceState;

    const-string v1, "USER_ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/kikin/KikinServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinServiceState;->USER_ENABLED:Lcom/kikin/KikinServiceState;

    new-instance v0, Lcom/kikin/KikinServiceState;

    const-string v1, "USER_DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/kikin/KikinServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinServiceState;->USER_DISABLED:Lcom/kikin/KikinServiceState;

    new-instance v0, Lcom/kikin/KikinServiceState;

    const-string v1, "USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/kikin/KikinServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/KikinServiceState;->USER_CANCELED:Lcom/kikin/KikinServiceState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kikin/KikinServiceState;

    sget-object v1, Lcom/kikin/KikinServiceState;->USER_ENABLED:Lcom/kikin/KikinServiceState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kikin/KikinServiceState;->USER_DISABLED:Lcom/kikin/KikinServiceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kikin/KikinServiceState;->USER_CANCELED:Lcom/kikin/KikinServiceState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kikin/KikinServiceState;->$VALUES:[Lcom/kikin/KikinServiceState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/KikinServiceState;
    .locals 1

    const-class v0, Lcom/kikin/KikinServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/KikinServiceState;

    return-object v0
.end method

.method public static values()[Lcom/kikin/KikinServiceState;
    .locals 1

    sget-object v0, Lcom/kikin/KikinServiceState;->$VALUES:[Lcom/kikin/KikinServiceState;

    invoke-virtual {v0}, [Lcom/kikin/KikinServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/KikinServiceState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
