.class public final enum Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;
.super Ljava/lang/Enum;
.source "ChromeBrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/ChromeBrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

.field public static final enum BOOKMARK_BAR:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

.field public static final enum FOLDER:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

.field public static final enum MOBILE:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

.field public static final enum OTHER_NODE:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

.field public static final enum URL:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    const-string v1, "URL"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->URL:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    new-instance v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->FOLDER:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    new-instance v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    const-string v1, "BOOKMARK_BAR"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->BOOKMARK_BAR:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    new-instance v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    const-string v1, "OTHER_NODE"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->OTHER_NODE:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    new-instance v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->MOBILE:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    sget-object v1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->URL:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->FOLDER:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->BOOKMARK_BAR:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->OTHER_NODE:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->MOBILE:Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    aput-object v1, v0, v6

    sput-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->$VALUES:[Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

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

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;
    .locals 1

    sget-object v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->$VALUES:[Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/ChromeBrowserProvider$Type;

    return-object v0
.end method
