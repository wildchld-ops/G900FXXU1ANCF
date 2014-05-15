.class public Lsstream/lib/covers/CoverLockManager;
.super Ljava/lang/Object;
.source "CoverLockManager.java"


# static fields
.field private static final EMPTY_STORY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsstream/lib/objs/StoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Lsstream/lib/covers/CoverLockManager;

.field private static mContext:Landroid/content/Context;

.field private static mIsStreamCompatible:Z

.field private static mMessenger:Lsstream/lib/covers/MessengerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsstream/lib/covers/CoverLockManager;->EMPTY_STORY_LIST:Ljava/util/List;

    new-instance v0, Lsstream/lib/covers/CoverLockManager;

    invoke-direct {v0}, Lsstream/lib/covers/CoverLockManager;-><init>()V

    sput-object v0, Lsstream/lib/covers/CoverLockManager;->INSTANCE:Lsstream/lib/covers/CoverLockManager;

    const/4 v0, 0x0

    sput-boolean v0, Lsstream/lib/covers/CoverLockManager;->mIsStreamCompatible:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lsstream/lib/covers/CoverLockManager;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lsstream/lib/covers/CoverLockManager;->mContext:Landroid/content/Context;

    sget-object v0, Lsstream/lib/covers/CoverLockManager;->mMessenger:Lsstream/lib/covers/MessengerProvider;

    if-eqz v0, :cond_0

    sget-object v0, Lsstream/lib/covers/CoverLockManager;->INSTANCE:Lsstream/lib/covers/CoverLockManager;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lsstream/lib/covers/MessengerProvider;

    sget-object v1, Lsstream/lib/covers/CoverLockManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsstream/lib/covers/MessengerProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsstream/lib/covers/CoverLockManager;->mMessenger:Lsstream/lib/covers/MessengerProvider;

    sget-object v0, Lsstream/lib/covers/CoverLockManager;->INSTANCE:Lsstream/lib/covers/CoverLockManager;

    goto :goto_0
.end method

.method private isStringEmptyOrNull(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private queryStories(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lsstream/lib/objs/StoryItem;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_5

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lsstream/lib/constants/StreamProviderConstants;->STORY_URI:Landroid/net/Uri;

    sget-object v6, Lsstream/lib/constants/StreamProviderConstants;->STORY_PROJECTION:[Ljava/lang/String;

    const-string v7, "stream_id IN(?)"

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v8, v10

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v29, "time_stamp DESC LIMIT "

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_4

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const/4 v10, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/4 v10, 0x5

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x6

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v10, 0x8

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v10, 0x9

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v10, 0xa

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v10, 0xb

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v10, 0xc

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v10, 0xd

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v10, 0xe

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v10, 0x10

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v10, 0x11

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lsstream/lib/covers/CoverLockManager;->isStringEmptyOrNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lsstream/lib/covers/CoverLockManager;->isStringEmptyOrNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v17, Lsstream/lib/objs/Image;

    const/4 v10, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v10}, Lsstream/lib/objs/Image;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    :cond_1
    new-instance v11, Lsstream/lib/objs/Author;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v11, v0, v1}, Lsstream/lib/objs/Author;-><init>(Ljava/lang/String;Lsstream/lib/objs/Image;)V

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lsstream/lib/covers/CoverLockManager;->isStringEmptyOrNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v12, Lsstream/lib/objs/Image;

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v12, v0, v1, v2, v3}, Lsstream/lib/objs/Image;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    :cond_3
    new-instance v10, Ljava/sql/Timestamp;

    const/16 v29, 0xf

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v0, v29

    invoke-direct {v10, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v10}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v13

    new-instance v4, Lsstream/lib/objs/StoryItem;

    invoke-static/range {v28 .. v28}, Lsstream/lib/objs/StoryItem;->getTypeFromString(Ljava/lang/String;)Lsstream/lib/objs/StoryItem$StoryType;

    move-result-object v10

    invoke-direct/range {v4 .. v16}, Lsstream/lib/objs/StoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsstream/lib/objs/StoryItem$StoryType;Lsstream/lib/objs/Author;Lsstream/lib/objs/Image;JILjava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    :cond_4
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v27

    :cond_5
    sget-object v27, Lsstream/lib/covers/CoverLockManager;->EMPTY_STORY_LIST:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getCoverItems(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lsstream/lib/objs/StoryItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const-string v0, "flipboard.temporary.will.change.later.news"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "flipboard.temporary.will.change.later.social"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p3, :cond_1

    const/4 p3, 0x3

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lsstream/lib/covers/CoverLockManager;->queryStories(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Stream Id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSstreamAvailable()Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lsstream/lib/covers/CoverLockManager;->mIsStreamCompatible:Z

    if-nez v1, :cond_0

    sget-object v1, Lsstream/lib/covers/CoverLockManager;->mMessenger:Lsstream/lib/covers/MessengerProvider;

    invoke-virtual {v1}, Lsstream/lib/covers/MessengerProvider;->connectServer()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lsstream/lib/covers/MessengerProvider;->disconnectServer()Z

    sput-boolean v0, Lsstream/lib/covers/CoverLockManager;->mIsStreamCompatible:Z

    sget-boolean v0, Lsstream/lib/covers/CoverLockManager;->mIsStreamCompatible:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateItemsFromSever(Landroid/content/Context;Ljava/lang/String;Lsstream/lib/covers/StreamUpdateListener;)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "flipboard.temporary.will.change.later.news"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "flipboard.temporary.will.change.later.social"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lsstream/lib/covers/CoverLockManager;->mMessenger:Lsstream/lib/covers/MessengerProvider;

    invoke-virtual {v0, p2, p3}, Lsstream/lib/covers/MessengerProvider;->updateStoryItems(Ljava/lang/String;Lsstream/lib/covers/StreamUpdateListener;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Stream Id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
