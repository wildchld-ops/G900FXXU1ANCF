.class public Lcom/sec/android/app/sbrowser/net/TurboData;
.super Ljava/lang/Object;
.source "TurboData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1edc9d7af86788eaL


# instance fields
.field private compressedSize:J

.field private date:Ljava/lang/String;

.field private originalSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public TurboData()V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/net/TurboData;->date:Ljava/lang/String;

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/net/TurboData;->compressedSize:J

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/net/TurboData;->originalSize:J

    return-void
.end method

.method public getCompressedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/net/TurboData;->compressedSize:J

    return-wide v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/TurboData;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/net/TurboData;->originalSize:J

    return-wide v0
.end method

.method public setCompressedSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/net/TurboData;->compressedSize:J

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/net/TurboData;->date:Ljava/lang/String;

    return-void
.end method

.method public setOriginalSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/net/TurboData;->originalSize:J

    return-void
.end method
