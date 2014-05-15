.class Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$1;
.super Ljava/lang/Object;
.source "UmaSessionStats.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->startNewSession(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$1;->this$0:Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$1;->this$0:Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v0, :cond_0

    :goto_0
    #setter for: Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mKeyboardConnected:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->access$402(Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
