.class public Lsstream/lib/constants/StreamProviderConstants;
.super Ljava/lang/Object;
.source "StreamProviderConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsstream/lib/constants/StreamProviderConstants$StoryColumns;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "app_package_name"

.field public static final AUTHORITY:Ljava/lang/String; = "sstream.app.provider.StoryProvider"

.field public static final BROADCAST_EXTRA_STREAM_ID:Ljava/lang/String; = "stream_id"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELETE:Ljava/lang/String; = "delete"

.field public static final DELETE_BULK:Ljava/lang/String; = "delete_bulk"

.field public static final INDEX_AUTHOR_IMAGE_HEIGHT:I = 0xd

.field public static final INDEX_AUTHOR_IMAGE_URL:I = 0xc

.field public static final INDEX_AUTHOR_IMAGE_WIDTH:I = 0xe

.field public static final INDEX_AUTHOR_NAME:I = 0xb

.field public static final INDEX_BODY:I = 0x6

.field public static final INDEX_CATEGORY:I = 0x3

.field public static final INDEX_CONFIG_ID:I = 0x2

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_IMAGE_HEIGHT:I = 0x9

.field public static final INDEX_IMAGE_HINTS:I = 0x8

.field public static final INDEX_IMAGE_URL:I = 0x7

.field public static final INDEX_IMAGE_WIDTH:I = 0xa

.field public static final INDEX_MORE:I = 0x10

.field public static final INDEX_SOURCE:I = 0x11

.field public static final INDEX_STREAM_ID:I = 0x1

.field public static final INDEX_TIME_STAMP:I = 0xf

.field public static final INDEX_TITLE:I = 0x5

.field public static final INDEX_TYPE:I = 0x4

.field public static final INSERT:Ljava/lang/String; = "insert"

.field public static final INSERT_BULK:Ljava/lang/String; = "insert_bulk"

.field public static final KEY_MORE:Ljava/lang/String; = "more"

.field public static final KEY_SOURCE:Ljava/lang/String; = "source"

.field public static final LIBRARY_VERSION:Ljava/lang/String; = "library_version"

.field public static final MORE:I = -0x1

.field public static final SCHEME:Ljava/lang/String; = "content"

.field public static final SSTREAM_SCHEME:Ljava/lang/String; = "sstream"

.field public static final STORY_DELETE_BULK_URI:Landroid/net/Uri; = null

.field public static final STORY_DELETE_URI:Landroid/net/Uri; = null

.field public static final STORY_ITEM_AUTHORITY:Ljava/lang/String; = "storyitem"

.field public static final STORY_PATH:Ljava/lang/String; = "story"

.field public static final STORY_PROJECTION:[Ljava/lang/String; = null

.field public static final STORY_URI:Landroid/net/Uri; = null

.field public static final UPDATE:Ljava/lang/String; = "update"

.field public static final VALUE_TRUE:Ljava/lang/String; = "true"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://sstream.app.provider.StoryProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsstream/lib/constants/StreamProviderConstants;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsstream/lib/constants/StreamProviderConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "story"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsstream/lib/constants/StreamProviderConstants;->STORY_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsstream/lib/constants/StreamProviderConstants;->STORY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsstream/lib/constants/StreamProviderConstants;->STORY_DELETE_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsstream/lib/constants/StreamProviderConstants;->STORY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delete_bulk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsstream/lib/constants/StreamProviderConstants;->STORY_DELETE_BULK_URI:Landroid/net/Uri;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "stream_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "application_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "category"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "image_hints"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "image_height"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "image_width"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "author_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "author_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "author_image_height"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "author_image_width"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "time_stamp"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "more"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "source"

    aput-object v2, v0, v1

    sput-object v0, Lsstream/lib/constants/StreamProviderConstants;->STORY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
