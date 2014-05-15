.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$3;
.super Ljava/lang/Object;
.source "ShowBookmarksPhoneAdapter.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->setThumbInfoPreview(Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

.field final synthetic val$gListFolder:Landroid/view/View;

.field final synthetic val$item:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;Landroid/view/View;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$3;->val$gListFolder:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$3;->val$item:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 13

    const/4 v2, 0x1

    new-array v9, v2, [Landroid/widget/ImageView;

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$3;->val$gListFolder:Landroid/view/View;

    const v4, 0x7f0a0156

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v9, v3

    const/4 v2, 0x0

    aget-object v2, v9, v2

    const v3, 0x7f020087

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "widget_url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "preview_thumbnail"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$3;->val$item:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v2, "preview_thumbnail"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v11, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v2, 0x0

    :try_start_1
    array-length v3, v7

    invoke-static {v7, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    const/4 v2, 0x0

    :try_start_2
    aget-object v2, v9, v2

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v3, v4, v5, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/16 v2, 0x53

    invoke-virtual {p2, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$3;->val$gListFolder:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/HoverPopupWindow;->setTouchablePopup(Z)V

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v8

    const/4 v2, 0x0

    :try_start_3
    array-length v3, v7

    invoke-static {v7, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    throw v2
.end method
