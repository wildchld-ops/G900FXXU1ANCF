.class Lcom/sec/android/touchwiz/widget/TwTabHost$2;
.super Ljava/lang/Object;
.source "TwTabHost.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwTabHost;->setup()V
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

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$2;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$2;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$2;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->access$100(Lcom/sec/android/touchwiz/widget/TwTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    :cond_0
    return-void
.end method
