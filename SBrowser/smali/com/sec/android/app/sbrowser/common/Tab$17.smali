.class Lcom/sec/android/app/sbrowser/common/Tab$17;
.super Landroid/os/Handler;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$17;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$17;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsBookmarkedUrl:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6602(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$17;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1400(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$17;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mId:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2800(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->notifyUrlCheckedForBookmark(I)V

    return-void
.end method
