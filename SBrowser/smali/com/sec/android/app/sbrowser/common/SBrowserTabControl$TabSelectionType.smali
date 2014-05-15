.class public final enum Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;
.super Ljava/lang/Enum;
.source "SBrowserTabControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabSelectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

.field private static final synthetic $VALUES$:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

.field public static final enum FROM_CLOSE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

.field public static final enum FROM_NEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

.field public static final enum FROM_USER:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    const-string v2, "FROM_CLOSE"

    const-string v3, "FROM_CLOSE"

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_CLOSE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    const-string v2, "FROM_NEW"

    const-string v3, "FROM_NEW"

    invoke-direct {v1, v2, v5, v3, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_NEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    const-string v2, "FROM_USER"

    const-string v3, "FROM_USER"

    invoke-direct {v1, v2, v6, v3, v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_USER:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    new-array v1, v7, [Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_CLOSE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_NEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_USER:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    aput-object v2, v1, v6

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->$VALUES$:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    new-array v0, v7, [Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_CLOSE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_NEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_USER:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->$VALUES$:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    return-object v0
.end method
