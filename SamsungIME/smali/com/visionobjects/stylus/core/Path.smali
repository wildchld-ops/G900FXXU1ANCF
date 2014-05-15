.class public Lcom/visionobjects/stylus/core/Path;
.super Ljava/lang/Object;
.source "Path.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Path__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Path;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Path;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Path;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Path__SWIG_1(JLcom/visionobjects/stylus/core/Path;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Path;-><init>(JZ)V

    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/Path;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    goto :goto_0
.end method


# virtual methods
.method public boundingRect()Lcom/visionobjects/stylus/core/Rect;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Rect;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_boundingRect(JLcom/visionobjects/stylus/core/Path;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    return-object v0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_clear(JLcom/visionobjects/stylus/core/Path;)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_close(JLcom/visionobjects/stylus/core/Path;)V

    return-void
.end method

.method public closingLength()F
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_closingLength(JLcom/visionobjects/stylus/core/Path;)F

    move-result v0

    return v0
.end method

.method public convexHull()Lcom/visionobjects/stylus/core/Path;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Path;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_convexHull(JLcom/visionobjects/stylus/core/Path;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Path;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Path;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Path;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Path(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public elementAt(I)Lcom/visionobjects/stylus/core/Point;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Point;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_elementAt(JLcom/visionobjects/stylus/core/Path;I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v0
.end method

.method public elementCount()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_elementCount(JLcom/visionobjects/stylus/core/Path;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/visionobjects/stylus/core/Path;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_equals(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Path;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/visionobjects/stylus/core/Path;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/visionobjects/stylus/core/Path;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/Path;->equals(Lcom/visionobjects/stylus/core/Path;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Path;->delete()V

    return-void
.end method

.method public getFastPolylineOptimal(FF)Lcom/visionobjects/stylus/core/Path;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Path;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_getFastPolylineOptimal(JLcom/visionobjects/stylus/core/Path;FF)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Path;-><init>(JZ)V

    return-object v0
.end method

.method public isClosed()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_isClosed(JLcom/visionobjects/stylus/core/Path;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_isEmpty(JLcom/visionobjects/stylus/core/Path;)Z

    move-result v0

    return v0
.end method

.method public length()F
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_length(JLcom/visionobjects/stylus/core/Path;)F

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_lineTo__SWIG_1(JLcom/visionobjects/stylus/core/Path;FF)V

    return-void
.end method

.method public lineTo(Lcom/visionobjects/stylus/core/Point;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_lineTo__SWIG_0(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;)V

    return-void
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/Path;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_notEquals(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Path;)Z

    move-result v0

    return v0
.end method

.method public startAt(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_startAt__SWIG_1(JLcom/visionobjects/stylus/core/Path;FF)V

    return-void
.end method

.method public startAt(Lcom/visionobjects/stylus/core/Point;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_startAt__SWIG_0(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;)V

    return-void
.end method

.method public surrounds(Lcom/visionobjects/stylus/core/Point;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_surrounds(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;)Z

    move-result v0

    return v0
.end method
