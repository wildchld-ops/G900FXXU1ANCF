.class final Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;


# direct methods
.method constructor <init>(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Started building the heatmap"

    invoke-static {v2, v3}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;->onProgress(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->c(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v3

    mul-int v9, v2, v3

    new-array v10, v9, [F

    new-array v11, v9, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->getWidth()F

    move-result v3

    div-float v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->c(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->getHeight()F

    move-result v3

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->a()F

    move-result v2

    mul-float v14, v2, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->b()F

    move-result v2

    mul-float v15, v2, v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->getKeys()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    int-to-float v2, v0

    const/high16 v3, 0x42c8

    div-float v18, v2, v3

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    move/from16 v0, v17

    if-ge v6, v0, :cond_7

    :try_start_0
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype/samsung/supportlibrary/heatmap/c;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->c()F

    move-result v3

    mul-float v4, v3, v12

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->d()F

    move-result v3

    mul-float v5, v3, v13

    const/4 v3, 0x0

    sub-float v19, v4, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    const/4 v3, 0x0

    sub-float v20, v5, v15

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v20

    add-float/2addr v4, v14

    float-to-int v4, v4

    move/from16 v0, v20

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->c(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v20

    add-float/2addr v5, v15

    float-to-int v5, v5

    move/from16 v0, v20

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    sub-int v21, v4, v19

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/4 v4, 0x0

    :goto_1
    move/from16 v0, v21

    if-ge v4, v0, :cond_1

    add-int v5, v4, v19

    int-to-float v5, v5

    div-float/2addr v5, v12

    aput v5, v22, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_2
    move/from16 v0, v20

    if-ge v5, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v3

    mul-int/2addr v3, v5

    add-int v4, v3, v19

    int-to-float v3, v5

    div-float v23, v3, v13

    const/4 v3, 0x0

    :goto_3
    move/from16 v0, v21

    if-ge v3, v0, :cond_2

    aget v24, v10, v4

    aget v25, v22, v3

    move/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->a(FF)F

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(FF)F

    move-result v24

    aput v24, v10, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Building the HeatMap has been interrupted. Tidying up."

    invoke-static {v2, v3}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;->onComplete(ZZLcom/touchtype/samsung/supportlibrary/heatmap/HeatMap;)V

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v2

    if-eqz v2, :cond_6

    int-to-float v2, v6

    div-float v2, v2, v18

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;->onProgress(I)V

    :cond_6
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v9, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    aget v4, v10, v2

    invoke-static {v3, v4}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;F)I

    move-result v3

    aput v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v2

    const/16 v3, 0x64

    invoke-interface {v2, v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;->onProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->a([I)V

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finished building the heatmap. Time taken: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v5}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;->onComplete(ZZLcom/touchtype/samsung/supportlibrary/heatmap/HeatMap;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method
