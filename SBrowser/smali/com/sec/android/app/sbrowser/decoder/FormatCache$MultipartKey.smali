.class Lcom/sec/android/app/sbrowser/decoder/FormatCache$MultipartKey;
.super Ljava/lang/Object;
.source "FormatCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/decoder/FormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipartKey"
.end annotation


# instance fields
.field private hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/decoder/FormatCache$MultipartKey;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/decoder/FormatCache$MultipartKey;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/decoder/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/FormatCache$MultipartKey;->hashCode:I

    if-nez v5, :cond_2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    mul-int/lit8 v5, v4, 0x7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int v4, v5, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/sec/android/app/sbrowser/decoder/FormatCache$MultipartKey;->hashCode:I

    :cond_2
    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/FormatCache$MultipartKey;->hashCode:I

    return v5
.end method
