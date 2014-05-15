.class final enum Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;
.super Ljava/lang/Enum;
.source "SBrowserSmartcardWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SMARTCARD_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

.field public static final enum FINALIZING:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

.field public static final enum INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

.field public static final enum INITIALIZING:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

.field public static final enum NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->INITIALIZING:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    const-string v1, "FINALIZING"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->FINALIZING:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->INITIALIZING:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->FINALIZING:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->$VALUES:[Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->$VALUES:[Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    return-object v0
.end method
