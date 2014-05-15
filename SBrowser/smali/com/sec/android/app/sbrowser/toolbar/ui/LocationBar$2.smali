.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$2;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager$InitializeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setReaderButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnInitialized(Ljava/lang/Exception;)V
    .locals 3

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIsActvityManagerBindSuccess:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$202(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "LocationBar.java"

    const-string v2, "Exception occured during ActivityRuleManager Binding"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, p1, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast p1, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;

    throw p1
    :try_end_0
    .catch Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;->printStackTrace()V

    goto :goto_0
.end method
