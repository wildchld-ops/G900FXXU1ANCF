.class Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler$2;
.super Landroid/os/Handler;
.source "ScrollHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler$2;->this$0:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler$2;->this$0:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->downScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler$2;->this$0:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, -0x7

    invoke-virtual {v0, v2, v1, v2}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    const-wide/16 v0, 0xf

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler$2;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
