.class Lcom/sec/android/touchwiz/utils/TwTransit$6;
.super Ljava/lang/Object;
.source "TwTransit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/utils/TwTransit;->startInternalOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/utils/TwTransit;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/utils/TwTransit;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$6;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$6;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
