.class Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$1;
.super Ljava/lang/Object;
.source "TabManagerPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->initTabsPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIsOnTabPreview:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TabManagerPreview"

    const-string v1, "mTabManagerPreviewRunnable - isOnTabPreview : false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
