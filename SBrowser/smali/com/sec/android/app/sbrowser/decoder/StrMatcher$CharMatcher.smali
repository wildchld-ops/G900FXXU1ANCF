.class final Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;
.super Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharMatcher"
.end annotation


# instance fields
.field private final ch:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;-><init>()V

    iput-char p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;->ch:C

    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .locals 2

    iget-char v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;->ch:C

    aget-char v1, p1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
