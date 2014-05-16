.class Lcom/android/systemui/statusbar/policy/CpuUsageView$2;
.super Landroid/database/ContentObserver;
.source "CpuUsageView.java"


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
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CpuUsageView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$2;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$2;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    #getter for: Lcom/android/systemui/statusbar/policy/CpuUsageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CpuUsageView;->access$500(Lcom/android/systemui/statusbar/policy/CpuUsageView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/CpuUsageView$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/CpuUsageView$2$1;-><init>(Lcom/android/systemui/statusbar/policy/CpuUsageView$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
