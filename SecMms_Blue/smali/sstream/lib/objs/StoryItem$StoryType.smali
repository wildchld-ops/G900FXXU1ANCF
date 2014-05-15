.class public final enum Lsstream/lib/objs/StoryItem$StoryType;
.super Ljava/lang/Enum;
.source "StoryItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsstream/lib/objs/StoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsstream/lib/objs/StoryItem$StoryType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARTICLE:Lsstream/lib/objs/StoryItem$StoryType;

.field public static final enum CALENDAR:Lsstream/lib/objs/StoryItem$StoryType;

.field public static final enum CALL:Lsstream/lib/objs/StoryItem$StoryType;

.field private static final synthetic ENUM$VALUES:[Lsstream/lib/objs/StoryItem$StoryType;

.field public static final enum MESSAGE:Lsstream/lib/objs/StoryItem$StoryType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lsstream/lib/objs/StoryItem$StoryType;

    const-string v1, "CALL"

    invoke-direct {v0, v1, v2}, Lsstream/lib/objs/StoryItem$StoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsstream/lib/objs/StoryItem$StoryType;->CALL:Lsstream/lib/objs/StoryItem$StoryType;

    new-instance v0, Lsstream/lib/objs/StoryItem$StoryType;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v3}, Lsstream/lib/objs/StoryItem$StoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsstream/lib/objs/StoryItem$StoryType;->MESSAGE:Lsstream/lib/objs/StoryItem$StoryType;

    new-instance v0, Lsstream/lib/objs/StoryItem$StoryType;

    const-string v1, "CALENDAR"

    invoke-direct {v0, v1, v4}, Lsstream/lib/objs/StoryItem$StoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsstream/lib/objs/StoryItem$StoryType;->CALENDAR:Lsstream/lib/objs/StoryItem$StoryType;

    new-instance v0, Lsstream/lib/objs/StoryItem$StoryType;

    const-string v1, "ARTICLE"

    invoke-direct {v0, v1, v5}, Lsstream/lib/objs/StoryItem$StoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsstream/lib/objs/StoryItem$StoryType;->ARTICLE:Lsstream/lib/objs/StoryItem$StoryType;

    const/4 v0, 0x4

    new-array v0, v0, [Lsstream/lib/objs/StoryItem$StoryType;

    sget-object v1, Lsstream/lib/objs/StoryItem$StoryType;->CALL:Lsstream/lib/objs/StoryItem$StoryType;

    aput-object v1, v0, v2

    sget-object v1, Lsstream/lib/objs/StoryItem$StoryType;->MESSAGE:Lsstream/lib/objs/StoryItem$StoryType;

    aput-object v1, v0, v3

    sget-object v1, Lsstream/lib/objs/StoryItem$StoryType;->CALENDAR:Lsstream/lib/objs/StoryItem$StoryType;

    aput-object v1, v0, v4

    sget-object v1, Lsstream/lib/objs/StoryItem$StoryType;->ARTICLE:Lsstream/lib/objs/StoryItem$StoryType;

    aput-object v1, v0, v5

    sput-object v0, Lsstream/lib/objs/StoryItem$StoryType;->ENUM$VALUES:[Lsstream/lib/objs/StoryItem$StoryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsstream/lib/objs/StoryItem$StoryType;
    .locals 1

    const-class v0, Lsstream/lib/objs/StoryItem$StoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsstream/lib/objs/StoryItem$StoryType;

    return-object v0
.end method

.method public static values()[Lsstream/lib/objs/StoryItem$StoryType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lsstream/lib/objs/StoryItem$StoryType;->ENUM$VALUES:[Lsstream/lib/objs/StoryItem$StoryType;

    array-length v1, v0

    new-array v2, v1, [Lsstream/lib/objs/StoryItem$StoryType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
