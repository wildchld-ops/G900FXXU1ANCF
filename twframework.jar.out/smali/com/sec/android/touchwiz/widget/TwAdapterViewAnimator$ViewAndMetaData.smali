.class Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;
.super Ljava/lang/Object;
.source "TwAdapterViewAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewAndMetaData"
.end annotation


# instance fields
.field adapterPosition:I

.field itemId:J

.field relativeIndex:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;Landroid/view/View;IIJ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->adapterPosition:I

    iput-wide p5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->itemId:J

    return-void
.end method
