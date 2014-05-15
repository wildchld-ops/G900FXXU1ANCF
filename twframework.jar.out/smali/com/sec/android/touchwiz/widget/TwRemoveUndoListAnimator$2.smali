.class Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$2;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;->setOnSweepListener(Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnSweepListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;

.field final synthetic val$listener:Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnSweepListener;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnSweepListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$2;->val$listener:Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnSweepListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(IF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$2;->val$listener:Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnSweepListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnSweepListener;->onSweep(IF)V

    return-void
.end method

.method public onSweepEnd(IF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$2;->val$listener:Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnSweepListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnSweepListener;->onSweepEnd(IF)V

    return-void
.end method

.method public onSweepStart(IF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$2;->val$listener:Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnSweepListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnSweepListener;->onSweepStart(IF)V

    return-void
.end method
