.class Lcom/android/mms/widget/StackRemoteViewsFactory;
.super Ljava/lang/Object;
.source "NoticeWidgetRemoteViewService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# static fields
.field private static final MAX_CONVERSATIONS_COUNT:I = 0x19

.field private static final TAG:Ljava/lang/String; = "Mms/StackRemoteViewsFactory"

.field private static final sWidgetLock:Ljava/lang/Object;


# instance fields
.field private final CONVERSATION_PROJECTION:[Ljava/lang/String;

.field private final SPEEDDIAL_DEFAULT_IMAGES:[I

.field flag:Z

.field private mAddDefaultResourceId:I

.field private mAppWidgetId:I

.field private mAvatarSize:I

.field private mContext:Landroid/content/Context;

.field private mConversationCursor:Landroid/database/Cursor;

.field private mDateFormatContentObserver:Landroid/database/ContentObserver;

.field private mDbControll:Lcom/android/mms/widget/NoticeDBControl;

.field private mShouldShowViewMore:Z

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTimeFormatContentObserver:Landroid/database/ContentObserver;

.field private mWidgetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->sWidgetLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->flag:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    iput v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mWidgetType:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "snippet"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "snippet_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->SPEEDDIAL_DEFAULT_IMAGES:[I

    new-instance v0, Lcom/android/mms/widget/StackRemoteViewsFactory$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/widget/StackRemoteViewsFactory$1;-><init>(Lcom/android/mms/widget/StackRemoteViewsFactory;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/widget/StackRemoteViewsFactory$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/widget/StackRemoteViewsFactory$2;-><init>(Lcom/android/mms/widget/StackRemoteViewsFactory;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAppWidgetId:I

    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAvatarSize:I

    return-void

    :array_0
    .array-data 0x4
        0x60t 0x2t 0x2t 0x7ft
        0x61t 0x2t 0x2t 0x7ft
        0x62t 0x2t 0x2t 0x7ft
        0x63t 0x2t 0x2t 0x7ft
        0x64t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/mms/widget/StackRemoteViewsFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/widget/StackRemoteViewsFactory;->notifyDataChanged()V

    return-void
.end method

.method private getConversationCount()I
    .locals 3

    const/16 v2, 0x19

    const-string v0, "Mms/StackRemoteViewsFactory"

    const-string v1, "getConversationCount"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mWidgetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getDefaultAvatar(I)I
    .locals 2

    rem-int/lit8 v0, p1, 0x5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v1, 0x7f020368

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v1, 0x7f020369

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const v1, 0x7f02036a

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const v1, 0x7f02036b

    goto :goto_0

    :cond_3
    const v1, 0x7f020367

    goto :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v1, -0xbdbdbe

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float v6, p1

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v2
.end method

.method private getViewMoreConversationsView()Landroid/widget/RemoteViews;
    .locals 7

    const/4 v6, 0x0

    const-string v3, "Mms/StackRemoteViewsFactory"

    const-string v4, "getViewMoreConversationsView"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0400af

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f0b0313

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0b0311

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0b0312

    iget-object v4, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0382

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "fromWidget"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v3, v6, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f0b0310

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v2
.end method

.method private notifyDataChanged()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAppWidgetId:I

    const v2, 0x7f0b014d

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    return-void
.end method

.method private queryAllConversations()Landroid/database/Cursor;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v0

    const-string v4, "pri ASC"

    const/4 v5, 0x2

    move-object v2, v1

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/glance/GlanceDBHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryFavouritesConversations()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    new-instance v14, Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/mms/widget/NoticeDBControl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v14}, Lcom/android/mms/widget/NoticeDBControl;->queryforThread()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    :cond_1
    const-string v14, "thread_id"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-string v14, "display_number"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v14, "count"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v14, v5}, Lcom/android/mms/widget/NoticeDBControl;->getThreadId(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v14, v8, v9}, Lcom/android/mms/widget/NoticeDBControl;->queryReceiveMessage(J)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    cmp-long v14, v11, v8

    if-nez v14, :cond_6

    if-ne v1, v7, :cond_6

    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v6, 0x0

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_1

    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void

    :cond_6
    const-wide/16 v3, 0x0

    const/4 v10, 0x0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "date"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v14, "sms"

    const-string v15, "transport_type"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "body"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_2
    const-string v14, "thread_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v14, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v14, "subject"

    invoke-virtual {v13, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "current"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "count"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "display_number=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lcom/android/mms/widget/NoticeDBControl;->update(Landroid/content/ContentValues;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v14

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    const-string v15, "_id"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/mms/widget/NoticeDBControl;->queryMmsBody(I)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v14, 0x3e8

    mul-long/2addr v3, v14

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    const v15, 0x7f0c00eb

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    goto :goto_2

    :catchall_0
    move-exception v14

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_9
    throw v14
.end method

.method private setAvatar(Landroid/widget/RemoteViews;Landroid/graphics/drawable/Drawable;J)V
    .locals 10

    const v9, 0x7f0b013b

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    long-to-int v4, p3

    invoke-direct {p0, v4}, Lcom/android/mms/widget/StackRemoteViewsFactory;->getDefaultAvatar(I)I

    move-result v4

    invoke-virtual {p1, v9, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iget-object v4, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020366

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v4, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAvatarSize:I

    iget v5, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAvatarSize:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p2, v8, v8, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static stringToByte(Ljava/lang/String;)[B
    .locals 3

    if-eqz p0, :cond_0

    const-string v2, "Latin-1"

    invoke-static {p0, v2}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public byteArrayToBitmap([B)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v4, Lcom/android/mms/widget/StackRemoteViewsFactory;->sWidgetLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mWidgetType:I

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAppWidgetId:I

    invoke-static {v1, v2}, Lcom/android/mms/widget/NoticeSettingManager;->getThreadCount(Landroid/content/Context;I)I

    move-result v1

    monitor-exit v4

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mShouldShowViewMore:Z

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/widget/StackRemoteViewsFactory;->getConversationCount()I

    move-result v0

    iget-object v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mShouldShowViewMore:Z

    iget-boolean v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mShouldShowViewMore:Z

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v1, v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1
.end method

.method public getFavoriteViewAt(I)Landroid/widget/RemoteViews;
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mShouldShowViewMore:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/widget/StackRemoteViewsFactory;->getConversationCount()I

    move-result v23

    move/from16 v0, p1

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/widget/StackRemoteViewsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v19

    :cond_1
    :goto_0
    return-object v19

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v23

    if-nez v23, :cond_3

    const-string v23, "Mms/StackRemoteViewsFactory"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to move to position: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/widget/StackRemoteViewsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v19

    goto :goto_0

    :cond_3
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const v24, 0x7f040045

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/widget/StackRemoteViewsFactory;->stringbuild(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeDBControl;->idQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    sget v23, Lcom/android/mms/widget/MmsWidgetProvider;->sFontSizeIndex:I

    invoke-static/range {v23 .. v23}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getWidgetFontSize(I)I

    move-result v10

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/16 v22, 0x0

    const-wide/16 v5, -0x1

    const/4 v15, 0x0

    if-nez v7, :cond_6

    const/4 v12, 0x1

    :goto_1
    if-nez v12, :cond_c

    :try_start_0
    const-string v23, "contact_id"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v23, "count"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string v23, "display_name"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v23, "display_name_primary"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v23, "display_number"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "android.contacts.DISPLAY_ORDER"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v23, 0x2

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const v23, 0x7f0b013c

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_2
    const v23, 0x7f0b013c

    const/16 v24, 0x0

    int-to-float v0, v10

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const/16 v21, 0x0

    if-nez v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c00eb

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const v23, 0x7f0b0033

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_3
    const v23, 0x7f0b0033

    const/16 v24, 0x0

    add-int/lit8 v25, v10, -0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const-string v23, "date"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-wide/16 v23, 0x0

    cmp-long v23, v16, v23

    if-eqz v23, :cond_b

    const v23, 0x7f0b010d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v23, 0x7f0b010d

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v23, 0x7f0b010d

    const/16 v24, 0x0

    add-int/lit8 v25, v10, -0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :goto_4
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v15, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    const/4 v11, 0x0

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/mms/data/Contact;->getAvatarBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_4

    const v23, 0x7f0b013b

    const-string v24, "setImageBitmap"

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v11}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-nez v11, :cond_5

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/mms/widget/StackRemoteViewsFactory;->getSpeedDialDefaultImage(J)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAddDefaultResourceId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    const v23, 0x7f0b013b

    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAddDefaultResourceId:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_5
    const v23, 0x7f0b013b

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v23, 0x7f0b013c

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v23, 0x7f0b0033

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v23, "android.intent.action.SENDTO"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v23, 0x3400

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v23, "smsto"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v15, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v23, "from_widget"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v23, 0x7f0b013a

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_7
    const v23, 0x7f0b013c

    :try_start_3
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v23

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_8
    throw v23

    :cond_9
    :try_start_4
    const-string v23, "subject"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x10b

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c000c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    :cond_a
    const v23, 0x7f0b0033

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_b
    const v23, 0x7f0b010d

    const/16 v24, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    :cond_c
    const v23, 0x7f0b013b

    const/16 v24, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v23, 0x7f0b013c

    const/16 v24, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v23, 0x7f0b0033

    const/16 v24, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v23, 0x7f0b010d

    const/16 v24, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :catch_0
    move-exception v23

    goto/16 :goto_5
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 5

    iget v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mWidgetType:I

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.action.favoritecontacts.EDITMODEINTENT_LARGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0400af

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v2, 0x7f0b0313

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0b0311

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0b0312

    iget-object v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    const v4, 0x7f0c04d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getPriorityViewAt(I)Landroid/widget/RemoteViews;
    .locals 19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mShouldShowViewMore:Z

    if-eqz v14, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/widget/StackRemoteViewsFactory;->getConversationCount()I

    move-result v14

    move/from16 v0, p1

    if-lt v0, v14, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/widget/StackRemoteViewsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v11

    :goto_0
    return-object v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v14, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "Mms/StackRemoteViewsFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to move to position: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/widget/StackRemoteViewsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v11

    goto :goto_0

    :cond_2
    new-instance v11, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0400b3

    invoke-direct {v11, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v14, Lcom/android/mms/widget/MmsWidgetProvider;->sFontSizeIndex:I

    invoke-static {v14}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getWidgetFontSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x0

    invoke-static {v1, v14}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const v14, 0x7f0b013c

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_3
    const v14, 0x7f0b013c

    const/4 v15, 0x0

    int-to-float v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v9, v10}, Lcom/android/mms/widget/StackRemoteViewsFactory;->setAvatar(Landroid/widget/RemoteViews;Landroid/graphics/drawable/Drawable;J)V

    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    invoke-static {v14, v1, v15}, Lcom/android/mms/data/Conversation;->getConversationByAddress(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_6

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v5, v14, v15}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c000c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_4
    const/4 v14, 0x2

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v14, 0x3

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    :cond_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :goto_1
    const v14, 0x7f0b0033

    invoke-virtual {v11, v14, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v14, 0x7f0b0033

    const/4 v15, 0x0

    int-to-float v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-eqz v14, :cond_7

    const v14, 0x7f0b010d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v15, v6, v7}, Lcom/android/mms/ui/MessageUtils;->formatDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v14, 0x7f0b010d

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v14, 0x7f0b010d

    const/4 v15, 0x0

    int-to-float v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :goto_2
    if-lez v13, :cond_8

    const v14, 0x7f0b010b

    const-string v15, "%d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v14, 0x7f0b010b

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v14, "android.intent.action.SENDTO"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v14, 0x3400

    invoke-virtual {v2, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v14, "smsto"

    const/4 v15, 0x0

    invoke-static {v14, v1, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v14, "from_widget"

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v14, 0x7f0b013a

    invoke-virtual {v11, v14, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v14

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c00eb

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_7
    const v14, 0x7f0b010d

    const/4 v15, 0x4

    invoke-virtual {v11, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    :cond_8
    const v14, 0x7f0b010b

    const/4 v15, 0x4

    invoke-virtual {v11, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3
.end method

.method public getSpeedDialDefaultImage(J)I
    .locals 3

    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->SPEEDDIAL_DEFAULT_IMAGES:[I

    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->SPEEDDIAL_DEFAULT_IMAGES:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 1

    iget v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mWidgetType:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/widget/StackRemoteViewsFactory;->getFavoriteViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/widget/StackRemoteViewsFactory;->getPriorityViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    iget v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mWidgetType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x1

    new-instance v2, Lcom/android/mms/widget/NoticeDBControl;

    iget-object v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/mms/widget/NoticeDBControl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    const-string v2, "date_format"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NoticeWidget"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mWidgetType:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PriorityWidget"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mWidgetType:I

    goto :goto_0
.end method

.method public onDataSetChanged()V
    .locals 2

    sget-object v1, Lcom/android/mms/widget/StackRemoteViewsFactory;->sWidgetLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mWidgetType:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/widget/StackRemoteViewsFactory;->queryFavouritesConversations()V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/widget/StackRemoteViewsFactory;->queryAllConversations()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 3

    sget-object v1, Lcom/android/mms/widget/StackRemoteViewsFactory;->sWidgetLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeDBControl;->close()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mConversationCursor:Landroid/database/Cursor;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stringbuild(I)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, "position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
