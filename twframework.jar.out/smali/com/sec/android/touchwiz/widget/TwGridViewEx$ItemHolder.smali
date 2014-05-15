.class Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
.super Ljava/lang/Object;
.source "TwGridViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwGridViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemHolder"
.end annotation


# instance fields
.field public cloneView:Landroid/view/View;

.field public col:I

.field public prevPos:[F

.field public prevSize:[I

.field public row:I

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->col:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->row:I

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevSize:[I

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevPos:[F

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->cloneView:Landroid/view/View;

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->col:I

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->row:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;[I[F)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->col:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->row:I

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevSize:[I

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevPos:[F

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->cloneView:Landroid/view/View;

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevSize:[I

    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevPos:[F

    return-void
.end method
