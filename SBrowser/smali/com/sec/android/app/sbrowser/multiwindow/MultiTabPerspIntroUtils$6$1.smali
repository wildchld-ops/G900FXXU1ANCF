.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6$1;
.super Ljava/lang/Object;
.source "MultiTabPerspIntroUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6;

.field final synthetic val$data:Lcom/sec/android/app/sbrowser/common/TabData;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6;Lcom/sec/android/app/sbrowser/common/TabData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6$1;->val$data:Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6$1;->val$data:Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->removeTempimage(Lcom/sec/android/app/sbrowser/common/TabData;)V

    return-void
.end method
