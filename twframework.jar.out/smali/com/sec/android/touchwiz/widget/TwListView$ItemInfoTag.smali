.class Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;
.super Ljava/lang/Object;
.source "TwListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemInfoTag"
.end annotation


# instance fields
.field protected mChildrenNumberTotal:I

.field protected mChildrenVisibilityBitsGone:J

.field protected mConfiguration:Landroid/content/res/Configuration;

.field protected mHeightSpec:I

.field protected mWidthSpec:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListView;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->this$0:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mChildrenNumberTotal:I

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mWidthSpec:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mHeightSpec:I

    return-void
.end method
