.class Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$1;
.super Ljava/lang/Object;
.source "SearchEngineController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->onOrientationChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$1;->this$0:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$1;->this$0:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->showUi(Z)V

    return-void
.end method
