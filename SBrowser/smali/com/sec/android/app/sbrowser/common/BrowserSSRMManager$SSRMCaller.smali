.class public final enum Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;
.super Ljava/lang/Enum;
.source "BrowserSSRMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SSRMCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

.field public static final enum ID_CANVAS:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

.field public static final enum ID_CSS:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

.field public static final enum ID_ETC:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

.field public static final enum ID_V8:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    const-string v1, "ID_V8"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->ID_V8:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    const-string v1, "ID_CSS"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->ID_CSS:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    const-string v1, "ID_CANVAS"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->ID_CANVAS:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    const-string v1, "ID_ETC"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->ID_ETC:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->ID_V8:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->ID_CSS:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->ID_CANVAS:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->ID_ETC:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->$VALUES:[Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->$VALUES:[Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    return-object v0
.end method
