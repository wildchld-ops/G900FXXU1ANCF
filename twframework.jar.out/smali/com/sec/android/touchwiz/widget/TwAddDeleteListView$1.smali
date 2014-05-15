.class Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$1;
.super Ljava/lang/Object;
.source "TwAddDeleteListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;->setOnAddDeleteListener(Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;

.field final synthetic val$onAddDeleteListener:Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAddDeleteListView;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$1;->val$onAddDeleteListener:Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$1;->val$onAddDeleteListener:Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;->onAdd()V

    return-void
.end method

.method public onAnimationEnd(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$1;->val$onAddDeleteListener:Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;

    invoke-interface {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;->onAnimationEnd(Z)V

    return-void
.end method

.method public onAnimationStart(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$1;->val$onAddDeleteListener:Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;

    invoke-interface {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;->onAnimationStart(Z)V

    return-void
.end method

.method public onDelete()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$1;->val$onAddDeleteListener:Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAddDeleteListView$OnAddDeleteListener;->onDelete()V

    return-void
.end method
