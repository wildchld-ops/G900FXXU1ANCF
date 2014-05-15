.class Lcom/samsung/dialer/dialpad/ExploreByTouchListener$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "ExploreByTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/dialpad/ExploreByTouchListener;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/dialpad/ExploreByTouchListener;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener$1;->this$0:Lcom/samsung/dialer/dialpad/ExploreByTouchListener;

    iput-object p2, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method
