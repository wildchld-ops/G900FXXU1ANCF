.class public Lcom/nuance/connect/util/ConnectNotification;
.super Ljava/lang/Object;
.source "ConnectNotification.java"


# static fields
.field private static final COLOR_SEARCH_TEXT:Ljava/lang/CharSequence;

.field private static final COLOR_SEARCH_TITLE:Ljava/lang/CharSequence;

.field private static notification_text_color:I


# instance fields
.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private contentTitle:Ljava/lang/CharSequence;

.field private dynamicText:Ljava/lang/CharSequence;

.field private flagAutoCancel:Z

.field private flagOngoing:Z

.field private flags:I

.field private isShown:Z

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotifyBuilder:Lcom/nuance/connect/compat/NotificationCompat$Builder;

.field private notificationIcon:I

.field private notificationId:I

.field private notifyTimestamp:J

.field private replacementText1:Ljava/lang/String;

.field private replacementText2:Ljava/lang/String;

.field private replacementText3:Ljava/lang/String;

.field private showTextasTicker:Z

.field private soundUri:Landroid/net/Uri;

.field private tickerText:Ljava/lang/CharSequence;

.field private vibrationPattern:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "COLOR_SEARCH_TEXT"

    sput-object v0, Lcom/nuance/connect/util/ConnectNotification;->COLOR_SEARCH_TEXT:Ljava/lang/CharSequence;

    const-string v0, "COLOR_SEARCH_TITLE"

    sput-object v0, Lcom/nuance/connect/util/ConnectNotification;->COLOR_SEARCH_TITLE:Ljava/lang/CharSequence;

    const/high16 v0, -0x8000

    sput v0, Lcom/nuance/connect/util/ConnectNotification;->notification_text_color:I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3491d0c

    iput v0, p0, Lcom/nuance/connect/util/ConnectNotification;->notificationId:I

    iput-boolean v1, p0, Lcom/nuance/connect/util/ConnectNotification;->showTextasTicker:Z

    iput-boolean v1, p0, Lcom/nuance/connect/util/ConnectNotification;->isShown:Z

    iput v1, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    iput-boolean v1, p0, Lcom/nuance/connect/util/ConnectNotification;->flagOngoing:Z

    iput-boolean v1, p0, Lcom/nuance/connect/util/ConnectNotification;->flagAutoCancel:Z

    iget v0, p0, Lcom/nuance/connect/util/ConnectNotification;->notificationId:I

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/util/ConnectNotification;->initialize(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;I)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3491d0c

    iput v0, p0, Lcom/nuance/connect/util/ConnectNotification;->notificationId:I

    iput-boolean v1, p0, Lcom/nuance/connect/util/ConnectNotification;->showTextasTicker:Z

    iput-boolean v1, p0, Lcom/nuance/connect/util/ConnectNotification;->isShown:Z

    iput v1, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    iput-boolean v1, p0, Lcom/nuance/connect/util/ConnectNotification;->flagOngoing:Z

    iput-boolean v1, p0, Lcom/nuance/connect/util/ConnectNotification;->flagAutoCancel:Z

    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/util/ConnectNotification;->initialize(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;I)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;Landroid/os/Bundle;)V
    .locals 23

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v18, 0x3491d0c

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/connect/util/ConnectNotification;->notificationId:I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/connect/util/ConnectNotification;->showTextasTicker:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/connect/util/ConnectNotification;->isShown:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/connect/util/ConnectNotification;->flagOngoing:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/connect/util/ConnectNotification;->flagAutoCancel:Z

    if-eqz p2, :cond_4

    const-string v18, "id"

    const-wide/32 v19, 0x7fffffff

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/nuance/connect/util/ConnectNotification;->initialize(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;I)V

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/util/ConnectNotification;->getDefaultTitle()Ljava/lang/String;

    move-result-object v15

    const/4 v8, 0x0

    if-eqz p2, :cond_3

    const-string v18, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "action"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v18, "target"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v18, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v18, "messageId"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v18, "titleId"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v18, "extras"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    new-instance v4, Lcom/nuance/connect/util/UndecoratedString;

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v11, v0}, Lcom/nuance/connect/util/UndecoratedString;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    if-eqz v12, :cond_0

    new-instance v4, Lcom/nuance/connect/util/StringLookupDecorator;

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0, v12}, Lcom/nuance/connect/util/StringLookupDecorator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string v18, "replaceText"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    const-string v18, "replaceTextDecorator"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    const-string v18, "DISPLAY_LANG"

    const-string v19, "titleReplaceTextDecorator"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    new-instance v5, Lcom/nuance/connect/util/ReplaceTextDecorator;

    new-instance v18, Lcom/nuance/connect/util/DisplayLanguageDecorator;

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "replaceText"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/nuance/connect/util/DisplayLanguageDecorator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/connect/util/DisplayLanguageDecorator;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v4, v0}, Lcom/nuance/connect/util/ReplaceTextDecorator;-><init>(Lcom/nuance/connect/util/StringDecorator;Ljava/lang/String;)V

    move-object v4, v5

    :cond_1
    :goto_1
    invoke-interface {v4}, Lcom/nuance/connect/util/StringDecorator;->decorate()Ljava/lang/String;

    move-result-object v11

    if-eqz v16, :cond_3

    new-instance v6, Lcom/nuance/connect/util/StringLookupDecorator;

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v6, v0, v1}, Lcom/nuance/connect/util/StringLookupDecorator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v18, "titleReplaceText"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    const-string v18, "titleReplaceTextDecorator"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6

    const-string v18, "DISPLAY_LANG"

    const-string v19, "titleReplaceTextDecorator"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    new-instance v7, Lcom/nuance/connect/util/ReplaceTextDecorator;

    new-instance v18, Lcom/nuance/connect/util/DisplayLanguageDecorator;

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "titleReplaceText"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/nuance/connect/util/DisplayLanguageDecorator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/connect/util/DisplayLanguageDecorator;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v6, v0}, Lcom/nuance/connect/util/ReplaceTextDecorator;-><init>(Lcom/nuance/connect/util/StringDecorator;Ljava/lang/String;)V

    move-object v6, v7

    :cond_2
    :goto_2
    invoke-interface {v6}, Lcom/nuance/connect/util/StringDecorator;->decorate()Ljava/lang/String;

    move-result-object v15

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/nuance/connect/util/ConnectNotification;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/nuance/connect/util/ConnectNotification;->setText(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/connect/util/ConnectNotification;->setFlagAutoCancel()V

    if-eqz v14, :cond_7

    const-string v18, "URL"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/nuance/connect/util/ConnectNotification;->setIntent(Landroid/app/PendingIntent;)V

    :goto_3
    return-void

    :cond_4
    const-wide/32 v18, 0x7fffffff

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v10, v0

    goto/16 :goto_0

    :cond_5
    new-instance v5, Lcom/nuance/connect/util/ReplaceTextDecorator;

    const-string v18, "replaceText"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v4, v0}, Lcom/nuance/connect/util/ReplaceTextDecorator;-><init>(Lcom/nuance/connect/util/StringDecorator;Ljava/lang/String;)V

    move-object v4, v5

    goto/16 :goto_1

    :cond_6
    new-instance v7, Lcom/nuance/connect/util/ReplaceTextDecorator;

    const-string v18, "titleReplaceText"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v6, v0}, Lcom/nuance/connect/util/ReplaceTextDecorator;-><init>(Lcom/nuance/connect/util/StringDecorator;Ljava/lang/String;)V

    move-object v6, v7

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    const-string v18, "com.nuance.swype.input.DisplaySettings"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/nuance/connect/util/ConnectNotification;->createServiceIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_8
    if-eqz v14, :cond_9

    const-string v18, "UPGRADE"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/connect/util/ConnectNotification;->createServiceIntent(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/connect/util/ConnectNotification;->createIntent(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private getDefaultTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "com_nuance_connect_notification_default_title"

    invoke-direct {p0, v0}, Lcom/nuance/connect/util/ConnectNotification;->getStringTranslation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIcon()I
    .locals 5

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com_nuance_connect_swype_logo_white"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNotificationColor(Landroid/content/Context;)I
    .locals 10

    const v9, 0x106000c

    const/high16 v8, -0x8000

    sget v4, Lcom/nuance/connect/util/ConnectNotification;->notification_text_color:I

    if-eq v4, v8, :cond_0

    sget v4, Lcom/nuance/connect/util/ConnectNotification;->notification_text_color:I

    :goto_0
    return v4

    :cond_0
    :try_start_0
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/nuance/connect/util/ConnectNotification;->COLOR_SEARCH_TITLE:Ljava/lang/CharSequence;

    sget-object v6, Lcom/nuance/connect/util/ConnectNotification;->COLOR_SEARCH_TEXT:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/nuance/connect/util/ConnectNotification;->traverseGroup(Landroid/view/ViewGroup;)Z

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget v4, Lcom/nuance/connect/util/ConnectNotification;->notification_text_color:I

    if-ne v4, v8, :cond_1

    sput v9, Lcom/nuance/connect/util/ConnectNotification;->notification_text_color:I

    :cond_1
    sget v4, Lcom/nuance/connect/util/ConnectNotification;->notification_text_color:I

    goto :goto_0

    :catch_0
    move-exception v0

    sput v9, Lcom/nuance/connect/util/ConnectNotification;->notification_text_color:I

    goto :goto_1
.end method

.method private getStringTranslation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ResourcesService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ResourcesService;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static traverseGroup(Landroid/view/ViewGroup;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/nuance/connect/util/ConnectNotification;->COLOR_SEARCH_TEXT:Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    sput v4, Lcom/nuance/connect/util/ConnectNotification;->notification_text_color:I

    move v4, v5

    :goto_1
    return v4

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/nuance/connect/util/ConnectNotification;->traverseGroup(Landroid/view/ViewGroup;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/connect/util/ConnectNotification;->isShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/nuance/connect/util/ConnectNotification;->notificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/util/ConnectNotification;->isShown:Z

    :cond_0
    return-void
.end method

.method public cancel(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-void
.end method

.method public final createIntent(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mContentIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public final createServiceIntent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/util/ConnectNotification;->createServiceIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final createServiceIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11

    const/high16 v10, 0x800

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    and-long v4, v6, v8

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v6

    long-to-int v7, v4

    invoke-static {v6, v7, v2, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/connect/util/ConnectNotification;->mContentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/nuance/connect/util/ConnectNotification;->mContentIntent:Landroid/app/PendingIntent;

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v6

    long-to-int v7, v4

    invoke-static {v6, v7, v2, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/connect/util/ConnectNotification;->mContentIntent:Landroid/app/PendingIntent;

    :cond_3
    return-void
.end method

.method protected getText()Ljava/lang/CharSequence;
    .locals 6

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/nuance/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/connect/util/ConnectNotification;->replacementText1:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/nuance/connect/util/ConnectNotification;->replacementText2:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/nuance/connect/util/ConnectNotification;->replacementText3:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected final initialize(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;I)V
    .locals 2

    iput-object p1, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    iput p2, p0, Lcom/nuance/connect/util/ConnectNotification;->notificationId:I

    invoke-direct {p0}, Lcom/nuance/connect/util/ConnectNotification;->getIcon()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/ConnectNotification;->notificationIcon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/util/ConnectNotification;->notifyTimestamp:J

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public final setFlagAutoCancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/ConnectNotification;->flagAutoCancel:Z

    return-void
.end method

.method public setFlagOngoing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/ConnectNotification;->flagOngoing:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/connect/util/ConnectNotification;->notificationIcon:I

    return-void
.end method

.method public final setIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/util/ConnectNotification;->mContentIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setLightsDefault()V
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    return-void
.end method

.method public setRepeatingVariables(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/util/ConnectNotification;->replacementText1:Ljava/lang/String;

    return-void
.end method

.method public setRepeatingVariables(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/util/ConnectNotification;->replacementText1:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/util/ConnectNotification;->replacementText2:Ljava/lang/String;

    return-void
.end method

.method public setRepeatingVariables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/util/ConnectNotification;->replacementText1:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/util/ConnectNotification;->replacementText2:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/connect/util/ConnectNotification;->replacementText3:Ljava/lang/String;

    return-void
.end method

.method public setSound(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->soundUri:Landroid/net/Uri;

    return-void
.end method

.method public setSoundDefault()V
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    return-void
.end method

.method public setSoundMedia(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->soundUri:Landroid/net/Uri;

    return-void
.end method

.method public setText(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTickerText(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->tickerText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTickerText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/util/ConnectNotification;->tickerText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTickerText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/util/ConnectNotification;->tickerText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTickerToText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/util/ConnectNotification;->showTextasTicker:Z

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->contentTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/util/ConnectNotification;->contentTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setVibrate([J)V
    .locals 1

    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->vibrationPattern:[J

    return-void
.end method

.method public setVibrateDefault()V
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    return-void
.end method

.method public show()V
    .locals 4

    invoke-virtual {p0}, Lcom/nuance/connect/util/ConnectNotification;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/connect/util/ConnectNotification;->showTextasTicker:Z

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/nuance/connect/util/ConnectNotification;->tickerText:Ljava/lang/CharSequence;

    :cond_0
    new-instance v1, Lcom/nuance/connect/compat/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nuance/connect/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/nuance/connect/util/ConnectNotification;->contentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/connect/compat/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/connect/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/connect/compat/NotificationCompat$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/nuance/connect/util/ConnectNotification;->notifyTimestamp:J

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/compat/NotificationCompat$Builder;->setWhen(J)Lcom/nuance/connect/compat/NotificationCompat$Builder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/util/ConnectNotification;->notificationIcon:I

    invoke-virtual {v1, v2}, Lcom/nuance/connect/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/connect/compat/NotificationCompat$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotifyBuilder:Lcom/nuance/connect/compat/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotifyBuilder:Lcom/nuance/connect/compat/NotificationCompat$Builder;

    invoke-virtual {v1}, Lcom/nuance/connect/compat/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/nuance/connect/util/ConnectNotification;->tickerText:Ljava/lang/CharSequence;

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/connect/util/ConnectNotification;->isShown:Z

    iget-boolean v1, p0, Lcom/nuance/connect/util/ConnectNotification;->flagAutoCancel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    :cond_1
    iget-boolean v1, p0, Lcom/nuance/connect/util/ConnectNotification;->flagOngoing:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->soundUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/nuance/connect/util/ConnectNotification;->soundUri:Landroid/net/Uri;

    iput-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_3
    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->vibrationPattern:[J

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/nuance/connect/util/ConnectNotification;->vibrationPattern:[J

    iput-object v2, v1, Landroid/app/Notification;->vibrate:[J

    :cond_4
    iget v1, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget v2, p0, Lcom/nuance/connect/util/ConnectNotification;->flags:I

    iput v2, v1, Landroid/app/Notification;->flags:I

    :cond_5
    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/nuance/connect/util/ConnectNotification;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/nuance/connect/util/ConnectNotification;->notificationId:I

    iget-object v3, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showAndCleanup()V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/connect/util/ConnectNotification;->show()V

    invoke-virtual {p0}, Lcom/nuance/connect/util/ConnectNotification;->cleanup()V

    return-void
.end method

.method public update()V
    .locals 5

    invoke-virtual {p0}, Lcom/nuance/connect/util/ConnectNotification;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/connect/util/ConnectNotification;->isShown:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/nuance/connect/util/ConnectNotification;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/util/ConnectNotification;->contentTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/nuance/connect/util/ConnectNotification;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/nuance/connect/util/ConnectNotification;->notificationId:I

    iget-object v3, p0, Lcom/nuance/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public updateOrShow()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/util/ConnectNotification;->isShown:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/util/ConnectNotification;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/util/ConnectNotification;->update()V

    goto :goto_0
.end method
