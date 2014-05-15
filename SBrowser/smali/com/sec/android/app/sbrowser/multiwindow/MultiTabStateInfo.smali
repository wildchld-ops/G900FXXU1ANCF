.class public final enum Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
.super Ljava/lang/Enum;
.source "MultiTabStateInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

.field public static final enum CLOSE_BUTTON_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

.field public static final enum DND:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

.field public static final enum DRAG_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

.field public static final enum FLING:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

.field public static final enum FLING_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

.field public static final enum PINCH:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

.field public static final enum SCROLL:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

.field public static final enum TOUCH:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

.field public static final enum WINDOWMANAGER_DRAG:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    const-string v1, "DRAG_DELETE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->DRAG_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    const-string v1, "SCROLL"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->SCROLL:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    const-string v1, "FLING"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->FLING:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    const-string v1, "PINCH"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->PINCH:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    const-string v1, "FLING_DELETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->FLING_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    const-string v1, "WINDOWMANAGER_DRAG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->WINDOWMANAGER_DRAG:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    const-string v1, "TOUCH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->TOUCH:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    const-string v1, "CLOSE_BUTTON_DELETE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->CLOSE_BUTTON_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    const-string v1, "DND"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->DND:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->DRAG_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->SCROLL:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->FLING:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->PINCH:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->FLING_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->WINDOWMANAGER_DRAG:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->TOUCH:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->CLOSE_BUTTON_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->DND:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->$VALUES:[Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->$VALUES:[Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    return-object v0
.end method
