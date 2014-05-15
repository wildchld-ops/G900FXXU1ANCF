.class Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$1;
.super Landroid/database/ContentObserver;
.source "BookmarkThumbnailWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$1;->this$0:Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$1;->this$0:Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;

    #calls: Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->handleBookmarksTableChange()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->access$000(Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;)V

    return-void
.end method
