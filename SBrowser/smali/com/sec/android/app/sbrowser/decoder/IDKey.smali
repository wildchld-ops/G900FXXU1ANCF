.class final Lcom/sec/android/app/sbrowser/decoder/IDKey;
.super Ljava/lang/Object;
.source "IDKey.java"


# instance fields
.field private final id:I

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/IDKey;->id:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/IDKey;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/app/sbrowser/decoder/IDKey;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/IDKey;

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/IDKey;->id:I

    iget v3, v0, Lcom/sec/android/app/sbrowser/decoder/IDKey;->id:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/IDKey;->value:Ljava/lang/Object;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/decoder/IDKey;->value:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/IDKey;->id:I

    return v0
.end method
