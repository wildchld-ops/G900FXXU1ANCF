.class Lcom/android/dialer/dialpad/DialpadFragment$BlockSpeeddial;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockSpeeddial"
.end annotation


# instance fields
.field public mActive:Z

.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$BlockSpeeddial;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$BlockSpeeddial;->mActive:Z

    iput-boolean p2, p0, Lcom/android/dialer/dialpad/DialpadFragment$BlockSpeeddial;->mActive:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->access$302(Z)Z

    return-void
.end method
