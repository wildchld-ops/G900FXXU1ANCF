.class public final enum Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;
.super Ljava/lang/Enum;
.source "WebNotificationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

.field public static final enum NOTIFICATION_ALWAYS:Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

.field public static final enum NOTIFICATION_OFF:Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

.field public static final enum NOTIFICATION_ON_DEMAND:Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;


# instance fields
.field private index:I

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    const-string v1, "NOTIFICATION_ALWAYS"

    const-string v2, "ON"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->NOTIFICATION_ALWAYS:Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    const-string v1, "NOTIFICATION_ON_DEMAND"

    const-string v2, "ON_DEMAND"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->NOTIFICATION_ON_DEMAND:Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    const-string v1, "NOTIFICATION_OFF"

    const-string v2, "OFF"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->NOTIFICATION_OFF:Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->NOTIFICATION_ALWAYS:Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->NOTIFICATION_ON_DEMAND:Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->NOTIFICATION_OFF:Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->$VALUES:[Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->title:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->index:I

    return-void
.end method

.method static GetNotificationFromTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->values()[Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    move-result-object v5

    sget-object v4, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->NOTIFICATION_OFF:Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v6, v3, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->title:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v3

    :cond_0
    return-object v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static GetTypeFromIndex(I)Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->values()[Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget v6, v3, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->index:I

    if-ne v6, p0, :cond_0

    move-object v4, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->$VALUES:[Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    return-object v0
.end method


# virtual methods
.method public getDisplayTitle()I
    .locals 2

    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->index:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0c00c7

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0c00c8

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0c00c9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public index()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->index:I

    return v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->title:Ljava/lang/String;

    return-object v0
.end method
