.class public Lsstream/lib/SStreamContentManager;
.super Ljava/lang/Object;
.source "SStreamContentManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SStreamContentManager"

.field private static isChecked:Z = false

.field private static isEnabled:Z = false

.field private static final pkgName:Ljava/lang/String; = "sstream.app"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lsstream/lib/SStreamContentManager;->isChecked:Z

    const/4 v0, 0x1

    sput-boolean v0, Lsstream/lib/SStreamContentManager;->isEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IsStreamEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Lsstream/lib/SStreamContentManager;->isChecked:Z

    if-nez v2, :cond_0

    sput-boolean v3, Lsstream/lib/SStreamContentManager;->isChecked:Z

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "sstream.app"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    sput-boolean v2, Lsstream/lib/SStreamContentManager;->isEnabled:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v2, Lsstream/lib/SStreamContentManager;->isEnabled:Z

    if-nez v2, :cond_1

    const-string v2, "SStreamContentManager"

    const-string v3, "SStream is disabled  or not installed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v2, Lsstream/lib/SStreamContentManager;->isEnabled:Z

    return v2

    :pswitch_0
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lsstream/lib/SStreamContentManager;->isEnabled:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v4, Lsstream/lib/SStreamContentManager;->isEnabled:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static deleteAllStoryItemsFromStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-static {p0}, Lsstream/lib/SStreamContentManager;->IsStreamEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "streamId is missing"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v1, "application_name=? AND stream_id=?"

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p2, v0, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lsstream/lib/constants/StreamProviderConstants;->STORY_DELETE_BULK_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteAllStoryItemsFromStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p3}, Lsstream/lib/SStreamContentManager;->deleteAllStoryItemsFromStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static deleteAllStoryItemsFromStreamByCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-static {p0}, Lsstream/lib/SStreamContentManager;->IsStreamEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "streamId is missing"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v1, "category=? AND stream_id=?"

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p2, v0, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lsstream/lib/constants/StreamProviderConstants;->STORY_DELETE_BULK_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteStoryItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-static {p0}, Lsstream/lib/SStreamContentManager;->IsStreamEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_2
    const-string v1, "id=? AND application_name=? AND stream_id=?"

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lsstream/lib/constants/StreamProviderConstants;->STORY_DELETE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteStoryItemByCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-static {p0}, Lsstream/lib/SStreamContentManager;->IsStreamEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_2
    const-string v1, "id=? AND category=? AND stream_id=?"

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lsstream/lib/constants/StreamProviderConstants;->STORY_DELETE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getIsMoreFromIntent(Landroid/content/Intent;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sstream"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "storyitem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "more"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "more"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isMore "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getStoryContentValues(Lsstream/lib/objs/StoryItem;)Landroid/content/ContentValues;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsstream/lib/InvalidStoryItemException;
        }
    .end annotation

    invoke-static {p0}, Lsstream/lib/SStreamContentManager;->isStoryItemValid(Lsstream/lib/objs/StoryItem;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getTimestamp()J

    move-result-wide v0

    long-to-double v3, v0

    const-wide/high16 v5, 0x4024

    const-wide/high16 v7, 0x4028

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    :cond_0
    const-string v3, "id"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "stream_id"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getStreamId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "category"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "application_name"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAppPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "title"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "body"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getType()Lsstream/lib/objs/StoryItem$StoryType;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/StoryItem$StoryType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "author_name"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAuthor()Lsstream/lib/objs/Author;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/Author;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "time_stamp"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "more"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getMore()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "source"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getImage()Lsstream/lib/objs/Image;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "image_url"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getImage()Lsstream/lib/objs/Image;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/Image;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "image_hints"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getImage()Lsstream/lib/objs/Image;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/Image;->getHints()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "image_height"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getImage()Lsstream/lib/objs/Image;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/Image;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "image_width"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getImage()Lsstream/lib/objs/Image;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/Image;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAuthor()Lsstream/lib/objs/Author;

    move-result-object v3

    invoke-virtual {v3}, Lsstream/lib/objs/Author;->getImage()Lsstream/lib/objs/Image;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "author_image_url"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAuthor()Lsstream/lib/objs/Author;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/Author;->getImage()Lsstream/lib/objs/Image;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/Image;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "author_image_height"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAuthor()Lsstream/lib/objs/Author;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/Author;->getImage()Lsstream/lib/objs/Image;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/Image;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "author_image_width"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAuthor()Lsstream/lib/objs/Author;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/Author;->getImage()Lsstream/lib/objs/Image;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/Image;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return-object v2
.end method

.method public static getStoryItemIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sstream"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "storyitem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StoryItem "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isStoryItemValid(Lsstream/lib/objs/StoryItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsstream/lib/InvalidStoryItemException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v1, Lsstream/lib/InvalidStoryItemException;

    const-string v2, "StoryItem is null"

    invoke-direct {v1, v2}, Lsstream/lib/InvalidStoryItemException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, ""

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "id"

    :cond_1
    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getStreamId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "streamId"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAppPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "appPackage"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Lsstream/lib/InvalidStoryItemException;

    const-string v2, "StoryItem is incomplete. The following properties are missing: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsstream/lib/InvalidStoryItemException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v1, ", streamId"

    goto :goto_0

    :cond_5
    const-string v1, ", appPackage"

    goto :goto_1

    :cond_6
    return-void
.end method

.method public static sendStoryItem(Landroid/content/Context;Lsstream/lib/objs/StoryItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsstream/lib/InvalidStoryItemException;
        }
    .end annotation

    invoke-static {p0}, Lsstream/lib/SStreamContentManager;->IsStreamEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lsstream/lib/constants/StreamProviderConstants;->STORY_URI:Landroid/net/Uri;

    invoke-static {p1}, Lsstream/lib/SStreamContentManager;->getStoryContentValues(Lsstream/lib/objs/StoryItem;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public static sendStoryItems(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lsstream/lib/objs/StoryItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsstream/lib/InvalidStoryItemException;
        }
    .end annotation

    invoke-static {p0}, Lsstream/lib/SStreamContentManager;->IsStreamEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Landroid/content/ContentValues;

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lsstream/lib/constants/StreamProviderConstants;->STORY_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_0

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsstream/lib/objs/StoryItem;

    invoke-static {v2}, Lsstream/lib/SStreamContentManager;->getStoryContentValues(Lsstream/lib/objs/StoryItem;)Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
