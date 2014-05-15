.class public interface abstract Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;
.super Ljava/lang/Object;
.source "ReadingListConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReadingList"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final AUTHORITY:Ljava/lang/String; = "readinglist"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATED:Ljava/lang/String; = "created"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final DIR_PATH:Ljava/lang/String; = "dir_path"

.field public static final FAVICON:Ljava/lang/String; = "favicon"

.field public static final IMAGE_STYLE:Ljava/lang/String; = "image_style"

.field public static final IS_DELETED:Ljava/lang/String; = "is_deleted"

.field public static final IS_DIRTY:Ljava/lang/String; = "is_dirty"

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final IS_READER_ITEM:Ljava/lang/String; = "isReadingItem"

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final SYNC1:Ljava/lang/String; = "sync1"

.field public static final SYNC2:Ljava/lang/String; = "sync2"

.field public static final SYNC3:Ljava/lang/String; = "sync3"

.field public static final SYNC4:Ljava/lang/String; = "sync4"

.field public static final SYNC5:Ljava/lang/String; = "sync5"

.field public static final TABLE:Ljava/lang/String; = "READINGLIST"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProvider;->READING_LIST_AUTHORITY_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
