.class public final enum Lcom/sec/android/app/sbrowser/decoder/JavaVersion;
.super Ljava/lang/Enum;
.source "JavaVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/decoder/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

.field public static final enum JAVA_0_9:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

.field public static final enum JAVA_1_1:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

.field public static final enum JAVA_1_2:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

.field public static final enum JAVA_1_3:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

.field public static final enum JAVA_1_4:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

.field public static final enum JAVA_1_5:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

.field public static final enum JAVA_1_6:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

.field public static final enum JAVA_1_7:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

.field public static final enum JAVA_1_8:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;


# instance fields
.field private name:Ljava/lang/String;

.field private value:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3fc0

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    const-string v1, "JAVA_0_9"

    const-string v2, "0.9"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_0_9:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    const-string v1, "JAVA_1_1"

    const v2, 0x3f8ccccd

    const-string v3, "1.1"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_1:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    const-string v1, "JAVA_1_2"

    const v2, 0x3f99999a

    const-string v3, "1.2"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_2:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    const-string v1, "JAVA_1_3"

    const v2, 0x3fa66666

    const-string v3, "1.3"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_3:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    const-string v1, "JAVA_1_4"

    const/4 v2, 0x4

    const v3, 0x3fb33333

    const-string v4, "1.4"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_4:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    const-string v1, "JAVA_1_5"

    const/4 v2, 0x5

    const-string v3, "1.5"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_5:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    const-string v1, "JAVA_1_6"

    const/4 v2, 0x6

    const v3, 0x3fcccccd

    const-string v4, "1.6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_6:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    const-string v1, "JAVA_1_7"

    const/4 v2, 0x7

    const v3, 0x3fd9999a

    const-string v4, "1.7"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_7:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    const-string v1, "JAVA_1_8"

    const/16 v2, 0x8

    const v3, 0x3fe66666

    const-string v4, "1.8"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_8:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_0_9:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_1:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_2:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_3:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_4:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_5:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_6:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_7:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_8:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->$VALUES:[Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->value:F

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->name:Ljava/lang/String;

    return-void
.end method

.method static get(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/JavaVersion;
    .locals 1

    const-string v0, "0.9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_0_9:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "1.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_1:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    goto :goto_0

    :cond_1
    const-string v0, "1.2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_2:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    goto :goto_0

    :cond_2
    const-string v0, "1.3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_3:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    goto :goto_0

    :cond_3
    const-string v0, "1.4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_4:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    goto :goto_0

    :cond_4
    const-string v0, "1.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_5:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    goto :goto_0

    :cond_5
    const-string v0, "1.6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_6:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    goto :goto_0

    :cond_6
    const-string v0, "1.7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_7:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    goto :goto_0

    :cond_7
    const-string v0, "1.8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->JAVA_1_8:Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getJavaVersion(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/JavaVersion;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->get(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/JavaVersion;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/decoder/JavaVersion;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->$VALUES:[Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/decoder/JavaVersion;

    return-object v0
.end method


# virtual methods
.method public atLeast(Lcom/sec/android/app/sbrowser/decoder/JavaVersion;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->value:F

    iget v1, p1, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->value:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/JavaVersion;->name:Ljava/lang/String;

    return-object v0
.end method
