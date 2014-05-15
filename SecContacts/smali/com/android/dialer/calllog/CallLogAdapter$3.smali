.class Lcom/android/dialer/calllog/CallLogAdapter$3;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$3;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "CallLogAdapter"

    const-string v3, "========= mPhotoLongClickListener::onLongClick ========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/dialer/calllog/CallLogAdapter;->access$100()Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/dialer/calllog/CallLogAdapter;->access$100()Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter$3;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogAdapter;->access$200(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/view/View$OnLongClickListener;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$3;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->access$200(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    const/4 v1, 0x1

    goto :goto_0
.end method
