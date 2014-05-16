.class public Lcom/android/systemui/statusbar/policy/CpuUsageView;
.super Landroid/widget/TextView;
.source "CpuUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;
    }
.end annotation


# static fields
.field public static final INTERVAL_KEY:Ljava/lang/String; = "cpu_usage_refresh_interval"

.field public static final VISIBLE_KEY:Ljava/lang/String; = "cpu_usage_widget"


# instance fields
.field private mDelayTimeS:I

.field private mHandler:Landroid/os/Handler;

.field private mLastParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/database/ContentObserver;

.field private task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CpuUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/CpuUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mDelayTimeS:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mLastParams:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/policy/CpuUsageView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/CpuUsageView$1;-><init>(Lcom/android/systemui/statusbar/policy/CpuUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->task:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/policy/CpuUsageView$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/CpuUsageView$2;-><init>(Lcom/android/systemui/statusbar/policy/CpuUsageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/CpuUsageView;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getCpuUsage()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/CpuUsageView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mLastParams:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/CpuUsageView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mLastParams:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/CpuUsageView;Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getUsagePercent(Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/CpuUsageView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->task:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/CpuUsageView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mDelayTimeS:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/CpuUsageView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getCpuCount()I
    .locals 9

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    const-string v8, "/sys/devices/system/cpu"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    move-object v0, v5

    array-length v7, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v0, v6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "^cpu\\d+$"

    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getCpuUsage()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mLastParams:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_0

    new-instance v10, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;-><init>(Lcom/android/systemui/statusbar/policy/CpuUsageView;Lcom/android/systemui/statusbar/policy/CpuUsageView$1;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v10, "/proc/stat"

    invoke-direct {v5, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v10, "^cpu\\d+\\s+\\d+\\s+.*$"

    invoke-virtual {v8, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "\\s+"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v10, v0

    const/16 v11, 0x8

    if-lt v10, v11, :cond_1

    const/4 v10, 0x0

    aget-object v2, v0, v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v10, "cpu"

    const-string v11, ""

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->user:I

    const/4 v10, 0x3

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->system:I

    const/4 v10, 0x4

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->idle:I

    const/4 v10, 0x6

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->irq:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-object v9

    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method private getUsagePercent(Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;)I
    .locals 7

    iget v5, p2, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->user:I

    iget v6, p1, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->user:I

    sub-int v4, v5, v6

    iget v5, p2, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->system:I

    iget v6, p1, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->system:I

    sub-int v2, v5, v6

    iget v5, p2, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->irq:I

    iget v6, p1, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->irq:I

    sub-int v1, v5, v6

    iget v5, p2, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->idle:I

    iget v6, p1, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->idle:I

    sub-int v0, v5, v6

    add-int v5, v4, v2

    add-int/2addr v5, v1

    add-int v3, v5, v0

    if-nez v3, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    add-int v5, v4, v2

    add-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x64

    div-int/2addr v5, v3

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getCpuCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mLastParams:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;-><init>(Lcom/android/systemui/statusbar/policy/CpuUsageView;Lcom/android/systemui/statusbar/policy/CpuUsageView$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->task:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mDelayTimeS:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cpu_usage_widget"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cpu_usage_refresh_interval"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->updateSettings()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected updateSettings()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "cpu_usage_widget"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    if-eq v1, v3, :cond_0

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->setVisibility(I)V

    :cond_0
    const-string v3, "cpu_usage_refresh_interval"

    const/4 v4, 0x3

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mDelayTimeS:I

    if-eq v2, v3, :cond_1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mDelayTimeS:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->task:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView;->task:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    const/16 v4, 0x8

    goto :goto_2
.end method
