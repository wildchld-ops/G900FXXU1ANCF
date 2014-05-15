.class Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/ChromeBrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BookmarkRow"
.end annotation


# instance fields
.field created:Ljava/lang/Long;

.field date:Ljava/lang/Long;

.field favicon:[B

.field isBookmark:Ljava/lang/Boolean;

.field parentId:J

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;

.field visits:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromContentValues(Landroid/content/ContentValues;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;-><init>()V

    const-string v1, "url"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "url"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->url:Ljava/lang/String;

    :cond_0
    const-string v1, "bookmark"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "bookmark"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->isBookmark:Ljava/lang/Boolean;

    :cond_1
    const-string v1, "created"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "created"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->created:Ljava/lang/Long;

    :cond_2
    const-string v1, "date"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "date"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->date:Ljava/lang/Long;

    :cond_3
    const-string v1, "favicon"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "favicon"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->favicon:[B

    iget-object v1, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->favicon:[B

    if-nez v1, :cond_4

    new-array v1, v2, [B

    iput-object v1, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->favicon:[B

    :cond_4
    const-string v1, "title"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "title"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->title:Ljava/lang/String;

    :cond_5
    const-string v1, "visits"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "visits"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->visits:Ljava/lang/Integer;

    :cond_6
    const-string v1, "parentId"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "parentId"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkRow;->parentId:J

    :cond_7
    return-object v0

    :cond_8
    move v1, v2

    goto :goto_0
.end method
