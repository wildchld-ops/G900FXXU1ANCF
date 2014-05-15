.class Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$1;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getFirstVisiblePosition()I

    move-result v1

    #setter for: Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->firstPosition:I
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->access$002(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;I)I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getLastVisiblePosition()I

    move-result v1

    #setter for: Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->lasPosition:I
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->access$102(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;I)I

    return-void
.end method
