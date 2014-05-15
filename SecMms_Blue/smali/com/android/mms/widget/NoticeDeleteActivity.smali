.class public Lcom/android/mms/widget/NoticeDeleteActivity;
.super Landroid/app/Activity;
.source "NoticeDeleteActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;,
        Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final SAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "mmsnoticewidget/NoticeListEditActivity"


# instance fields
.field private final SPEEDDIAL_DEFAULT_IMAGES:[I

.field private mActionBar:Landroid/app/ActionBar;

.field private mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mAppWidgetId:I

.field private mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDbControl:Lcom/android/mms/widget/NoticeDBControl;

.field private mIsLandscape:Z

.field private mListView:Landroid/widget/ListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDelete:Landroid/view/MenuItem;

.field private mNoticeConversationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoticeDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

.field private mNoticeWidgetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTextTemplateListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSeletAllLayout:Landroid/widget/LinearLayout;

.field private mWidgetType:I

.field private selectAllUserUnchecked:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mCheckedList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeDeleteList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mWidgetType:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->selectAllUserUnchecked:Z

    new-instance v0, Lcom/android/mms/widget/NoticeDeleteActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/widget/NoticeDeleteActivity$6;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mOnTextTemplateListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x60t 0x2t 0x2t 0x7ft
        0x61t 0x2t 0x2t 0x7ft
        0x62t 0x2t 0x2t 0x7ft
        0x63t 0x2t 0x2t 0x7ft
        0x64t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mCheckedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeDeleteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeConversationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/widget/NoticeDeleteActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeConversationList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/widget/NoticeDeleteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->updateNoticeList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/widget/NoticeDeleteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->updatePriorityNoticeList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/widget/NoticeDeleteActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->selectAllUserUnchecked:Z

    return p1
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

    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0138

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mContext:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mContext:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c015f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNoticeList()Landroid/database/Cursor;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeDBControl;->idQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getPriorityList()Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

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
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getNoticeList()Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_2

    :cond_0
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v18, "message_id"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v18, "contact_id"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v18, "photo"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    const-string v18, "display_name"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v18, "display_name_primary"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v18, "display_number"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/mms/widget/NoticeDeleteActivity;->getSpeedDialDefaultImage(J)I

    move-result v9

    const/4 v11, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v14, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/mms/data/Contact;->getAvatarBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeDeleteActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v11

    if-nez v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeDeleteActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v11

    :cond_1
    const-string v7, ""

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "android.contacts.DISPLAY_ORDER"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object v7, v12

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v11, v7}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;I[BLjava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-nez v18, :cond_0

    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    new-instance v18, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;Landroid/app/Activity;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setCacheColorHint(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mOnTextTemplateListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCheckedSize()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mSeletAllLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/mms/widget/NoticeDeleteActivity$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/widget/NoticeDeleteActivity$5;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_7
    move-object v7, v13

    goto/16 :goto_0
.end method

.method private makeScreenForPriority()V
    .locals 10

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getPriorityList()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v7, "mmsnoticewidget/NoticeListEditActivity"

    const-string v8, "cursor is null so just return"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const-string v7, "mmsnoticewidget/NoticeListEditActivity"

    const-string v8, "clear mNoticeWidgetList"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
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

    if-eqz v7, :cond_2

    const-string v7, "recipient_ids"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/mms/widget/NoticeDeleteActivity;->updateAvatar(Landroid/database/Cursor;Lcom/android/mms/data/ContactList;)[B

    move-result-object v3

    const-string v0, ""

    const-string v7, "type"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->isCmas(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;

    invoke-direct {v8, p0, v2, v3, v0}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;I[BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_4
    iget-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    if-nez v7, :cond_5

    new-instance v7, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    iget-object v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    invoke-direct {v7, p0, p0, v8}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    :cond_5
    const-string v7, "mmsnoticewidget/NoticeListEditActivity"

    const-string v8, "refreshed Widget list"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mOnTextTemplateListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_6
    iget-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v7}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCheckedSize()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v8}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCount()I

    move-result v8

    if-eq v7, v8, :cond_7

    iget-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v7, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_7
    iget-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v7, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget-object v7, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mSeletAllLayout:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/android/mms/widget/NoticeDeleteActivity$7;

    invoke-direct {v8, p0}, Lcom/android/mms/widget/NoticeDeleteActivity$7;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    invoke-direct {p0, v1, v6}, Lcom/android/mms/widget/NoticeDeleteActivity;->formatMessage(Landroid/database/Cursor;Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v7

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_9
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

    iget-object v5, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    int-to-long v5, v2

    invoke-virtual {p0, v5, v6}, Lcom/android/mms/widget/NoticeDeleteActivity;->getSpeedDialDefaultImage(J)I

    move-result v1

    invoke-virtual {p2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    iget-object v5, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/android/mms/data/Contact;->getAvatarBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeDeleteActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeDeleteActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CBmessages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020259

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeDeleteActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    const-string v5, "Pushmessage"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020265

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeDeleteActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v5, "type"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/widget/NoticeDeleteActivity;->isCmas(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02025b

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeDeleteActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02025c

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeDeleteActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02025a

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeDeleteActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeDeleteActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/widget/NoticeDeleteActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    goto/16 :goto_0
.end method

.method private updateNoticeList()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x1

    iget-object v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v8}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getNoticeList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v8}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getDeleteList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    iget v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAppWidgetId:I

    if-eq v8, v10, :cond_0

    const-string v8, "widget_id"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAppWidgetId:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\' AND "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;

    const-string v8, "_id"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->getId()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " OR "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v8, " OR "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v8, v5}, Lcom/android/mms/widget/NoticeDBControl;->delete(Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v4, :cond_4

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "position"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAppWidgetId:I

    if-eq v8, v10, :cond_3

    const-string v8, "widget_id"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAppWidgetId:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\' AND "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v8, "_id"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;

    invoke-virtual {v8}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->getId()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v8, v7, v5}, Lcom/android/mms/widget/NoticeDBControl;->update(Landroid/content/ContentValues;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAppWidgetId:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {p0, v8, v9}, Lcom/android/mms/widget/NoticeSettingManager;->setThreadCount(Landroid/content/Context;II)V

    return-void
.end method

.method private updatePriorityNoticeList()V
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

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0b0041

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCheckedSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v2}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->addCheckedItem(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->selectAllUserUnchecked:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->clearCheckedList()V

    :cond_3
    iput-boolean v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->selectAllUserUnchecked:Z

    :cond_4
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->notifyDataSetChanged()V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0b0315

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->addCheckedItem(I)V

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCheckedSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v2}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->removeCheckedItem(I)V

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v3, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->selectAllUserUnchecked:Z

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->invalidateOptionsMenu()V

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

    const v0, 0x7f0400b1

    invoke-virtual {p0, v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f0b0316

    invoke-virtual {p0, v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mSeletAllLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mSeletAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0b0041

    invoke-virtual {p0, v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "appWidgetId"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAppWidgetId:I

    new-instance v0, Lcom/android/mms/widget/NoticeDBControl;

    invoke-direct {v0, p0}, Lcom/android/mms/widget/NoticeDBControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoticeWidget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mWidgetType:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PriorityWidget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v5, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mWidgetType:I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeDBControl;->close()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mWidgetType:I

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/mms/widget/NoticeDeleteActivity;->processDoneButton(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mWidgetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/mms/widget/NoticeDeleteActivity;->processPriorityDoneButton(Landroid/view/View;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/android/mms/widget/NoticeDeleteActivity;->processCancelButton(Landroid/view/View;)V

    goto :goto_0

    nop

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

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0c007a

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02029b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    const v1, 0x7f02029c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCheckedSize()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "mmsnoticewidget/NoticeListEditActivity"

    const-string v1, "onResume "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mWidgetType:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->makeScreen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mWidgetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->makeScreenForPriority()V

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

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->finish()V

    return-void
.end method

.method public processDoneButton(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0386

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/widget/NoticeDeleteActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/widget/NoticeDeleteActivity$1;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/mms/widget/NoticeDeleteActivity$2;

    invoke-direct {v2, p0}, Lcom/android/mms/widget/NoticeDeleteActivity$2;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v1, 0x7f0c0385

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public processPriorityDoneButton(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0386

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/widget/NoticeDeleteActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/widget/NoticeDeleteActivity$3;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/mms/widget/NoticeDeleteActivity$4;

    invoke-direct {v2, p0}, Lcom/android/mms/widget/NoticeDeleteActivity$4;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v1, 0x7f0c0385

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
