.class Lcom/android/systemui/statusbar/policy/CpuUsageView$1;
.super Ljava/lang/Object;
.source "CpuUsageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/CpuUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CpuUsageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$1;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const v9, 0x7f0b0211

    const-string v5, ""

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$1;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    #calls: Lcom/android/systemui/statusbar/policy/CpuUsageView;->getCpuUsage()Ljava/util/List;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->access$000(Lcom/android/systemui/statusbar/policy/CpuUsageView;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CPU"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$1;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    #getter for: Lcom/android/systemui/statusbar/policy/CpuUsageView;->mLastParams:Ljava/util/List;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->access$100(Lcom/android/systemui/statusbar/policy/CpuUsageView;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->user:I

    if-nez v7, :cond_1

    iget v7, v0, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->system:I

    if-nez v7, :cond_1

    iget v7, v0, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->idle:I

    if-nez v7, :cond_1

    iget v7, v0, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->irq:I

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$1;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$1;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    #calls: Lcom/android/systemui/statusbar/policy/CpuUsageView;->getUsagePercent(Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;)I
    invoke-static {v7, v4, v0}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->access$200(Lcom/android/systemui/statusbar/policy/CpuUsageView;Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;)I

    move-result v6

    if-gtz v6, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$1;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$1;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "link_cpu"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_4

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "theme_color"

    const v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "cpu_color"

    const v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    :goto_2
    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$1;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    #setter for: Lcom/android/systemui/statusbar/policy/CpuUsageView;->mLastParams:Ljava/util/List;
    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->access$102(Lcom/android/systemui/statusbar/policy/CpuUsageView;Ljava/util/List;)Ljava/util/List;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$1;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    #getter for: Lcom/android/systemui/statusbar/policy/CpuUsageView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->access$500(Lcom/android/systemui/statusbar/policy/CpuUsageView;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$1;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    #getter for: Lcom/android/systemui/statusbar/policy/CpuUsageView;->task:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->access$300(Lcom/android/systemui/statusbar/policy/CpuUsageView;)Ljava/lang/Runnable;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$1;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    #getter for: Lcom/android/systemui/statusbar/policy/CpuUsageView;->mDelayTimeS:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->access$400(Lcom/android/systemui/statusbar/policy/CpuUsageView;)I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
