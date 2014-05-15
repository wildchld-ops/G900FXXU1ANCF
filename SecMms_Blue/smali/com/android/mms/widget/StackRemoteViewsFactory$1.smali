.class Lcom/android/mms/widget/StackRemoteViewsFactory$1;
.super Landroid/database/ContentObserver;
.source "NoticeWidgetRemoteViewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/StackRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/StackRemoteViewsFactory;


# direct methods
.method constructor <init>(Lcom/android/mms/widget/StackRemoteViewsFactory;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory$1;->this$0:Lcom/android/mms/widget/StackRemoteViewsFactory;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory$1;->this$0:Lcom/android/mms/widget/StackRemoteViewsFactory;

    #calls: Lcom/android/mms/widget/StackRemoteViewsFactory;->notifyDataChanged()V
    invoke-static {v0}, Lcom/android/mms/widget/StackRemoteViewsFactory;->access$000(Lcom/android/mms/widget/StackRemoteViewsFactory;)V

    return-void
.end method
