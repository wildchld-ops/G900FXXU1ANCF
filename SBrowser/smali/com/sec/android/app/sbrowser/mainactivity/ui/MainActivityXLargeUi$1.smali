.class Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi$1;
.super Ljava/lang/Object;
.source "MainActivityXLargeUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->handleMultiwindowClick(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->showTabsPopUp(Landroid/view/View;Landroid/content/Context;)Z

    :cond_0
    return-void
.end method
