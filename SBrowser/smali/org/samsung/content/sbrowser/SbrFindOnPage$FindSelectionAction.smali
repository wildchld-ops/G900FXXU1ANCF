.class public final enum Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;
.super Ljava/lang/Enum;
.source "SbrFindOnPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/SbrFindOnPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FindSelectionAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

.field public static final enum ACTIVATE_SELECTION:Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

.field public static final enum CLEAR_SELECTION:Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

.field public static final enum KEEP_SELECTION:Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    const-string v1, "KEEP_SELECTION"

    invoke-direct {v0, v1, v2}, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;->KEEP_SELECTION:Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    new-instance v0, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    const-string v1, "CLEAR_SELECTION"

    invoke-direct {v0, v1, v3}, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;->CLEAR_SELECTION:Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    new-instance v0, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    const-string v1, "ACTIVATE_SELECTION"

    invoke-direct {v0, v1, v4}, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;->ACTIVATE_SELECTION:Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    sget-object v1, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;->KEEP_SELECTION:Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;->CLEAR_SELECTION:Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    aput-object v1, v0, v3

    sget-object v1, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;->ACTIVATE_SELECTION:Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    aput-object v1, v0, v4

    sput-object v0, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;->$VALUES:[Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

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

.method public static valueOf(Ljava/lang/String;)Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;
    .locals 1

    const-class v0, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    return-object v0
.end method

.method public static values()[Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;->$VALUES:[Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    invoke-virtual {v0}, [Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    return-object v0
.end method
