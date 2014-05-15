.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->initWindowStateChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->onWindowStatusChanged()V

    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSizeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRectInfo() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$600(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->IsIntroExitInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->onWindowStatusChanged()V

    :cond_0
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onZoneChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->onWindowStatusChanged()V

    return-void
.end method
