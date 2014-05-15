.class public Lcom/sec/android/app/sbrowser/decoder/BitField;
.super Ljava/lang/Object;
.source "BitField.java"


# instance fields
.field private final _mask:I

.field private final _shift_count:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/decoder/BitField;->_mask:I

    const/4 v1, 0x0

    move v0, p1

    if-eqz v0, :cond_0

    :goto_0
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/BitField;->_shift_count:I

    return-void
.end method


# virtual methods
.method public clear(I)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/BitField;->_mask:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method public clearByte(B)B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BitField;->clear(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public clearShort(S)S
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BitField;->clear(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getRawValue(I)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/BitField;->_mask:I

    and-int/2addr v0, p1

    return v0
.end method

.method public getShortRawValue(S)S
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BitField;->getRawValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getShortValue(S)S
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getValue(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BitField;->getRawValue(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/BitField;->_shift_count:I

    shr-int/2addr v0, v1

    return v0
.end method

.method public isAllSet(I)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/BitField;->_mask:I

    and-int/2addr v0, p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/BitField;->_mask:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSet(I)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/BitField;->_mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(I)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/BitField;->_mask:I

    or-int/2addr v0, p1

    return v0
.end method

.method public setBoolean(IZ)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BitField;->set(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BitField;->clear(I)I

    move-result v0

    goto :goto_0
.end method

.method public setByte(B)B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BitField;->set(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public setByteBoolean(BZ)B
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BitField;->setByte(B)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BitField;->clearByte(B)B

    move-result v0

    goto :goto_0
.end method

.method public setShort(S)S
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BitField;->set(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setShortBoolean(SZ)S
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BitField;->setShort(S)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/BitField;->clearShort(S)S

    move-result v0

    goto :goto_0
.end method

.method public setShortValue(SS)S
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/BitField;->setValue(II)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setValue(II)I
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/BitField;->_mask:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/BitField;->_shift_count:I

    shl-int v1, p2, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/BitField;->_mask:I

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method
