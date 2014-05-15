.class public interface abstract Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;
.super Ljava/lang/Object;
.source "BookmarkWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BookmarkWidget"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final IS_OPBOOKMARK:Ljava/lang/String; = "is_opbookmark"

.field public static final OpBookmark:I = 0x1

.field public static final PREVIEW_THUMBNAIL:Ljava/lang/String; = "preview_thumbnail"

.field public static final UserBookmark:I = 0x0

.field public static final WIDGET_THUMBNAIL:Ljava/lang/String; = "widget_thumbnail"

.field public static final WIDGET_URL:Ljava/lang/String; = "widget_url"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "widgetthumbnail"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
