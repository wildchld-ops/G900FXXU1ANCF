.class public interface abstract Lcom/sec/android/app/sbrowser/provider/TabThumbnailProvider$TabThumbnail;
.super Ljava/lang/Object;
.source "TabThumbnailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/provider/TabThumbnailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabThumbnail"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final TAB_THUMBNAIL:Ljava/lang/String; = "tab_thumbnail"

.field public static final TAB_THUMBNAIL_HEIGHT:Ljava/lang/String; = "tab_thumbnail_height"

.field public static final TAB_THUMBNAIL_WIDTH:Ljava/lang/String; = "tab_thumbnail_width"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/TabThumbnailProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "tabthumbnail"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/TabThumbnailProvider$TabThumbnail;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
