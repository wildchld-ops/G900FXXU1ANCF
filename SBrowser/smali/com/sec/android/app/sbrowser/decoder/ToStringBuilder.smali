.class public Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
.super Ljava/lang/Object;
.source "ToStringBuilder.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/decoder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/decoder/Builder",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile defaultStyle:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final object:Ljava/lang/Object;

.field private final style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->DEFAULT_STYLE:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->defaultStyle:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;-><init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;-><init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->getDefaultStyle()Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_1
    iput-object p3, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->object:Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public static getDefaultStyle()Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->defaultStyle:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;",
            "Z",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/sec/android/app/sbrowser/decoder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultStyle(Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The style must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->defaultStyle:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    return-void
.end method


# virtual methods
.method public append(B)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public append(C)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public append(D)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public append(F)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public append(I)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public append(J)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;B)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public append(Ljava/lang/String;C)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public append(Ljava/lang/String;D)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public append(Ljava/lang/String;F)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;S)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[B)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[BZ)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[C)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[CZ)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[D)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[DZ)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[F)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[FZ)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[I)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[IZ)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[J)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[JZ)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[S)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[SZ)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Z)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[ZZ)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(S)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public append(Z)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public append([B)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([C)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([D)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([F)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([I)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([J)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append([S)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([Z)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public appendAsObjectToString(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/decoder/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-object p0
.end method

.method public appendSuper(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public appendToString(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getStyle()Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->getStyle()Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->style:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0
.end method
