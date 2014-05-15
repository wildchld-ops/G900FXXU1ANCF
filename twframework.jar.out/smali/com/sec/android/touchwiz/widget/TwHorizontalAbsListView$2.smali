.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iput-boolean v2, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCachingActive:Z

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCachingStarted:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$4100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPersistentDrawingCache:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$4200(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$4300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    :cond_1
    return-void
.end method
