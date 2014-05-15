.class public final enum Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;
.super Ljava/lang/Enum;
.source "SBrowserTabControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabLaunchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

.field private static final synthetic $VALUES$:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

.field public static final enum FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

.field public static final enum FROM_INSTANT:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

.field public static final enum FROM_KEYBOARD:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

.field public static final enum FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

.field public static final enum FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

.field public static final enum FROM_LONGPRESS_OTHERS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

.field public static final enum FROM_MENU:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

.field public static final enum FROM_OVERVIEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

.field public static final enum FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    const-string v2, "FROM_EXTERNAL_APP"

    const-string v3, "FROM_EXTERNAL_APP"

    invoke-direct {v1, v2, v6, v3, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    const-string v2, "FROM_INSTANT"

    const-string v3, "FROM_INSTANT"

    const/4 v4, 0x6

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_INSTANT:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    const-string v2, "FROM_KEYBOARD"

    const-string v3, "FROM_KEYBOARD"

    const/4 v4, 0x7

    invoke-direct {v1, v2, v8, v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_KEYBOARD:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    const-string v2, "FROM_LINK"

    const-string v3, "FROM_LINK"

    invoke-direct {v1, v2, v9, v3, v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    const-string v2, "FROM_LONGPRESS"

    const-string v3, "FROM_LONGPRESS"

    const/4 v4, 0x5

    invoke-direct {v1, v2, v10, v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    const-string v2, "FROM_MENU"

    const/4 v3, 0x5

    const-string v4, "FROM_MENU"

    invoke-direct {v1, v2, v3, v4, v9}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_MENU:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    const-string v2, "FROM_OVERVIEW"

    const/4 v3, 0x6

    const-string v4, "FROM_OVERVIEW"

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_OVERVIEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    const-string v2, "FROM_RESTORE"

    const/4 v3, 0x7

    const-string v4, "FROM_RESTORE"

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    const-string v2, "FROM_LONGPRESS_OTHERS"

    const/16 v3, 0x8

    const-string v4, "FROM_LONGPRESS_OTHERS"

    const/16 v5, 0x8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS_OTHERS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_INSTANT:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_KEYBOARD:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v2, v1, v10

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_MENU:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_OVERVIEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS_OTHERS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v3, v1, v2

    sput-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->$VALUES$:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    const/16 v1, 0x9

    new-array v0, v1, [Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_OVERVIEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_MENU:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_INSTANT:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_KEYBOARD:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS_OTHERS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->$VALUES$:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    return-object v0
.end method
