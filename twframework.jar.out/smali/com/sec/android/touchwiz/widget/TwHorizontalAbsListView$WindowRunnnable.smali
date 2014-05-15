.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$WindowRunnnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$WindowRunnnable;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$WindowRunnnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$200(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    return-void
.end method

.method public sameWindow()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$WindowRunnnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$WindowRunnnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
