.class Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$2;
.super Ljava/lang/Object;
.source "BrowserSSRMManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$2;->this$0:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$2;->this$0:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->canV8Dash:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->access$202(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;Z)Z

    return-void
.end method
