.class public Lcom/android/mms/widget/NoticeEditActivity;
.super Landroid/app/Activity;
.source "NoticeEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;,
        Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final SAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "mmsnoticewidget/NoticeListEditActivity"


# instance fields
.field private final SPEEDDIAL_DEFAULT_IMAGES:[I

.field emptyData:Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

.field isChanged:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field private mDbControl:Lcom/android/mms/widget/NoticeDBControl;

.field private mIsLandscape:Z

.field private mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuSave:Landroid/view/MenuItem;

.field private mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

.field private mNoticeWidgetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoticeWidgetListClone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetType:I

.field movedData:Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetListClone:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuCancel:Landroid/view/MenuItem;

    new-instance v0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    invoke-direct {v0, p0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;-><init>(Lcom/android/mms/widget/NoticeEditActivity;)V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->emptyData:Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    iput-boolean v2, p0, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    iput v2, p0, Lcom/android/mms/widget/NoticeEditActivity;->mWidgetType:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

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

.method private formatMessage(Landroid/database/Cursor;Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 4

    const-string v2, ", "

    invoke-virtual {p2, v2}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/widget/NoticeEditActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0138

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/widget/NoticeEditActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CBmessages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/widget/NoticeEditActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v2, "Pushmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/widget/NoticeEditActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c015f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNoticeList()Landroid/database/Cursor;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeDBControl;->idQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getPriorityList()Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/widget/NoticeDBControl;->priorityQuery(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private isCmas(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0x68

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeScreen()V
    .locals 22

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/widget/NoticeEditActivity;->getNoticeList()Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    const-string v17, "mmsnoticewidget/NoticeListEditActivity"

    const-string v18, "clear mNoticeWidgetList"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_3

    :cond_1
    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v0, v11

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/widget/NoticeEditActivity;->getSpeedDialDefaultImage(J)I

    move-result v10

    const-string v17, "contact_id"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v17, "display_name"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v17, "display_name_primary"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v17, "display_number"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v12, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/mms/data/Contact;->getAvatarBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeEditActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v12

    if-nez v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeEditActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v12

    :cond_2
    const-string v8, ""

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "android.contacts.DISPLAY_ORDER"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    move-object v8, v13

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v12, v8}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;-><init>(Lcom/android/mms/widget/NoticeEditActivity;I[BLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-nez v17, :cond_1

    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetListClone:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->access$000(Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationListClone:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->access$100(Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    :cond_5
    new-instance v17, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetListClone:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;-><init>(Lcom/android/mms/widget/NoticeEditActivity;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    const-string v17, "mmsnoticewidget/NoticeListEditActivity"

    const-string v18, "refreshed Widget list"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_6
    const-string v17, "mmsnoticewidget/NoticeListEditActivity"

    const-string v18, "isChanged is also refreshed"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setCacheColorHint(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    move-object/from16 v17, v0

    const v18, 0x7f020330

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x9

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandlePadding(IIII)V

    :cond_8
    return-void

    :cond_9
    move-object v8, v14

    goto/16 :goto_0
.end method

.method private makeScreenForPriority()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getPriorityList()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v7, "mmsnoticewidget/NoticeListEditActivity"

    const-string v8, "cursor is null so just return"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const-string v7, "mmsnoticewidget/NoticeListEditActivity"

    const-string v8, "clear mNoticeWidgetList"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    const-string v7, "display_recipient_ids"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "recipient_ids"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/mms/widget/NoticeEditActivity;->updateAvatar(Landroid/database/Cursor;Lcom/android/mms/data/ContactList;)[B

    move-result-object v3

    const-string v0, ""

    const-string v7, "type"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/widget/NoticeEditActivity;->isCmas(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    invoke-direct {v8, p0, v2, v3, v0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;-><init>(Lcom/android/mms/widget/NoticeEditActivity;I[BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_5
    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetListClone:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    #getter for: Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->access$000(Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    #getter for: Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationListClone:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->access$100(Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v7, v8, :cond_8

    :cond_6
    new-instance v7, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    iget-object v8, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetListClone:Ljava/util/ArrayList;

    invoke-direct {v7, p0, p0, v8, v9}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;-><init>(Lcom/android/mms/widget/NoticeEditActivity;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    const-string v7, "mmsnoticewidget/NoticeListEditActivity"

    const-string v8, "refreshed Widget list"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    if-eqz v7, :cond_8

    iput-boolean v10, p0, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_7
    const-string v7, "mmsnoticewidget/NoticeListEditActivity"

    const-string v8, "isChanged is also refreshed"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v8, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v8, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v7, v10}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setCacheColorHint(I)V

    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v7, v11}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndMode(Z)V

    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const v8, 0x7f020330

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(I)V

    iget-object v7, p0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/16 v8, -0x9

    invoke-virtual {v7, v10, v10, v8, v10}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandlePadding(IIII)V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-direct {p0, v1, v6}, Lcom/android/mms/widget/NoticeEditActivity;->formatMessage(Landroid/database/Cursor;Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_a
    throw v7
.end method

.method private updateAvatar(Landroid/database/Cursor;Lcom/android/mms/data/ContactList;)[B
    .locals 8

    const v7, 0x7f02025d

    const/4 v3, 0x0

    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/mms/widget/NoticeEditActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    int-to-long v5, v2

    invoke-virtual {p0, v5, v6}, Lcom/android/mms/widget/NoticeEditActivity;->getSpeedDialDefaultImage(J)I

    move-result v1

    invoke-virtual {p2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    iget-object v5, p0, Lcom/android/mms/widget/NoticeEditActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/android/mms/data/Contact;->getAvatarBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeEditActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeEditActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CBmessages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020259

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeEditActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    const-string v5, "Pushmessage"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020265

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeEditActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v5, "type"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/widget/NoticeEditActivity;->isCmas(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02025b

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeEditActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02025c

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeEditActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02025a

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeEditActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeEditActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeEditActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    goto/16 :goto_0
.end method

.method private updateNoticeList()V
    .locals 7

    iget-object v5, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    invoke-virtual {v5}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->getNoticeList()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v1, :cond_1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "position"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v5, p0, Lcom/android/mms/widget/NoticeEditActivity;->mAppWidgetId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const-string v5, "widget_id"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/mms/widget/NoticeEditActivity;->mAppWidgetId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\' AND "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v5, "_id"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    invoke-virtual {v5}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/widget/NoticeEditActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v5, v4, v2}, Lcom/android/mms/widget/NoticeDBControl;->update(Landroid/content/ContentValues;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePriorityList()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public byteArrayToBitmap([B)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getSpeedDialDefaultImage(J)I
    .locals 3

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->invalidateOptionsMenu()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "mmsnoticewidget/NoticeListEditActivity"

    const-string v3, "onCreate "

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "NoticeWidget"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/android/mms/widget/NoticeEditActivity;->mWidgetType:I

    :cond_0
    :goto_0
    const v0, 0x7f0400b4

    invoke-virtual {p0, v0}, Lcom/android/mms/widget/NoticeEditActivity;->setContentView(I)V

    const v0, 0x7f0b0316

    invoke-virtual {p0, v0}, Lcom/android/mms/widget/NoticeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwDndListView;

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "appWidgetId"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mAppWidgetId:I

    new-instance v0, Lcom/android/mms/widget/NoticeDBControl;

    invoke-direct {v0, p0}, Lcom/android/mms/widget/NoticeDBControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "PriorityWidget"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v5, p0, Lcom/android/mms/widget/NoticeEditActivity;->mWidgetType:I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeDBControl;->close()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mActionBar:Landroid/app/ActionBar;

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/mms/widget/NoticeEditActivity;->processDoneButton(Landroid/view/View;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/mms/widget/NoticeEditActivity;->processCancelButton(Landroid/view/View;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "mmsnoticewidget/NoticeListEditActivity"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0c0180

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuCancel:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0c001e

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02029b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    const v1, 0x7f02029c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "mmsnoticewidget/NoticeListEditActivity"

    const-string v1, "onResume "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mWidgetType:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/widget/NoticeEditActivity;->makeScreen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mWidgetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/widget/NoticeEditActivity;->makeScreenForPriority()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "mmsnoticewidget/NoticeListEditActivity"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processCancelButton(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->finish()V

    return-void
.end method

.method public processDoneButton(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mWidgetType:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/widget/NoticeEditActivity;->updateNoticeList()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->finish()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mWidgetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/widget/NoticeEditActivity;->updatePriorityList()V

    goto :goto_0
.end method
