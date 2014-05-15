.class Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;
.super Landroid/database/ContentObserver;
.source "MmsWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/MmsWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoticeSelfContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/MmsWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/android/mms/widget/MmsWidgetProvider;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;->this$0:Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v1, "MmsWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange() selfChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/widget/UpdateFavoriteDBData;

    invoke-direct {v0}, Lcom/android/mms/widget/UpdateFavoriteDBData;-><init>()V

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;->this$0:Lcom/android/mms/widget/MmsWidgetProvider;

    iget-object v1, v1, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/mms/widget/UpdateFavoriteDBData;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;->this$0:Lcom/android/mms/widget/MmsWidgetProvider;

    #getter for: Lcom/android/mms/widget/MmsWidgetProvider;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;
    invoke-static {v1}, Lcom/android/mms/widget/MmsWidgetProvider;->access$100(Lcom/android/mms/widget/MmsWidgetProvider;)Lcom/android/mms/widget/NoticeDBControl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/mms/widget/UpdateFavoriteDBData;->dbControll:Lcom/android/mms/widget/NoticeDBControl;

    new-instance v1, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver$1;

    invoke-direct {v1, p0}, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver$1;-><init>(Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;)V

    iput-object v1, v0, Lcom/android/mms/widget/UpdateFavoriteDBData;->finisher:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/mms/widget/UpdateContactDBTask;

    invoke-direct {v1}, Lcom/android/mms/widget/UpdateContactDBTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/mms/widget/UpdateFavoriteDBData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/mms/widget/UpdateContactDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
