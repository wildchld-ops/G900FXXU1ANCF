.class public final enum Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;
.super Ljava/lang/Enum;
.source "WebAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobar/WebAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebAlertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

.field public static final enum WEBALERT_CONFIRM:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

.field public static final enum WEBALERT_MESSAGE:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

.field public static final enum WEBALERT_NOTIFICATION_MESSAGE:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

.field public static final enum WEBALERT_POPUP_BLOCKED:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    const-string v1, "WEBALERT_CONFIRM"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_CONFIRM:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    const-string v1, "WEBALERT_MESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_MESSAGE:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    const-string v1, "WEBALERT_POPUP_BLOCKED"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_POPUP_BLOCKED:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    const-string v1, "WEBALERT_NOTIFICATION_MESSAGE"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_NOTIFICATION_MESSAGE:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    sget-object v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_CONFIRM:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_MESSAGE:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_POPUP_BLOCKED:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_NOTIFICATION_MESSAGE:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->$VALUES:[Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->$VALUES:[Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    return-object v0
.end method
