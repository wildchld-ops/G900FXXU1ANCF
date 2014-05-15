.class Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$4;
.super Ljava/lang/Object;
.source "GestureAirTurnListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->displayCurrentTabNumber(I)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$4;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$4;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->t:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->access$500(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    return-void
.end method
