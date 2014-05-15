.class Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$1;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnItemDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;->setOnItemDeleteListener(Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnItemDeleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;

.field final synthetic val$listener:Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnItemDeleteListener;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnItemDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$1;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$1;->val$listener:Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnItemDeleteListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$1;->val$listener:Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnItemDeleteListener;

    invoke-interface {v0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoveUndoListAnimator$OnItemDeleteListener;->onDelete(I)Z

    move-result v0

    return v0
.end method
