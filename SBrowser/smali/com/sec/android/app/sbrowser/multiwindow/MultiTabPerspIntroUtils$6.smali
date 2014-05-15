.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6;
.super Landroid/os/Handler;
.source "MultiTabPerspIntroUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->getByteArrayForDeletion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/TabData;

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6;Lcom/sec/android/app/sbrowser/common/TabData;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
