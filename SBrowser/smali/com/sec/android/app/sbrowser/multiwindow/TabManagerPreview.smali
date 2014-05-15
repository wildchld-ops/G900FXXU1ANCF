.class public Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;
.super Landroid/widget/LinearLayout;
.source "TabManagerPreview.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mChildList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mFullTabCount:I

.field private mGridLayout:Landroid/widget/GridLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIncognitoTabCount:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsHoverHandledHere:Z

.field private mIsOnTabPreview:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mNeedAnimation:Z

.field private mNormalTabCount:I

.field private mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field private mTabInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTabManagerPreviewRunnable:Ljava/lang/Runnable;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I

.field private mTotalTabCount:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "TabManagerPreview"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->LOG_TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mChildList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIncognitoTabCount:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mNormalTabCount:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTotalTabCount:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mFullTabCount:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailWidth:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailHeight:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mCurrentPage:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIsOnTabPreview:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIsHoverHandledHere:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mNeedAnimation:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTabManagerPreviewRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->initTabsPreview()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->displayTabsPreview()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIsOnTabPreview:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mNeedAnimation:Z

    return p1
.end method

.method private loadThumbnailFromDB(I)Landroid/graphics/Bitmap;
    .locals 12

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/app/sbrowser/provider/TabThumbnailProvider$TabThumbnail;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "tab_thumbnail"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "tab_thumbnail_width"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "tab_thumbnail_height"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    const-string v2, "tab_thumbnail_width"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "tab_thumbnail_height"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :goto_0
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    if-eqz v9, :cond_0

    array-length v2, v9

    if-lez v2, :cond_0

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    :try_start_3
    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-object v6

    :catch_0
    move-exception v10

    :try_start_4
    const-string v2, "TabManagerPreview"

    const-string v3, "OutOfMemoryError in loading thumbnail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v10

    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_2
    move-exception v11

    :try_start_6
    const-string v2, "TabManagerPreview"

    const-string v3, "RuntimeException in loading thumbnail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public SetStandardGroup()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-interface {v4, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chrome://tabspreview/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTabInfos:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTabInfos:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method public final displayTabsPreview()V
    .locals 20

    const-string v2, "TabManagerPreview"

    const-string v3, "displayTabsPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v7

    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTotalTabCount:I

    if-ge v11, v2, :cond_4

    sub-int v13, v16, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTabInfos:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v10, 0x0

    if-nez v4, :cond_1

    invoke-interface {v6, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    :goto_1
    new-instance v17, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz v10, :cond_0

    const/4 v14, 0x0

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->IsthumbnailAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "TabManagerPreview"

    const-string v3, "displayTabsPreview - curTab.IsthumbnailAvailable()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v14

    :goto_2
    if-eqz v14, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailWidth:I

    move/from16 v18, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    mul-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailHeight:I

    move/from16 v19, v0

    div-int v18, v18, v19

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v2, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailHeight:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v9, v3, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v12, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;ZILcom/sec/android/app/sbrowser/common/SBrowserTabControl;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mGridLayout:Landroid/widget/GridLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    new-instance v15, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v2, v3, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v2, v15}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-interface {v7, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    goto/16 :goto_1

    :cond_2
    const-string v2, "TabManagerPreview"

    const-string v3, "displayTabsPreview - !curTab.IsthumbnailAvailable()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->loadThumbnailFromDB(I)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201c8

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mFullTabCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTotalTabCount:I

    if-le v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTotalTabCount:I

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mFullTabCount:I

    if-ge v11, v2, :cond_6

    new-instance v17, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201c8

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_5

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailHeight:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v3, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v12, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mGridLayout:Landroid/widget/GridLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    new-instance v15, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v2, v3, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v2, v15}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "TabManagerPreview"

    const-string v3, "displayTabsPreview end"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initTabsPreview()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mNormalTabCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIncognitoTabCount:I

    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mNormalTabCount:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIncognitoTabCount:I

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTabInfos:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->SetStandardGroup()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mChildList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTotalTabCount:I

    const v0, 0x7f0a026e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTabManagerPreviewRunnable:Ljava/lang/Runnable;

    iget v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTotalTabCount:I

    if-le v0, v4, :cond_0

    iput v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTotalTabCount:I

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTotalTabCount:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTotalTabCount:I

    if-lt v0, v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09027a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailWidth:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09027b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailHeight:I

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a6

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mView:Landroid/view/View;

    const v1, 0x7f0a0286

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mGridLayout:Landroid/widget/GridLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090276

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailWidth:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090277

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailHeight:I

    iput v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mFullTabCount:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a7

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mView:Landroid/view/View;

    const v1, 0x7f0a0287

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mGridLayout:Landroid/widget/GridLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090278

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailWidth:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090279

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mThumbnailHeight:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mFullTabCount:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a8

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mView:Landroid/view/View;

    const v1, 0x7f0a0288

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mGridLayout:Landroid/widget/GridLayout;

    iput v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mFullTabCount:I

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a9

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mView:Landroid/view/View;

    const v1, 0x7f0a0289

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mGridLayout:Landroid/widget/GridLayout;

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mFullTabCount:I

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400aa

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mView:Landroid/view/View;

    const v1, 0x7f0a028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mGridLayout:Landroid/widget/GridLayout;

    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mFullTabCount:I

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400ab

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mView:Landroid/view/View;

    const v1, 0x7f0a028b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mGridLayout:Landroid/widget/GridLayout;

    iput v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mFullTabCount:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public isHoverHandledInTabManagerPreview()Z
    .locals 3

    const-string v0, "TabManagerPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsHoverHandledHere : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIsHoverHandledHere:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIsHoverHandledHere:Z

    return v0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mGridLayout:Landroid/widget/GridLayout;

    if-ne v0, v1, :cond_0

    const-string v0, "TabManagerPreview"

    const-string v1, "onHover - MotionEvent.TOOL_TYPE_FINGER"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const-string v0, "TabManagerPreview"

    const-string v1, "onHover - MotionEvent.ACTION_HOVER_ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIsOnTabPreview:Z

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIsHoverHandledHere:Z

    const-string v0, "TabManagerPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHover - isOnTabPreview : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIsOnTabPreview:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TabManagerPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHover - mIsHoverHandledHere : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIsHoverHandledHere:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTabManagerPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    const-string v0, "TabManagerPreview"

    const-string v1, "onHover - MotionEvent.ACTION_HOVER_EXIT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mIsOnTabPreview:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mNeedAnimation:Z

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTabManagerPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTabManagerPreviewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const-string v0, "TabManagerPreview"

    const-string v1, "onHover - MotionEvent.ACTION_HOVER_MOVE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mTabManagerPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
