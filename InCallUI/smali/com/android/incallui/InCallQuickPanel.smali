.class public Lcom/android/incallui/InCallQuickPanel;
.super Landroid/widget/RemoteViews;
.source "InCallQuickPanel.java"


# instance fields
.field isEasyModeOn:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallQuickPanel;->isEasyModeOn:Z

    return-void
.end method

.method private getRecordBaseTime()J
    .locals 5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    :goto_0
    return-wide v3

    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method


# virtual methods
.method public initInCallQuickPanel(Landroid/content/Context;)V
    .locals 12

    iput-object p1, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.incallui.ACTION_SHOW_CALL_SCREEN"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.incallui.ACTION_CALL_MUTE"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.incallui.ACTION_CALL_SPEAKER"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.incallui.ACTION_CALL_UNHOLD"

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.incallui.ACTION_CALL_END"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.incallui.ACTION_CALL_REJECT"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const v6, 0x7f0801d2

    invoke-virtual {p0, v6, v0}, Lcom/android/incallui/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0801e7

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0801e8

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0801e0

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0801e2

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0801dd

    invoke-virtual {p0, v0, v3}, Lcom/android/incallui/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0801ea

    invoke-virtual {p0, v0, v4}, Lcom/android/incallui/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0801eb

    invoke-virtual {p0, v0, v5}, Lcom/android/incallui/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0801e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    const v0, 0x7f0801e8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    const v0, 0x7f0801e0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    const v0, 0x7f0801e2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    const v0, 0x7f0801dd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    const v0, 0x7f0801ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    const v0, 0x7f0801eb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070297

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public updateInCallQuickPanel(ILandroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 18

    const-string v2, "InCallQuickPanel"

    const-string v3, "updateInCallQuickPanel"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "InCallQuickPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInCallQuickPanel, contentTitle = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "InCallQuickPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInCallQuickPanel, state = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x7f0801d7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801d5

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801d4

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801d6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const-string v2, "ims_ui_for_kor"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    const v2, 0x7f0801e1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07002c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0801e3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07002c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0801e5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07002c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_c

    const v2, 0x7f0801d2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallQuickPanel;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_1
    const/16 v17, 0x0

    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_d

    const v2, 0x7f0801dd

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801de

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801df

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    :goto_2
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v14

    const-string v2, "InCallQuickPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMute = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_14

    const v2, 0x7f0801e7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e8

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    :goto_3
    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    if-ne v2, v3, :cond_15

    const/4 v15, 0x1

    :goto_4
    const-string v2, "InCallQuickPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSpekaerOn = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v15, :cond_16

    const v2, 0x7f0801e0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e2

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    :goto_5
    const v2, 0x7f0801e4

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const/4 v2, 0x3

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    :cond_1
    const v2, 0x7f0801e7

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e8

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e0

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e2

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    :cond_2
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "InCallQuickPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AnswerMemoUtils.isAutoAnswered() = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0801e7

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e8

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e0

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e2

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    :cond_3
    move-object/from16 v16, p3

    if-eqz v16, :cond_4

    const v2, 0x7f0801d8

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_4
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallQuickPanel;->getRecordBaseTime()J

    move-result-wide v4

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_17

    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-lez v2, :cond_17

    const v2, 0x7f0801da

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v3, 0x7f0801dc

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    :cond_5
    :goto_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f0801e0

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e2

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    :cond_6
    const-string v2, "headset_highest_priority_for_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    if-ne v2, v3, :cond_7

    const v2, 0x7f0801e0

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e2

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v12, v2, p4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v8, v2, v12

    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-lez v2, :cond_18

    const v2, 0x7f0801d9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v7, 0x7f0801d9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    :goto_7
    const/4 v2, 0x3

    move/from16 v0, p1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_19

    :cond_8
    const v2, 0x7f0801ea

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801eb

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    :goto_8
    return-void

    :cond_9
    const v2, 0x7f0801d7

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    const v2, 0x7f0801d5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801d4

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801d6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_0

    :cond_a
    const-string v2, "display_hd_icon"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x7f0801d4

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801d6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    :goto_9
    const v2, 0x7f0801d5

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_0

    :cond_b
    const v2, 0x7f0801d4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801d6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_9

    :cond_c
    const v2, 0x7f0801d2

    const v3, 0x7f02012e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setImageViewResource(II)V

    goto/16 :goto_1

    :cond_d
    const v2, 0x7f0801dd

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801de

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const/4 v2, 0x5

    move/from16 v0, p1

    if-eq v0, v2, :cond_e

    const/16 v2, 0x14

    move/from16 v0, p1

    if-eq v0, v2, :cond_e

    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    :cond_e
    const/16 v17, 0x1

    :goto_a
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/InCallQuickPanel;->isEasyModeOn:Z

    if-eqz v17, :cond_11

    const v2, 0x7f0801e6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    :cond_f
    :goto_b
    const v2, 0x7f0801df

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_2

    :cond_10
    const/16 v17, 0x0

    goto :goto_a

    :cond_11
    const/16 v2, 0x8

    move/from16 v0, p1

    if-ne v0, v2, :cond_12

    const-string v2, "InCallQuickPanel"

    const-string v3, "Don\'t update mute button visibility"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/incallui/InCallQuickPanel;->isEasyModeOn:Z

    if-eqz v2, :cond_f

    const v2, 0x7f0801e6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_b

    :cond_12
    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/incallui/InCallQuickPanel;->isEasyModeOn:Z

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoiceCall()Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x7f0801e6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_b

    :cond_13
    const v2, 0x7f0801e6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_b

    :cond_14
    const v2, 0x7f0801e7

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_3

    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_16
    const v2, 0x7f0801e0

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801e2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_5

    :cond_17
    const v2, 0x7f0801da

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v3, 0x7f0801dc

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_6

    :cond_18
    const v2, 0x7f0801d9

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v7, 0x7f0801d9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_7

    :cond_19
    const v2, 0x7f0801eb

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f0801ea

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_8
.end method
