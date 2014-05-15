.class public Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ReadingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private mIsShowingActionMode:Z

.field protected mReadingList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mIsShowingActionMode:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mReadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mReadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mReadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mReadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mReadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mReadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mReadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26

    const/16 v25, 0x0

    if-nez p2, :cond_0

    sget-object v3, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->LOGTAG:Ljava/lang/String;

    const-string v4, "getView - Inflating the reading list layout"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    const v3, 0x7f040072

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mReadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mReadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    move/from16 v0, p1

    if-lt v0, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mReadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->LOGTAG:Ljava/lang/String;

    const-string v4, "getView - Inflating is error! ArrayIndexOutofBounds"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mReadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-object/from16 v3, p2

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0a01d9

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v3, p2

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0a01da

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v3, p2

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0a01dc

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const v3, 0x7f0a01db

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    const v3, 0x7f0a01de

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    const v3, 0x7f0a01e0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    const v3, 0x7f0a01dd

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    const v3, 0x7f0a01df

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    if-eqz v14, :cond_2

    if-eqz v15, :cond_2

    if-eqz v16, :cond_2

    if-eqz v21, :cond_2

    if-eqz v22, :cond_2

    if-eqz v23, :cond_2

    if-eqz v24, :cond_2

    if-nez v17, :cond_3

    :cond_2
    sget-object v3, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->LOGTAG:Ljava/lang/String;

    const-string v4, "getView - Inflating is error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getIsReaderPage()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    check-cast v17, Landroid/widget/FrameLayout;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getImageStyle()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    new-instance v25, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;

    invoke-direct/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;-><init>()V

    const v3, 0x7f0a01db

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingImage:Landroid/widget/ImageView;

    const v3, 0x7f0a01de

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingImageR:Landroid/widget/ImageView;

    const v3, 0x7f0a01dd

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingTitle:Landroid/widget/TextView;

    const v3, 0x7f0a01df

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingUrl:Landroid/widget/TextView;

    const v3, 0x7f0a01e0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingDescription:Landroid/widget/TextView;

    const v3, 0x7f0a01e1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingImgCheckBox:Landroid/widget/FrameLayout;

    const v3, 0x7f0a01e2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingTitle:Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingUrl:Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingDescription:Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    move-object/from16 v19, v3

    check-cast v19, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getReadingListImageFetcher()Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->getImageCahce()Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->getImageCahce()Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->getImageFromDB(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingImage:Landroid/widget/ImageView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingDescription:Landroid/widget/TextView;

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingUrl:Landroid/widget/TextView;

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingTitle:Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getTitle()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v10}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->loadImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mIsShowingActionMode:Z

    if-eqz v3, :cond_a

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getImageStyle()I

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getIsReaderPage()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09019a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingImageR:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09019a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_2
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingImgCheckBox:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    move/from16 v18, p1

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$1;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v4, v0, v12, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :pswitch_0
    check-cast v16, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    check-cast v21, Landroid/widget/LinearLayout;

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090196

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_1

    :pswitch_1
    check-cast v16, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    check-cast v21, Landroid/widget/LinearLayout;

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090199

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090193

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_1

    :pswitch_2
    check-cast v16, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    check-cast v21, Landroid/widget/LinearLayout;

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090195

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090196

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_1

    :cond_7
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    check-cast v17, Landroid/widget/FrameLayout;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    check-cast v16, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    check-cast v21, Landroid/widget/LinearLayout;

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingTitle:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingImageR:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingImgCheckBox:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingTitle:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingUrl:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$ViewHolder;->readingImageR:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showCheckBox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mIsShowingActionMode:Z

    return-void
.end method
