.class public final enum Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;
.super Ljava/lang/Enum;
.source "CallDetailDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;

.field public static final enum UPDATE_PHONE_CALL_DETAILS:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;

    const-string v1, "UPDATE_PHONE_CALL_DETAILS"

    invoke-direct {v0, v1, v2}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;

    sget-object v1, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;->$VALUES:[Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;
    .locals 1

    const-class v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;

    return-object v0
.end method

.method public static values()[Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;
    .locals 1

    sget-object v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;->$VALUES:[Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;

    invoke-virtual {v0}, [Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;

    return-object v0
.end method
