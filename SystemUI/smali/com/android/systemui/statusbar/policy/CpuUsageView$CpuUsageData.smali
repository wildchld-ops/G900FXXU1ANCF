.class final Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;
.super Ljava/lang/Object;
.source "CpuUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/CpuUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CpuUsageData"
.end annotation


# instance fields
.field public idle:I

.field public irq:I

.field public system:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

.field public user:I


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/CpuUsageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;->this$0:Lcom/android/systemui/statusbar/policy/CpuUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CpuUsageView;Lcom/android/systemui/statusbar/policy/CpuUsageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/CpuUsageView$CpuUsageData;-><init>(Lcom/android/systemui/statusbar/policy/CpuUsageView;)V

    return-void
.end method
