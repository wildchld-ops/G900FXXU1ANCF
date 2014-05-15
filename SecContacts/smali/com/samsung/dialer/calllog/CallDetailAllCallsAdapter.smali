.class public Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "CallDetailAllCallsAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;,
        Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$ContactInfoRequest;,
        Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$NumberWithCountryIso;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static final buildcarrier:Ljava/lang/String;

.field public static mResumeFromDetail:Z

.field private static prev_pos:I

.field private static selectedPos:I

.field public static simNameCDMA:Ljava/lang/String;

.field public static simNameGSM:Ljava/lang/String;


# instance fields
.field private final mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

.field private mCallerIdThread:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;

.field private mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/util/ExpirableCache",
            "<",
            "Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$NumberWithCountryIso;",
            "Lcom/android/dialer/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoading:Z

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->buildcarrier:Ljava/lang/String;

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->DBG:Z

    const-string v0, "Slot 1"

    sput-object v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->simNameCDMA:Ljava/lang/String;

    const-string v0, "Slot 2"

    sput-object v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->simNameGSM:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mResumeFromDetail:Z

    sput v1, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->selectedPos:I

    sput v1, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->prev_pos:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mLoading:Z

    iput-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mRequestProcessingDisabled:Z

    iput-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->strSeparatorArray:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$1;-><init>(Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;)V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mContext:Landroid/content/Context;

    const/16 v0, 0x64

    invoke-static {v0}, Lcom/android/dialer/util/ExpirableCache;->create(I)Lcom/android/dialer/util/ExpirableCache;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mRequests:Ljava/util/LinkedList;

    new-instance v0, Lcom/android/dialer/calllog/CallLogGroupBuilder;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/calllog/CallLogGroupBuilder;-><init>(Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    return-void
.end method

.method private adjustListItemLayoutByFontSizeDetail(Landroid/view/View;)V
    .locals 7

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "font_size"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const v4, 0x7f080084

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const-string v4, "CallLogAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustListItemLayoutByFontSizeDetail fontSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mlp.topMargin : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid font size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f10007c

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    :pswitch_2
    return-void

    :pswitch_3
    const/4 v4, 0x0

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f10007d

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private bindViewDetail(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 16

    const/4 v13, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v13, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v13, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const v13, 0x7f08007c

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v13, 0x7f080084

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v13, 0x7f080085

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v13, 0x7f08007f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v13, 0x7f080082

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {v3}, Lcom/android/dialer/calllog/CallTypeIconsView;->clear()V

    invoke-virtual {v3, v2}, Lcom/android/dialer/calllog/CallTypeIconsView;->add(I)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableLogsTimeBase()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {}, Lcom/samsung/dialer/util/CallLogUtil;->isNetworkRoaming()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/dialer/util/CallLogUtil;->getTimeDisplayScheme(Landroid/content/Context;)I

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mContext:Landroid/content/Context;

    const/16 v14, 0x101

    const-string v15, "Asia/Shanghai"

    invoke-static {v13, v4, v5, v14, v15}, Lcom/samsung/dialer/util/CallLogUtil;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    invoke-virtual {v13}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->getStrSeparatorArray()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->strSeparatorArray:[Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->strSeparatorArray:[Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    aget-object v12, v13, v14

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_2
    const/16 v13, 0x12c

    if-eq v10, v13, :cond_1

    const/16 v13, 0xc8

    if-ne v10, v13, :cond_5

    :cond_1
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableRemoveCallDuration()Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->adjustListItemLayoutByFontSizeDetail(Landroid/view/View;)V

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setClickable(Z)V

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setFocusable(Z)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mContext:Landroid/content/Context;

    const/16 v14, 0x101

    invoke-static {v13, v4, v5, v14}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :sswitch_0
    const v13, 0x7f020182

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :sswitch_1
    const v13, 0x7f020184

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :sswitch_2
    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    const v13, 0x7f02015c

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-nez v13, :cond_8

    const/4 v13, 0x3

    if-eq v2, v13, :cond_6

    const/16 v13, 0xe

    if-ne v2, v13, :cond_7

    :cond_6
    const v13, 0x7f0e031a

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_7
    const v13, 0x7f0e0319

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x44c -> :sswitch_2
    .end sparse-switch
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_4

    const-wide/16 v7, 0x3c

    rem-long v4, p1, v7

    const-wide/16 v7, 0x3c

    div-long v2, p1, v7

    const-wide/16 v7, 0x3c

    cmp-long v7, v2, v7

    if-ltz v7, :cond_0

    const-wide/16 v7, 0x3c

    div-long v0, v2, v7

    const-wide/16 v7, 0x3c

    rem-long/2addr v2, v7

    :cond_0
    :goto_0
    const-wide/16 v7, 0xa

    cmp-long v7, v0, v7

    if-gez v7, :cond_1

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_5

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_4
    move-wide v4, p1

    goto :goto_0

    :cond_5
    const-string v7, "00:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 2

    const-string v0, "CallLogAdapter"

    const-string v1, "========= addGroup ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "CallLogAdapter"

    const-string v1, "========= addGroups ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;Z)V

    return-void
.end method

.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "CallLogAdapter"

    const-string v1, "========= bindChildView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->bindViewDetail(Landroid/view/View;Landroid/database/Cursor;)V

    return-void
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 2

    const-string v0, "CallLogAdapter"

    const-string v1, "========= bindGroupView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->bindViewDetail(Landroid/view/View;Landroid/database/Cursor;)V

    return-void
.end method

.method public bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "CallLogAdapter"

    const-string v1, "========= bindStandAloneView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->bindViewDetail(Landroid/view/View;Landroid/database/Cursor;)V

    return-void
.end method

.method disableRequestProcessingForTest()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mRequestProcessingDisabled:Z

    return-void
.end method

.method enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Z)V
    .locals 3

    new-instance v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$ContactInfoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V

    iget-object v2, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->startRequestProcessing()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 2

    new-instance v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/common/widget/GroupingListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v1, "CallLogAdapter"

    const-string v2, "========= newChildView ========="

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v1, "CallLogAdapter"

    const-string v2, "========= newGroupView ========="

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string v2, "CallLogAdapter"

    const-string v3, "========= newStandAloneView ========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f03001a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected onContentChanged()V
    .locals 2

    const-string v0, "CallLogAdapter"

    const-string v1, "onContentChanged is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized startRequestProcessing()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mRequestProcessingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;-><init>(Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;)V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;->setPriority(I)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRequestProcessing()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;->stopProcessing()V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
