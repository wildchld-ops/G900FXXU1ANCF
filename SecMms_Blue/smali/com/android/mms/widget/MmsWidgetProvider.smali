.class public Lcom/android/mms/widget/MmsWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MmsWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;
    }
.end annotation


# static fields
.field public static final ACTION_FAV_WIDGET_CHANGE:Ljava/lang/String; = "Change"

.field public static final ACTION_FAV_WIDGET_NONE:Ljava/lang/String; = "NONE"

.field public static final ACTION_FAV_WIDGET_UPDATE_ALL:Ljava/lang/String; = "WIDGET_UPDATE_ALL"

.field public static final ACTION_MODE:Ljava/lang/String; = "ACTION_MODE"

.field public static final ACTION_NOTIFY_DATASET_CHANGED:Ljava/lang/String; = "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

.field public static final ACTION_NOTIFY_FONT_SIZE_CHANGED:Ljava/lang/String; = "com.android.mms.intent.action.ACTION_NOTIFY_FONT_SIZE_CHANGED"

.field public static final EXTRA_CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final EXTRA_CONTACT_NUMBER:Ljava/lang/String; = "contact_number"

.field public static final EXTRA_FROM_WIDGET:Ljava/lang/String; = "from_widget"

.field public static final EXTRA_MESSAGE_INDEX:Ljava/lang/String; = "message_index"

.field public static final EXTRA_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final MMS_WIDGET:Ljava/lang/String; = "MmsWidget"

.field static final MODE_MASK_PICKER:I = -0x80000000

.field static final MODE_MASK_SHOW_NUMBER_OF_CONTACTS:I = 0x800000

.field static final MODE_MASK_SHOW_PHOTOS:I = 0x8000000

.field public static final NOTICE_WIDGET:Ljava/lang/String; = "NoticeWidget"

.field public static final PRIORITY_WIDGET:Ljava/lang/String; = "PriorityWidget"

.field static final SUMMARY_DISPLAY_NAME_COLUMN_INDEX:I = 0x1

.field static final SUMMARY_HAS_EMAIL_COLUMN_INDEX:I = 0x6

.field static final SUMMARY_HAS_PHONE_NUMBER_COLUMN_INDEX:I = 0x5

.field static final SUMMARY_HAS_Phone_TYPE_COLUMN_INDEX:I = 0x7

.field static final SUMMARY_ID_COLUMN_INDEX:I = 0x0

.field static final SUMMARY_RAW_CONTACTS_ACCOUNT_TYPE_COLUMN_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MmsWidgetProvider"

.field private static currentWidget:Ljava/lang/String;

.field public static invalidationFlag:Z

.field private static observer:Landroid/database/ContentObserver;

.field public static sFontSizeIndex:I

.field public static sWidgetCount:I


# instance fields
.field private isChanged:Z

.field mContext:Landroid/content/Context;

.field private mDbControll:Lcom/android/mms/widget/NoticeDBControl;

.field private needToUpdate:Z

.field remote:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/widget/MmsWidgetProvider;->invalidationFlag:Z

    const-string v0, "MmsWidget"

    sput-object v0, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    sput v1, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    const/4 v0, 0x2

    sput v0, Lcom/android/mms/widget/MmsWidgetProvider;->sFontSizeIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    iput-boolean v0, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    iput-boolean v0, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/widget/MmsWidgetProvider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/widget/MmsWidgetProvider;)Lcom/android/mms/widget/NoticeDBControl;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    return-object v0
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    array-length v2, p0

    const-string v3, "Latin-1"

    invoke-static {p0, v1, v2, v3}, Lorg/apache/http/util/EncodingUtils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentWidget()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    return-object v0
.end method

.method public static getWidgetCount()I
    .locals 1

    sget v0, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    return v0
.end method

.method public static notifyDatasetChanged(Landroid/content/Context;)V
    .locals 3

    const-string v1, "MmsWidgetProvider"

    const-string v2, "notifyDatasetChanged"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static notifyDatasetChanged(Landroid/content/Context;Z)V
    .locals 3

    const-string v1, "MmsWidgetProvider"

    const-string v2, "notifyDatasetChanged"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "notice_update"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static notifyDefaultAppChanged(Landroid/content/Context;)V
    .locals 6

    const-string v4, "MmsWidgetProvider"

    const-string v5, "notifyDefaultAppChanged"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    aget v4, v0, v2

    invoke-static {p0, v4}, Lcom/android/mms/widget/MmsWidgetProvider;->updateWidget(Landroid/content/Context;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static refreshWidgetCount(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    sput v3, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    return-void

    :cond_0
    array-length v3, v2

    goto :goto_0
.end method

.method private static setIntentForAdd(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/widget/NoticeThreadContactSelector;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x3000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0b014a

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public static setIntentForChangeWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 5

    const/high16 v4, 0x800

    const/4 v0, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_MODE"

    const-string v3, "Change"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v3, "NoticeWidget"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v3, "PriorityWidget"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0b0148

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0b030d

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setIntentForClickListItem(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 6

    const/high16 v5, 0x800

    const/4 v4, 0x0

    sget-object v2, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v3, "NoticeWidget"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v3, "PriorityWidget"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v2, 0x7f0b014d

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from_widget"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v2, 0x7f0b030f

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setIntentForComposer(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0b030e

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from_widget"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x800

    invoke-static {p0, v5, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {p0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method public static setIntentForNoticeWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;)V
    .locals 4

    const v3, 0x7f0b014e

    const v2, 0x7f0b014d

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/widget/NoticeWidgetRemoteViewService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    const/16 v1, 0x8

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method public static setIntentForPriorityWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;)V
    .locals 4

    const v3, 0x7f0b014e

    const v2, 0x7f0b014d

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/widget/NoticeWidgetRemoteViewService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    const/16 v1, 0x8

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0b0148

    const v2, 0x7f0c046a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0b014f

    const v2, 0x7f0c0472

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static setIntentForSettings(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/widget/WidgetPreferenceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v2, 0x7f0b014c

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public static setIntentForWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;)V
    .locals 4

    const v3, 0x7f0b030f

    const v2, 0x7f0b014e

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/widget/MmsWidgetService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    invoke-virtual {p2, v3, v2}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    const/16 v1, 0x8

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method private static setPriorityIntentForAdd(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 6

    const v5, 0x7f0b014a

    const/16 v4, 0x8

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/widget/NoticeThreadContactSelector;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x3000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0b0149

    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0b014b

    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method private static updateNoticeWidget(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040049

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, p1, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForNoticeWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForAdd(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForClickListItem(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForChangeWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForSettings(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private static updatePriorityWidget(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040049

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, p1, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForPriorityWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setPriorityIntentForAdd(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForClickListItem(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForChangeWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForSettings(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private static updateWidget(Landroid/content/Context;I)V
    .locals 4

    const-string v1, "MmsWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWidget appWidgetId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400ae

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, p1, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForComposer(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForClickListItem(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForChangeWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForSettings(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    invoke-static {p1}, Lcom/android/mms/widget/MmsWidgetProvider;->refreshWidgetCount(Landroid/content/Context;)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    const-string v1, "MmsWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterContentObserver() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;Landroid/os/Handler;)V

    sput-object v2, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    sget-object v3, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "MmsWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerContentObserver() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->findIndexOfWidgetFontSize(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/android/mms/widget/MmsWidgetProvider;->sFontSizeIndex:I

    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/mms/widget/MmsWidgetProvider;->refreshWidgetCount(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "ACTION_MODE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v7, "Change"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v8, "MmsWidget"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getWidgetType()I

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "NoticeWidget"

    sput-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/android/mms/widget/WidgetPreferenceActivity;->setCurrentWidget(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v10, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    :cond_1
    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v8, "NoticeWidget"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v8, "PriorityWidget"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_2
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    if-nez v7, :cond_3

    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v8, "NoticeWidget"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;Landroid/os/Handler;)V

    sput-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v7, "MmsWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "registerContentObserver() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/mms/widget/UpdateFavoriteDBData;

    invoke-direct {v4}, Lcom/android/mms/widget/UpdateFavoriteDBData;-><init>()V

    iget-object v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    iput-object v7, v4, Lcom/android/mms/widget/UpdateFavoriteDBData;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    iput-object v7, v4, Lcom/android/mms/widget/UpdateFavoriteDBData;->dbControll:Lcom/android/mms/widget/NoticeDBControl;

    new-instance v7, Lcom/android/mms/widget/MmsWidgetProvider$1;

    invoke-direct {v7, p0}, Lcom/android/mms/widget/MmsWidgetProvider$1;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;)V

    iput-object v7, v4, Lcom/android/mms/widget/UpdateFavoriteDBData;->finisher:Ljava/lang/Runnable;

    new-instance v7, Lcom/android/mms/widget/UpdateContactDBTask;

    invoke-direct {v7}, Lcom/android/mms/widget/UpdateContactDBTask;-><init>()V

    new-array v8, v10, [Lcom/android/mms/widget/UpdateFavoriteDBData;

    aput-object v4, v8, v11

    invoke-virtual {v7, v8}, Lcom/android/mms/widget/UpdateContactDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    const-string v7, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iput-boolean v10, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    :cond_4
    :goto_1
    iget-boolean v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    if-eqz v7, :cond_6

    :cond_5
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/mms/widget/MmsWidgetProvider$2;

    invoke-direct {v8, p0}, Lcom/android/mms/widget/MmsWidgetProvider$2;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    iget-boolean v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    if-eqz v7, :cond_7

    iput-boolean v11, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/mms/widget/MmsWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    :cond_7
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getWidgetType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const-string v7, "PriorityWidget"

    sput-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v7, "MmsWidget"

    sput-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v7, "com.android.mms.intent.action.ACTION_NOTIFY_FONT_SIZE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput-boolean v10, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->findIndexOfWidgetFontSize(Landroid/content/Context;)I

    move-result v7

    sput v7, Lcom/android/mms/widget/MmsWidgetProvider;->sFontSizeIndex:I

    goto :goto_1

    :cond_b
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    const-string v7, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iput-boolean v10, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    :cond_c
    :goto_3
    iget-boolean v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    if-nez v7, :cond_d

    iget-boolean v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    if-eqz v7, :cond_e

    :cond_d
    const-string v7, "MmsWidgetProvider"

    const-string v8, "onReceive() action=ACTION_NOTIFY_DATASET_CHANGED"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/mms/widget/MmsWidgetProvider$3;

    invoke-direct {v8, p0}, Lcom/android/mms/widget/MmsWidgetProvider$3;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    iget-boolean v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    if-eqz v7, :cond_7

    iput-boolean v11, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/mms/widget/MmsWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_2

    :cond_f
    const-string v7, "com.android.mms.intent.action.ACTION_NOTIFY_FONT_SIZE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iput-boolean v10, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->findIndexOfWidgetFontSize(Landroid/content/Context;)I

    move-result v7

    sput v7, Lcom/android/mms/widget/MmsWidgetProvider;->sFontSizeIndex:I

    goto :goto_3
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 12

    const/4 v11, 0x1

    sget-object v8, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v9, "NoticeWidget"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    sput-boolean v11, Lcom/android/mms/widget/MmsWidgetProvider;->invalidationFlag:Z

    sget-object v8, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    if-nez v8, :cond_0

    new-instance v8, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, p0, v9}, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;Landroid/os/Handler;)V

    sput-object v8, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v2, v7, v11, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v8, "MmsWidgetProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "registerContentObserver() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/mms/widget/UpdateFavoriteDBData;

    invoke-direct {v3}, Lcom/android/mms/widget/UpdateFavoriteDBData;-><init>()V

    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    iput-object v8, v3, Lcom/android/mms/widget/UpdateFavoriteDBData;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    iput-object v8, v3, Lcom/android/mms/widget/UpdateFavoriteDBData;->dbControll:Lcom/android/mms/widget/NoticeDBControl;

    new-instance v8, Lcom/android/mms/widget/MmsWidgetProvider$4;

    invoke-direct {v8, p0}, Lcom/android/mms/widget/MmsWidgetProvider$4;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;)V

    iput-object v8, v3, Lcom/android/mms/widget/UpdateFavoriteDBData;->finisher:Ljava/lang/Runnable;

    new-instance v8, Lcom/android/mms/widget/UpdateContactDBTask;

    invoke-direct {v8}, Lcom/android/mms/widget/UpdateContactDBTask;-><init>()V

    new-array v9, v11, [Lcom/android/mms/widget/UpdateFavoriteDBData;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v8, v9}, Lcom/android/mms/widget/UpdateContactDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    move-object v1, p3

    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_3

    aget v0, v1, v5

    invoke-static {p1, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->updateNoticeWidget(Landroid/content/Context;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v9, "PriorityWidget"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v4, 0x0

    :goto_1
    array-length v8, p3

    if-ge v4, v8, :cond_3

    aget v8, p3, v4

    invoke-static {p1, v8}, Lcom/android/mms/widget/MmsWidgetProvider;->updatePriorityWidget(Landroid/content/Context;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    array-length v8, p3

    if-ge v4, v8, :cond_3

    aget v8, p3, v4

    invoke-static {p1, v8}, Lcom/android/mms/widget/MmsWidgetProvider;->updateWidget(Landroid/content/Context;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method public queryPhoneNumbers(J)Landroid/database/Cursor;
    .locals 10

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "data1"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v3

    const-string v3, "mimetype=?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v7

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v5

    goto :goto_0
.end method

.method public queryPhoneNumbers(JJ)Landroid/database/Cursor;
    .locals 10

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "data1"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype=?AND _id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v7

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v5

    goto :goto_0
.end method
