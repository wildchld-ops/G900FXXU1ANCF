.class Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$1;
.super Ljava/lang/Object;
.source "GestureAirTurnListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "GestureAirTurnListener"

    const-string v1, "mRunnable executed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$1;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->registerAirTurnListener()V

    return-void
.end method
