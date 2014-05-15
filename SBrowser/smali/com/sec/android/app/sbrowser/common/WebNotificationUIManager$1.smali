.class final Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1;
.super Landroid/os/AsyncTask;
.source "WebNotificationUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->ShowNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13

    const/4 v12, 0x0

    const v11, 0x7f02004e

    const/16 v10, 0x639

    const/4 v9, 0x0

    const-string v0, "notification"

    new-instance v3, Landroid/content/Intent;

    const-string v6, "notifications"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$000()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v3, v6, v12, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x2400

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "title"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "body"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$000()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x800

    invoke-static {v6, v9, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$000()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$000()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$300()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$400()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_0
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v10, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$500()Landroid/widget/TextView;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$600()Landroid/widget/TextView;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$500()Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1$1;-><init>(Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$600()Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1$2;-><init>(Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v12

    :cond_0
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method
