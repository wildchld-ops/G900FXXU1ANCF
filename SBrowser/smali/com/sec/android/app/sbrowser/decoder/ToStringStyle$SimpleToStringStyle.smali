.class final Lcom/sec/android/app/sbrowser/decoder/ToStringStyle$SimpleToStringStyle;
.super Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle$SimpleToStringStyle;->setUseClassName(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle$SimpleToStringStyle;->setUseIdentityHashCode(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle$SimpleToStringStyle;->setUseFieldNames(Z)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle$SimpleToStringStyle;->setContentStart(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle$SimpleToStringStyle;->setContentEnd(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->SIMPLE_STYLE:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    return-object v0
.end method
