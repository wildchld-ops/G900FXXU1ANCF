.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$3;
.super Ljava/lang/Thread;
.source "MultiTabAnimations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->deleteDragNDropTab(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

.field final synthetic val$mSelectedViewTabId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$3;->val$mSelectedViewTabId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$3;->val$mSelectedViewTabId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->deleteThumbnail(I)V

    :cond_0
    return-void
.end method
