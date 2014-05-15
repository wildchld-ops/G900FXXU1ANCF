.class Lcom/android/mms/ui/MessageListAdapter$4;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$4;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$4;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$4;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mShowingThreads:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/mms/ui/MessageListAdapter;->mShowingThreads:Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$4;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->onContentChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
