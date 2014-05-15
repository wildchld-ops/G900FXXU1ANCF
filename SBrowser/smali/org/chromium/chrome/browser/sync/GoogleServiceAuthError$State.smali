.class public final enum Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;
.super Ljava/lang/Enum;
.source "GoogleServiceAuthError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum ACCOUNT_DELETED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum ACCOUNT_DISABLED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum CAPTCHA_REQUIRED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum CONNECTION_FAILED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum HOSTED_NOT_ALLOWED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum INVALID_GAIA_CREDENTIALS:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum NONE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum REQUEST_CANCELED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum SERVICE_UNAVAILABLE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum TWO_FACTOR:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum USER_NOT_SIGNED_UP:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;


# instance fields
.field private final mCode:I

.field private final mMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f0c0230

    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6, v6, v5}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->NONE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string v1, "INVALID_GAIA_CREDENTIALS"

    const v2, 0x7f0c0231

    invoke-direct {v0, v1, v7, v7, v2}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->INVALID_GAIA_CREDENTIALS:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string v1, "USER_NOT_SIGNED_UP"

    invoke-direct {v0, v1, v8, v8, v5}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->USER_NOT_SIGNED_UP:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string v1, "CONNECTION_FAILED"

    const v2, 0x7f0c0232

    invoke-direct {v0, v1, v9, v9, v2}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->CONNECTION_FAILED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string v1, "CAPTCHA_REQUIRED"

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->CAPTCHA_REQUIRED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string v1, "ACCOUNT_DELETED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ACCOUNT_DELETED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string v1, "ACCOUNT_DISABLED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ACCOUNT_DISABLED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string v1, "SERVICE_UNAVAILABLE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const v4, 0x7f0c0233

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->SERVICE_UNAVAILABLE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string v1, "TWO_FACTOR"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->TWO_FACTOR:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string v1, "REQUEST_CANCELED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->REQUEST_CANCELED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string v1, "HOSTED_NOT_ALLOWED"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const v4, 0x7f0c0234

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->HOSTED_NOT_ALLOWED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const/16 v0, 0xb

    new-array v0, v0, [Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->NONE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->INVALID_GAIA_CREDENTIALS:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v1, v0, v7

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->USER_NOT_SIGNED_UP:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v1, v0, v8

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->CONNECTION_FAILED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->CAPTCHA_REQUIRED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ACCOUNT_DELETED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ACCOUNT_DISABLED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->SERVICE_UNAVAILABLE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->TWO_FACTOR:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->REQUEST_CANCELED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->HOSTED_NOT_ALLOWED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->$VALUES:[Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->mCode:I

    iput p4, p0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->mMessage:I

    return-void
.end method

.method public static fromCode(I)Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;
    .locals 7

    invoke-static {}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->values()[Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget v4, v3, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->mCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No state for code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;
    .locals 1

    sget-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->$VALUES:[Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    return-object v0
.end method


# virtual methods
.method public getMessage()I
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->mMessage:I

    return v0
.end method
