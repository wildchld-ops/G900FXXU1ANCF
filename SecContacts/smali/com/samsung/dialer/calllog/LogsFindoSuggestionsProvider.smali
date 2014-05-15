.class public Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "LogsFindoSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;
    }
.end annotation


# static fields
.field private static final FINDO_SEARCH_COLUMNS:[Ljava/lang/String;

.field public static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final AUTOREJECTED_TYPE:I

.field private final INCOMING_TYPE:I

.field private final INTERNET_CALL:I

.field private final MISSED_TYPE:I

.field private final MMS:I

.field private final OUTGOING_TYPE:I

.field private final REJECTED_TYPE:I

.field private final SMS:I

.field private final VIDEO_CALL:I

.field private final VOICEMAIL:I

.field private final VOICEMAIL_TYPE:I

.field private final VOICE_CALL:I

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mEndTime:J

.field private mLimit:I

.field private mLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private querystring:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_text_3"

    aput-object v1, v0, v6

    const-string v1, "suggest_text_4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_extra_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->FINDO_SEARCH_COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_reverse"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "label"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->querystring:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->SMS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->MMS:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->VOICEMAIL:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->VIDEO_CALL:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->VOICE_CALL:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->INTERNET_CALL:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->OUTGOING_TYPE:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->INCOMING_TYPE:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->MISSED_TYPE:I

    const/16 v0, 0x200

    iput v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->REJECTED_TYPE:I

    const/16 v0, 0x400

    iput v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->AUTOREJECTED_TYPE:I

    const/16 v0, 0x800

    iput v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->VOICEMAIL_TYPE:I

    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->uri:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mLogList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mPhotos:Ljava/util/HashMap;

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mLimit:I

    return-void
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    const-string v1, "com.samsung.dialer.calllog.LogsFindoSuggestionsProvider"

    const-string v2, "search_suggest_regex_query"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private checkCallType(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x100

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x200

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x400

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x800

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xc0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkContains(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v2, p3, v0

    const-string v3, "AND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private checkGroup(Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;)Z
    .locals 13

    move-object v7, p1

    move-object v0, p2

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-virtual {v7}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getE164NumberText()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getE164NumberText()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getE164NumberText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getE164NumberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x1

    :cond_0
    if-nez v5, :cond_1

    invoke-virtual {v7}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getNumberText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getNumberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getTimeText()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/samsung/dialer/util/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getTimeText()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/samsung/dialer/util/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v7}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getLogType()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->checkLogGroup(I)I

    move-result v9

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getLogType()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->checkLogGroup(I)I

    move-result v10

    if-ne v9, v10, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v7}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getCNAPName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getCNAPName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v7}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getCallType()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->checkCallType(I)I

    move-result v9

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getCallType()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->checkCallType(I)I

    move-result v10

    if-ne v9, v10, :cond_4

    const/4 v2, 0x1

    :goto_1
    if-nez v5, :cond_5

    const/4 v8, 0x0

    :cond_2
    :goto_2
    return v8

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    const/4 v8, 0x0

    goto :goto_2

    :cond_7
    if-nez v4, :cond_8

    const/4 v8, 0x0

    goto :goto_2

    :cond_8
    if-nez v6, :cond_9

    const/4 v8, 0x0

    goto :goto_2

    :cond_9
    if-nez v2, :cond_2

    const/4 v8, 0x0

    goto :goto_2
.end method

.method private checkLogGroup(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x38

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_0
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_2
        0x1f4 -> :sswitch_0
        0x1fe -> :sswitch_0
        0x320 -> :sswitch_0
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p3, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mCurrentCountryIso:Ljava/lang/String;

    :cond_2
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getFindoSuggestions([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mPhotos:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->makeList()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mLogList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->setGrouping(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->FINDO_SEARCH_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getNameText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getNumberText()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisablePhoneNumberFormatting()Z

    move-result v20

    if-nez v20, :cond_0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getCountryISO()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getTimeText()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v8, v9}, Lcom/samsung/dialer/util/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x101

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v8, v9, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    #getter for: Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mCallType:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->access$000(Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    #getter for: Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mLogType:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->access$100(Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;)I

    move-result v15

    const-string v12, "0"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableLogsTimeBase()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-static {}, Lcom/samsung/dialer/util/CallLogUtil;->isNetworkRoaming()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/dialer/util/CallLogUtil;->getTimeDisplayScheme(Landroid/content/Context;)I

    move-result v20

    if-nez v20, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x101

    const-string v22, "Asia/Shanghai"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v8, v9, v1, v2}, Lcom/samsung/dialer/util/CallLogUtil;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getImage1()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    const v20, 0x7f02011d

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getId()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/android/contacts/util/ContactPhotoUtils;->getDefaultPhotoBackgroundColor(J)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    #getter for: Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mLookupURI:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->access$200(Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_2

    const/4 v14, 0x0

    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0e0315

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    const-string v21, "phone"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getNumberText()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0e0221

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_3
    const-string v20, "-1"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0220

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    :cond_4
    :goto_3
    const-string v20, "LogsFindoSuggestionsProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getSuggestions:name : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "LogsFindoSuggestionsProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getSuggestions:number : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "LogsFindoSuggestionsProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getSuggestions:icon1 : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "LogsFindoSuggestionsProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getSuggestions:icon2 : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "LogsFindoSuggestionsProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getSuggestions:callType : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "LogsFindoSuggestionsProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getSuggestions:logType : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "LogsFindoSuggestionsProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getSuggestions:getType(callType)|getType(logType) : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getType(I)I

    move-result v22

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getType(I)I

    move-result v23

    or-int v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v20, 0x0

    aput-object v13, v21, v20

    const/16 v20, 0x1

    aput-object v16, v21, v20

    const/16 v20, 0x2

    aput-object v17, v21, v20

    const/16 v20, 0x3

    aput-object v7, v21, v20

    const/16 v20, 0x4

    aput-object v18, v21, v20

    const/16 v20, 0x5

    aput-object v11, v21, v20

    const/16 v20, 0x6

    aput-object v12, v21, v20

    const/16 v20, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getType(I)I

    move-result v22

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getType(I)I

    move-result v23

    or-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v21, v20

    const/16 v20, 0x8

    aput-object v13, v21, v20

    const/16 v22, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getNumberText()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getImage1()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    :cond_6
    move-object/from16 v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0e02fb

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    :cond_7
    const-string v20, "-2"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0222

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    goto/16 :goto_3

    :cond_8
    const-string v20, "-3"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0223

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    goto/16 :goto_3

    :cond_9
    return-object v6
.end method

.method private getPhotoUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LogsFindoSuggestionsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhotoUri contains number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x0

    const-string v0, "photo_uri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    :cond_1
    if-eqz v8, :cond_4

    iget-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mPhotos:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v0, "LogsFindoSuggestionsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mPhotos:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    move-object v0, v3

    goto :goto_0
.end method

.method private getType(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x20

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x40

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x80

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x100

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x200

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x400

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x64 -> :sswitch_4
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_0
        0x1f4 -> :sswitch_3
        0x320 -> :sswitch_5
        0x384 -> :sswitch_2
        0x3b6 -> :sswitch_2
        0x3e8 -> :sswitch_4
    .end sparse-switch
.end method

.method private makeList()Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;",
            ">;"
        }
    .end annotation

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mEndTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mEndTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    if-nez v21, :cond_1

    :goto_0
    return-object v22

    :cond_1
    const-string v1, "LogsFindoSuggestionsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor getCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v5, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    const-string v1, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v1, "lookup_uri"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "logtype"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v1, "type"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v1, "name"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v1, "number"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v1, "e164_number"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v1, "date"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v1, "cnap_name"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v1, "countryiso"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v1, "lookup_uri"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v20}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;-><init>(Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private setGrouping(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-direct {p0, v5, v3}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->checkGroup(Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual {v5}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getGroupCount()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->setGroupCount(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual {v9}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getNumberText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual {v9}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->getNameText()Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_2

    if-eqz p2, :cond_5

    invoke-direct {p0, v8, v7, p2}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->checkContains(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_2
    iget v9, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mLimit:I

    if-lt v0, v9, :cond_4

    :cond_3
    return-object v4

    :cond_4
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-direct {p0, v8}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getPhotoUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->setImage1(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const-wide/16 v6, 0x0

    const-string v3, "LogsFindoSuggestionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query called with uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "LogsFindoSuggestionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->querystring:Ljava/lang/String;

    :cond_0
    const-string v3, "LogsFindoSuggestionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->querystring:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    const-string v3, "LogsFindoSuggestionsProvider"

    const-string v4, "Search regex suggest called"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "limit"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogsFindoSuggestionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "limit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mLimit:I

    :cond_1
    const-string v3, "stime"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mStartTime:J

    :goto_0
    const-string v3, "etime"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mEndTime:J

    :goto_1
    const-string v3, "LogsFindoSuggestionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mStartTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mEndTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mEndTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/dialer/calllog/QueryParser;

    invoke-direct {v0}, Lcom/samsung/dialer/calllog/QueryParser;-><init>()V

    iget-object v3, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->querystring:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->querystring:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/dialer/calllog/QueryParser;->regexParser(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getFindoSuggestions([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :goto_2
    return-object v3

    :cond_2
    iput-wide v6, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mStartTime:J

    goto :goto_0

    :cond_3
    iput-wide v6, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->mEndTime:J

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;->getFindoSuggestions([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
