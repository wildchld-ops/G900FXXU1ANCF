.class Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$6;
.super Ljava/lang/Object;
.source "FindTextToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    #calls: Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->showKeyboard()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->access$300(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)V

    return-void
.end method
