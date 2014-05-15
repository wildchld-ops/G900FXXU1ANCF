.class public final enum Lsstream/lib/objs/Image$ImageHints;
.super Ljava/lang/Enum;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsstream/lib/objs/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageHints"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsstream/lib/objs/Image$ImageHints;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lsstream/lib/objs/Image$ImageHints;

.field public static final enum NORMAL:Lsstream/lib/objs/Image$ImageHints;

.field public static final enum NO_OVERLAY_NO_CROP:Lsstream/lib/objs/Image$ImageHints;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lsstream/lib/objs/Image$ImageHints;

    const-string v1, "NO_OVERLAY_NO_CROP"

    invoke-direct {v0, v1, v2}, Lsstream/lib/objs/Image$ImageHints;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsstream/lib/objs/Image$ImageHints;->NO_OVERLAY_NO_CROP:Lsstream/lib/objs/Image$ImageHints;

    new-instance v0, Lsstream/lib/objs/Image$ImageHints;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lsstream/lib/objs/Image$ImageHints;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsstream/lib/objs/Image$ImageHints;->NORMAL:Lsstream/lib/objs/Image$ImageHints;

    const/4 v0, 0x2

    new-array v0, v0, [Lsstream/lib/objs/Image$ImageHints;

    sget-object v1, Lsstream/lib/objs/Image$ImageHints;->NO_OVERLAY_NO_CROP:Lsstream/lib/objs/Image$ImageHints;

    aput-object v1, v0, v2

    sget-object v1, Lsstream/lib/objs/Image$ImageHints;->NORMAL:Lsstream/lib/objs/Image$ImageHints;

    aput-object v1, v0, v3

    sput-object v0, Lsstream/lib/objs/Image$ImageHints;->ENUM$VALUES:[Lsstream/lib/objs/Image$ImageHints;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsstream/lib/objs/Image$ImageHints;
    .locals 1

    const-class v0, Lsstream/lib/objs/Image$ImageHints;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsstream/lib/objs/Image$ImageHints;

    return-object v0
.end method

.method public static values()[Lsstream/lib/objs/Image$ImageHints;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lsstream/lib/objs/Image$ImageHints;->ENUM$VALUES:[Lsstream/lib/objs/Image$ImageHints;

    array-length v1, v0

    new-array v2, v1, [Lsstream/lib/objs/Image$ImageHints;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
