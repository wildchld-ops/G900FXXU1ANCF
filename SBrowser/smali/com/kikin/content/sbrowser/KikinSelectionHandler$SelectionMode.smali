.class public enum Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;
.super Ljava/lang/Enum;
.source "KikinSelectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/content/sbrowser/KikinSelectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "SelectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;

.field public static final enum NEW_SELECTION:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;

.field public static final enum UPDATE_SELECTION:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode$1;

    const-string v1, "NEW_SELECTION"

    invoke-direct {v0, v1, v2}, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;->NEW_SELECTION:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;

    new-instance v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode$2;

    const-string v1, "UPDATE_SELECTION"

    invoke-direct {v0, v1, v3}, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;->UPDATE_SELECTION:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;

    sget-object v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;->NEW_SELECTION:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;->UPDATE_SELECTION:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;->$VALUES:[Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/kikin/content/sbrowser/KikinSelectionHandler$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;
    .locals 1

    const-class v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;

    return-object v0
.end method

.method public static values()[Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;
    .locals 1

    sget-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;->$VALUES:[Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;

    invoke-virtual {v0}, [Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;

    return-object v0
.end method
