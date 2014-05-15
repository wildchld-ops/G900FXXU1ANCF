.class Lcom/sec/android/touchwiz/utils/TwTransit$7$2;
.super Ljava/lang/Object;
.source "TwTransit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/utils/TwTransit$7;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/utils/TwTransit$7;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/utils/TwTransit$7;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$7$2;->this$1:Lcom/sec/android/touchwiz/utils/TwTransit$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$7$2;->this$1:Lcom/sec/android/touchwiz/utils/TwTransit$7;

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit$7;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
