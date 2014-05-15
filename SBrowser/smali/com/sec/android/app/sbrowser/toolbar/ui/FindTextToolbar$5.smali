.class Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$5;
.super Ljava/lang/Object;
.source "FindTextToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->hideKeyboardAndStartFinding(Z)V

    return-void
.end method
