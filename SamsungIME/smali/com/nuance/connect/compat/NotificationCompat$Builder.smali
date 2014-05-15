.class public Lcom/nuance/connect/compat/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/compat/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field mTickerView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    return-void
.end method

.method private setFlag(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/compat/NotificationCompat;->access$000()Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImpl;->getNotification(Lcom/nuance/connect/compat/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/nuance/connect/compat/NotificationCompat$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDefaults(I)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1

    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Lcom/nuance/connect/compat/NotificationCompat$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setLights(III)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v3, Landroid/app/Notification;->ledARGB:I

    iget-object v3, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v3, Landroid/app/Notification;->ledOnMS:I

    iget-object v3, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p3, v3, Landroid/app/Notification;->ledOffMS:I

    iget-object v3, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOnMS:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOffMS:I

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_1

    :goto_1
    or-int/2addr v1, v4

    iput v1, v3, Landroid/app/Notification;->flags:I

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setNumber(I)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 0

    iput p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNumber:I

    return-object p0
.end method

.method public setOngoing(Z)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/nuance/connect/compat/NotificationCompat$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/nuance/connect/compat/NotificationCompat$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setSmallIcon(I)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public setSmallIcon(II)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setVibrate([J)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public setWhen(J)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method
