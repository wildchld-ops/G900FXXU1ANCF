.class public Lcom/samsung/contacts/detail/ContactHistoryListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ContactHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;,
        Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderView;,
        Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;,
        Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;,
        Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;
    }
.end annotation


# instance fields
.field private mCheckBoxList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwCheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

.field private mHeaderLayout:I

.field private mHeaderViewsCount:I

.field private mHistoryViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDeleteMode:Z

.field private mLayout:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSdfNow:Ljava/text/SimpleDateFormat;

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v3, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    iput-boolean v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    iput v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHeaderViewsCount:I

    new-instance v1, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;)V

    iput-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHistoryViewList:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mCheckBoxList:Landroid/util/SparseArray;

    iput p2, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mLayout:I

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300db

    iput v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHeaderLayout:I

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/contacts/util/DateUtils;->getSettingDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private IsExistedSmsMms(JI)Z
    .locals 10

    const/16 v6, 0x12c

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eq p3, v6, :cond_0

    if-eq p3, v4, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    if-ne p3, v6, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "thread_id"

    aput-object v4, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_2
    :goto_1
    if-nez v7, :cond_4

    move v0, v8

    goto :goto_0

    :cond_3
    if-ne p3, v4, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "thread_id"

    aput-object v4, v3, v8

    const-string v4, "m_type"

    aput-object v4, v3, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0
.end method

.method static synthetic access$1200(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->verifySmsMms(ZJ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->verifyEmail(J)V

    return-void
.end method

.method private calcSection(JLandroid/database/Cursor;)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHistoryViewList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderView;

    invoke-direct {v2, p0, v0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderView;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHeaderViewsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHeaderViewsCount:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHistoryViewList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const-wide/32 v1, 0x5265c00

    add-long/2addr v1, p1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private calcSection(Landroid/database/Cursor;)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHistoryViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHeaderViewsCount:I

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, ""

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->calcSection(JLandroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findThreadId(Landroid/content/Context;ZJ)J
    .locals 11

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_0

    move-wide v2, v8

    :goto_0
    return-wide v2

    :cond_0
    if-eqz p2, :cond_1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :goto_1
    if-nez v7, :cond_2

    move-wide v2, v8

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v4

    const-string v0, "m_type"

    aput-object v0, v3, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-wide v2, v8

    goto :goto_0
.end method

.method private getFormatDuration(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    const-wide/16 v7, 0xe10

    div-long v1, p1, v7

    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v1

    sub-long/2addr p1, v7

    :cond_0
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_1

    const-wide/16 v7, 0x3c

    div-long v3, p1, v7

    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v3

    sub-long/2addr p1, v7

    :cond_1
    move-wide v5, p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v7, 0xa

    cmp-long v7, v1, v7

    if-gez v7, :cond_2

    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v7, 0xa

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getHistoryHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->newHeaderView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mCheckBoxList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mCheckBoxList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;

    invoke-direct {p0, p1, v1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setHeaderView(ILcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;)V

    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method private getHistoryItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHistoryViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;

    #calls: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;->getPosition()I
    invoke-static {v3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;->access$000(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could\'t move to cursor position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v1, p3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mCheckBoxList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mCheckBoxList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$100(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->listItemView:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$200(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p1, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v3, v1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-object v2

    :cond_2
    move-object v2, p2

    goto :goto_0
.end method

.method private newHeaderView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHeaderLayout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;

    invoke-direct {v0, p0, v5}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;)V

    const v2, 0x7f08016f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;->headerViewTitle:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;->access$1102(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :sswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e02e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :sswitch_2
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
        0x190 -> :sswitch_0
    .end sparse-switch
.end method

.method private setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;ZZ)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    sparse-switch p1, :sswitch_data_0

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :sswitch_0
    if-eqz p5, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e02e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :sswitch_1
    if-eqz p6, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :sswitch_2
    if-eqz p6, :cond_6

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
        0x190 -> :sswitch_0
    .end sparse-switch
.end method

.method private setDurationText(Ljava/lang/String;ILcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableCallDuration"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v1, 0x64

    if-eq p2, v1, :cond_0

    const/16 v1, 0x1f4

    if-eq p2, v1, :cond_0

    const/16 v1, 0x320

    if-eq p2, v1, :cond_0

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_1

    :cond_0
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tDuration:Landroid/widget/TextView;
    invoke-static {p3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$600(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tDuration:Landroid/widget/TextView;
    invoke-static {p3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$600(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getFormatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tDuration:Landroid/widget/TextView;
    invoke-static {p3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$600(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setHeaderView(ILcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;)V
    .locals 2

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;->headerViewTitle:Landroid/widget/TextView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;->access$1100(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHistoryViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderView;

    #calls: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderView;->getTitle()Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderView;->access$1600(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setLogTypeText(ILcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iType:Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$900(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020187

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_1
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iType:Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$900(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020188

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_2
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iType:Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$900(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020186

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_3
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iType:Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$900(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020181

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_4
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iType:Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$900(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_5
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iType:Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$900(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_6
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iType:Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$900(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_7
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iType:Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$900(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020189

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_5
        0x12c -> :sswitch_4
        0x190 -> :sswitch_6
        0x1f4 -> :sswitch_2
        0x320 -> :sswitch_3
        0x384 -> :sswitch_7
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method private setNumber(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0220

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object p2, p3

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    const-string v0, "-2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object p2, p3

    goto :goto_0

    :cond_3
    const-string v0, "-3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object p2, p3

    goto :goto_0
.end method

.method private setNumberText(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)V
    .locals 2

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tNumber:Landroid/widget/TextView;
    invoke-static {p4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$700(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setNumber(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSendTypeIcon(ILcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iSendType:Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$400(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :pswitch_0
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iSendType:Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$400(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02016c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iSendType:Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$400(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iSendType:Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$400(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iSendType:Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$400(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02016d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private setTimeText(Ljava/lang/String;Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)V
    .locals 7

    if-eqz p1, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x101

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tTime:Landroid/widget/TextView;
    invoke-static {p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$500(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private verifyEmail(J)V
    .locals 12

    const/4 v5, 0x1

    const/4 v11, 0x0

    const-string v0, "content://com.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v9, "_id"

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/String;

    aput-object v9, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v6, "com.android.email.MessageView_message_id"

    const-string v7, "com.android.email.LogProvider"

    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.email"

    const-string v2, "com.android.email.activity.Welcome"

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "vnd.android.cursor.item/email"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v10, v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v10, v7, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e02f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private verifySmsMms(ZJ)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->findThreadId(Landroid/content/Context;ZJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "thread_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "select_id"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v3, "message_type"

    const-string v4, "sms"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    const-string v3, "select_id"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "message_type"

    const-string v4, "mms"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e02f0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 26

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/4 v4, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v4, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->listItemView:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$200(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->unregisterForContextMenu(Landroid/view/View;)V

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v8}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$100(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->listItemView:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$200(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    const/4 v9, 0x0

    aget v23, v4, v9

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v8}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$100(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mSelectedList:Ljava/util/ArrayList;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    :goto_0
    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->listItemView:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$200(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/LinearLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v8}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setSendTypeIcon(ILcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v8}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setTimeText(Ljava/lang/String;Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5, v8}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setDurationText(Ljava/lang/String;ILcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setLogTypeText(ILcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setNumberText(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v9, "CscFeature_Contact_RemoveLog4DeletedMsg"

    invoke-virtual {v4, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->IsExistedSmsMms(JI)Z

    move-result v10

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;ZZ)V

    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->listItemView:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$200(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->registerForContextMenu(Landroid/view/View;)V

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v8}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$100(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v9, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v4, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v5

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    invoke-direct/range {v11 .. v17}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;ZZ)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)V

    goto :goto_1
.end method

.method getChechBox(I)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mCheckBoxList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHistoryViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHeaderViewsCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHistoryViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHistoryViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;->getViewType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid view type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getHistoryItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getHistoryHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mHistoryViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;

    iget-boolean v0, v0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;->isEnabled:Z

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mLayout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;)V

    const v2, 0x7f080133

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    #setter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iSendType:Landroid/widget/ImageView;
    invoke-static {v0, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$402(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v2, 0x7f080134

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tTime:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$502(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v2, 0x7f080135

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tDuration:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$602(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v2, 0x7f080136

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tNumber:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$702(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v2, 0x7f080137

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$802(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v2, 0x7f080138

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    #setter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iType:Landroid/widget/ImageView;
    invoke-static {v0, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$902(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v2, 0x7f080132

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    #setter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->listItemView:Landroid/widget/LinearLayout;
    invoke-static {v0, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$202(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v2, 0x7f080139

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    #setter for: Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->access$102(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public setDateFormat()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/contacts/util/DateUtils;->getSettingDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->calcSection(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public setFragment(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    return-void
.end method

.method setMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    return-void
.end method

.method setSelectedList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->mSelectedList:Ljava/util/ArrayList;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->calcSection(Landroid/database/Cursor;)V

    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
