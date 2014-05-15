.class public Lcom/android/mms/widget/NoticeWidgetRemoteViewService;
.super Landroid/widget/RemoteViewsService;
.source "NoticeWidgetRemoteViewService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 3

    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/mms/widget/StackRemoteViewsFactory;

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeWidgetRemoteViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/mms/widget/StackRemoteViewsFactory;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method
