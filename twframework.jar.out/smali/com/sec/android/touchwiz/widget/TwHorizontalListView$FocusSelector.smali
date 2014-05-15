.class Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;
.super Ljava/lang/Object;
.source "TwHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# instance fields
.field private mPosition:I

.field private mPositionLeft:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;Lcom/sec/android/touchwiz/widget/TwHorizontalListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->mPosition:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->mPositionLeft:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public setup(II)Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->mPosition:I

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->mPositionLeft:I

    return-object p0
.end method
