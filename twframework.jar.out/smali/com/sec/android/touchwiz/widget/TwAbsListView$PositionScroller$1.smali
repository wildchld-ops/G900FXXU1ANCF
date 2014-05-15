.class Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller$1;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->start(I)V

    return-void
.end method
