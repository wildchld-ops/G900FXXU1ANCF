.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;
.super Landroid/os/Handler;
.source "BookmarkNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkAdded(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkUpdated(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/ArrayList;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarksDeleted(Ljava/util/ArrayList;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarksReordered(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/ArrayList;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarksMoved(Ljava/util/ArrayList;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->samsungAccountChanged()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;)V

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/ArrayList;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkEditChangedParent(Ljava/util/ArrayList;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkSyncCompleted()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkClearUndoPopups()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;)V

    goto :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    check-cast v1, Ljava/lang/Long;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkUndoCompleted(Ljava/lang/Long;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->access$900(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Ljava/lang/Long;)V

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->operatorBookmarksAdded()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->access$1000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;)V

    goto :goto_0

    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkURLThumbnailUpdated(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->access$1100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->toolbarBookmarkDeleted(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->access$1200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
