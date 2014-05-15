.class Lcom/sec/android/touchwiz/utils/TwTransit$1;
.super Ljava/lang/Object;
.source "TwTransit.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayWindowIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/utils/TwTransit;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$1;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iput-object p2, p0, Lcom/sec/android/touchwiz/utils/TwTransit$1;->val$contentView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$1;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$1;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$1;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    #calls: Lcom/sec/android/touchwiz/utils/TwTransit;->makeLayoutAndWindow()Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$200(Lcom/sec/android/touchwiz/utils/TwTransit;)Landroid/widget/FrameLayout;

    move-result-object v1

    #setter for: Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutIn:Landroid/widget/FrameLayout;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$102(Lcom/sec/android/touchwiz/utils/TwTransit;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    return v0
.end method
