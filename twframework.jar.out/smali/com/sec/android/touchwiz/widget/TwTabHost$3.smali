.class Lcom/sec/android/touchwiz/widget/TwTabHost$3;
.super Ljava/lang/Object;
.source "TwTabHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabHost;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$3;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$3;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidgetWrapper:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->access$400(Lcom/sec/android/touchwiz/widget/TwTabHost;)Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$3;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwTabHost;->mScrollToTab:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->scrollToTab(IZ)V

    return-void
.end method
