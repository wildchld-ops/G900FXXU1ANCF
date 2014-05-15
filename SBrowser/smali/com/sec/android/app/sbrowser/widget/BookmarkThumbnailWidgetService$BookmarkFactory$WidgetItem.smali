.class Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;
.super Ljava/lang/Object;
.source "BookmarkThumbnailWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WidgetItem"
.end annotation


# instance fields
.field dominant:I

.field favicon:[B

.field groupPosition:I

.field hasChild:Z

.field isChecked:Z

.field isExpand:Z

.field isPrimaryGroup:Z

.field node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

.field opBookmarks:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$OperatorBookmarks;

.field padding:I

.field thumbnail:[B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
