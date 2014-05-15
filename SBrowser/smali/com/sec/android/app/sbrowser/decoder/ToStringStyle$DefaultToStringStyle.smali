.class final Lcom/sec/android/app/sbrowser/decoder/ToStringStyle$DefaultToStringStyle;
.super Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->DEFAULT_STYLE:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    return-object v0
.end method
